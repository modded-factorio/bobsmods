local bobmods = require("__boblibrary__/migration-functions")

bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-hydrogen")
bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-petroleum-gas")
bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-sour-gas")
