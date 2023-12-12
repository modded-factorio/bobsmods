local bobmods = require("__boblibrary__/migration-functions")

bobmods.migration.ensure_unlocked("oil-processing", "bob-oil-processing")
bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-petroleum-gas")
bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-light-oil")
bobmods.migration.ensure_unlocked("flammables", "solid-fuel-from-heavy-oil")
