local bobmods = require("__boblibrary__/migration-functions")

bobmods.migration.ensure_unlocked("flammables", "bob-solid-fuel-from-hydrogen")
bobmods.migration.ensure_unlocked("flammables", "bob-solid-fuel-from-petroleum-gas")
bobmods.migration.ensure_unlocked("flammables", "bob-solid-fuel-from-sour-gas")
