# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

This is **Bob's Mods** — a collection of Factorio mods (for Factorio 2.1 / Space Age) by Bobingabout. Each top-level `bob*` directory is an independent Factorio mod with its own `info.json`, following Factorio's standard mod layout (`data.lua`, `data-updates.lua`, `data-final-fixes.lua`, `control.lua`, `settings.lua`, `prototypes/`, `locale/`, `migrations/`, `graphics/`/`icons/`). The `clock` directory is an unrelated mod that is **not** part of Bob's Mods and is excluded from the build/release tooling.

## Commands

- **Build/deploy all mods to local Factorio install**: `build_bobmods.bat` (Windows) runs `python bob_mod_builder.py --factoriodir="%appdata%\Factorio"`. This copies every mod whose folder name contains `"bob"` into `<factorio>/mods/<modname>_<version>/`, deleting any existing copies (and zips) of that mod first. Version is read from each mod's `info.json`.
  - To target a different Factorio install: `python bob_mod_builder.py --factoriodir=<path>` (path should be the folder *containing* the `mods` directory).
- **Formatting**: Lua is formatted with [StyLua](https://github.com/JohnnyMorganz/StyLua) using `stylua.toml` (2-space indentation). CI (`.github/workflows/stylua.yml`) auto-formats and auto-commits on every push — don't hand-format against a different style, just let StyLua's config be the source of truth if formatting locally.
- **Automated tests**: none exist yet specific to Bob's Mods. Going forward, tests will be written using Angel's test framework, the `angelsdev-unit-test` Factorio mod, which lives in a separate Angel's Mods repo (not this one) — ask the user for its local path if you need to work with it. That framework runs actual in-game Lua test functions (`unit-tests/unit-test-NNN.lua`, each returning a no-arg function returning `true`/`nil`/`false` for pass/soft-fail/hard-fail) against specific mod-list + startup-setting combinations defined in `python/unit_test_configuration.py`, driven end-to-end by `python/unit_test_controller.py` (builds/downloads mods, swaps the Factorio mod list and settings file, launches Factorio, captures results, restores the original mod list/settings afterward). When adding Bob's-Mods-specific tests, they'd live as new `unit-test-NNN.lua` files in that framework's `unit-tests/` folder plus a matching configuration entry, not inside this repo.
- Until then, verification is done by deploying mods into Factorio and testing in-game (via the build command above, or Factorio's own mod symlink/dev workflow).

## Cross-mod architecture

- **`boblibrary`** is the shared foundation: every other Bob's mod depends on it. It defines a global `bobmods.lib` table and a set of shared helper modules (`functions.lua`, `item-functions.lua`, `recipe-functions.lua`, `technology-functions.lua`, `ore-functions.lua`, `category-functions.lua`, `error-functions.lua`, `auto-bottle.lua`, etc.) loaded via `require(...)` from `boblibrary/data.lua`. Other mods call into these (e.g. `bobmods.ores.bauxite.create_autoplace()`).
- **Global namespace convention**: every mod guards and extends a shared global table, e.g.:
  ```lua
  if not bobmods then bobmods = {} end
  if not bobmods.plates then bobmods.plates = {} end
  ```
  Each mod owns its own key under `bobmods` (`bobmods.lib`, `bobmods.ores`, `bobmods.plates`, ...) and reads/writes other mods' keys to integrate with them (optional cross-mod features are guarded with `if bobmods.<mod>.<fn> then ... end` or `mods["<name>"]` checks).
- **Dependency graph** (approximate build-up order, per `info.json` `dependencies`): `boblibrary` → `bobores` → `bobplates` → most other mods (`bobassembly`, `bobclasses`, `bobelectronics`, `bobenemies`, `bobequipment`, `bobgreenhouse`, `boblogistics`, `bobmining`, `bobmodules`, `bobpower`, `bobrevamp`, `bobtech`, `bobvehicleequipment`, `bobwarfare`). Most inter-mod dependencies are declared optional (`? modname`) so each mod degrades gracefully if a sibling mod isn't installed — check for the other mod's presence (`mods["modname"]` or its `bobmods.<x>` table) before using its data.
  - `bobinserters` and `bobores` only depend on `boblibrary`.
  - Many mods also have optional/weak dependencies on `space-age` and third-party mods (e.g. `quality`, `DiscoScience`, `Krastorio2`, `aai-loaders`) — guard integration code accordingly.
- **Data stage ordering**: within a mod, `data.lua` defines new prototypes (often via `require("prototypes.<category>.<name>")`), `data-updates.lua` modifies/integrates with prototypes from other mods (runs after all mods' `data.lua`), and `data-final-fixes.lua` makes last-pass fixes (runs after all mods' `data-updates.lua`). Follow this convention when adding new content vs. patching existing content.
- **Settings naming convention**: startup/runtime settings are prefixed `bobmods-<modname>-<setting>` (e.g. `bobmods-plates-groundwater`, `bobmods-plates-cheapersteel`) and read via `settings.startup["..."].value` / `settings.<global|player>["..."].value`.
- **Migrations**: version-to-version migration scripts live in each mod's `migrations/` folder, named `<modname>_<version>.lua`/`.json`, applied automatically by Factorio when a save's mod version is older than the mod. Add a new migration file when a release renames/removes prototypes in a way that breaks existing saves.
- **Changelogs**: each mod keeps its own `changelog.txt` in Factorio's changelog format (`---` separator, `Version:`, `Date:`, categorized bullet sections like `Changes:`/`Bugfixes:`). Bump the mod's `version` in `info.json` and add a corresponding changelog entry together.

## Factorio reference install

A full Factorio 2.1.x install may be available locally (outside this repo) — if you need it and don't know where it is, ask the user for its path rather than guessing. Useful contents to look for inside it:
- `data/base`, `data/space-age`, `data/core`, `data/elevated-rails`, `data/quality`, `data/recycler` — vanilla/official Lua prototype and lualib source, useful for checking vanilla prototype definitions being extended/overridden and for base `require`-able lualib helpers (`data/core/lualib`).
- `doc-html/` — the full API docs (`runtime-api.json`, `prototype-api.json`, and browsable HTML under `classes/`, `concepts/`, `prototypes/`, `events.html`, `defines.html`) for looking up runtime/data-stage API details.
- A deployed mod set used for the unit-test framework (e.g. a `mods - unit-test`-style folder) containing `angelsdev-unit-test` and various `angels*` mods, matching the configurations in that framework's `unit_test_configuration.py` — useful for inspecting how Angel's mods are structured/integrated.
- A separate ad hoc mod set used for manual testing (QoL/dev tools like FNEI, Milestones), unrelated to the unit-test framework.

## Line endings

Git is configured with `core.autocrlf=true` (global, no `.gitattributes` override) — working-tree files use CRLF line endings. When creating or editing files directly (outside of `git` itself), match this and use CRLF by default.

## Licensing constraint

Per `License.md`: no commercial use, and no redistribution of modified/derived versions of these mods without permission (minor compatibility tweaks, e.g. `info.json` dependency ordering, are explicitly allowed). Keep this in mind if asked to fork, repackage, or redistribute mod content.
