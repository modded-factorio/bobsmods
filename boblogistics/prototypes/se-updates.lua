if mods["space-exploration"] then

--Pipes

data.raw.item["copper-pipe-to-ground"].subgroup = "pipe"
data.raw.item["stone-pipe-to-ground"].subgroup = "pipe"
data.raw.item["steel-pipe-to-ground"].subgroup = "pipe"
data.raw.item["plastic-pipe-to-ground"].subgroup = "pipe"
data.raw.item["bob-valve"].subgroup = "pipe"
data.raw.item["bob-overflow-valve"].subgroup = "pipe"
data.raw.item["bob-topup-valve"].subgroup = "pipe"

bobmods.lib.tech.add_recipe_unlock("se-processing-iridium", "iridium-pipe")
bobmods.lib.tech.add_recipe_unlock("se-processing-iridium", "iridium-pipe-to-ground")

--Logistic chests
data.raw.item["logistic-chest-passive-provider"].order = "b[storage]-1-b[passive-provider]"
data.raw.item["logistic-chest-active-provider"].order = "b[storage]-1-c[active-provider]"
data.raw.item["logistic-chest-storage"].order = "b[storage]-1-d[storage]"
data.raw.item["logistic-chest-buffer"].order = "b[storage]-1-e[buffer]"
data.raw.item["logistic-chest-requester"].order = "b[storage]-1-f[requester]"

data.raw.item["logistic-chest-passive-provider-2"].order = "b[storage]-1-h[passive-provider]"
data.raw.item["logistic-chest-active-provider-2"].order = "b[storage]-1-i[active-provider]"
data.raw.item["logistic-chest-storage-2"].order = "b[storage]-1-j[storage]"
data.raw.item["logistic-chest-buffer-2"].order = "b[storage]-1-k[buffer]"
data.raw.item["logistic-chest-requester-2"].order = "b[storage]-1-l[requester]"

data.raw.item["logistic-chest-passive-provider-3"].order = "b[storage]-1-n[passive-provider]"
data.raw.item["logistic-chest-active-provider-3"].order = "b[storage]-1-o[active-provider]"
data.raw.item["logistic-chest-storage-3"].order = "b[storage]-1-p[storage]"
data.raw.item["logistic-chest-buffer-3"].order = "b[storage]-1-q[buffer]"
data.raw.item["logistic-chest-requester-3"].order = "b[storage]-1-r[requester]"

data.raw["item-subgroup"]["logistic-chests-2"].order = "a1[container-1]-a"
data.raw["item-subgroup"]["logistic-chests-3"].order = "a1[container-1]-b"

data.raw.item["se-linked-container"].subgroup = "container-6"

data.raw.container["steel-chest"].next_upgrade = "brass-chest"

data.raw.item["logistic-chest-passive-provider-2"].order = "b[storage]-1-h[passive-provider]"
data.raw.item["logistic-chest-active-provider-2"].order = "b[storage]-1-i[active-provider]"
data.raw.item["logistic-chest-storage-2"].order = "b[storage]-1-j[storage]"
data.raw.item["logistic-chest-buffer-2"].order = "b[storage]-1-k[buffer]"
data.raw.item["logistic-chest-requester-2"].order = "b[storage]-1-l[requester]"

data.raw.item["logistic-chest-passive-provider-3"].order = "b[storage]-1-n[passive-provider]"
data.raw.item["logistic-chest-active-provider-3"].order = "b[storage]-1-o[active-provider]"
data.raw.item["logistic-chest-storage-3"].order = "b[storage]-1-p[storage]"
data.raw.item["logistic-chest-buffer-3"].order = "b[storage]-1-q[buffer]"
data.raw.item["logistic-chest-requester-3"].order = "b[storage]-1-r[requester]"

data.raw.recipe["logistic-chest-passive-provider-2"].ingredients = {
  { "logistic-chest-passive-provider", 1 },
  { "se-heavy-girder", 4 },
  { "advanced-circuit", 4 },
}
data.raw.recipe["logistic-chest-active-provider-2"].ingredients = {
  { "logistic-chest-active-provider", 1 },
  { "se-heavy-girder", 4 },
  { "advanced-circuit", 4 },
}
data.raw.recipe["logistic-chest-storage-2"].ingredients = {
  { "logistic-chest-storage", 1 },
  { "se-heavy-girder", 4 },
  { "advanced-circuit", 4 },
}
data.raw.recipe["logistic-chest-buffer-2"].ingredients = {
  { "logistic-chest-buffer", 1 },
  { "se-heavy-girder", 4 },
  { "advanced-circuit", 4 },
}
data.raw.recipe["logistic-chest-requester-2"].ingredients = {
  { "logistic-chest-requester", 1 },
  { "se-heavy-girder", 4 },
  { "advanced-circuit", 4 },
}
data.raw.recipe["logistic-chest-passive-provider-3"].ingredients = {
  { "logistic-chest-passive-provider-2", 1 },
  { "se-heavy-composite", 1 },
  { "processing-unit", 1 },
}
data.raw.recipe["logistic-chest-active-provider-3"].ingredients = {
  { "logistic-chest-active-provider-2", 1 },
  { "se-heavy-composite", 1 },
  { "processing-unit", 1 },
}
data.raw.recipe["logistic-chest-storage-3"].ingredients = {
  { "logistic-chest-storage-2", 1 },
  { "se-heavy-composite", 1 },
  { "processing-unit", 1 },
}
data.raw.recipe["logistic-chest-buffer-3"].ingredients = {
  { "logistic-chest-buffer-2", 1 },
  { "se-heavy-composite", 1 },
  { "processing-unit", 1 },
}
data.raw.recipe["logistic-chest-requester-3"].ingredients = {
  { "logistic-chest-requester-2", 1 },
  { "se-heavy-composite", 1 },
  { "processing-unit", 1 },
}

bobmods.lib.tech.add_recipe_unlock("logistic-system-2", "brass-chest")
bobmods.lib.tech.add_recipe_unlock("logistic-system-3", "titanium-chest")
bobmods.lib.tech.add_science_pack("logistic-system-2", "production-science-pack", 1)
bobmods.lib.tech.add_science_pack("logistic-system-2", "se-material-science-pack-1", 1)
data.raw.technology["logistic-system-2"].unit.count = 300
data.raw.technology["logistic-system-2"].prerequisites = {
  "logistic-system",
  "se-heavy-girder",
  "utility-science-pack",
}
bobmods.lib.tech.add_science_pack("logistic-system-3", "se-material-science-pack-3", 1)
data.raw.technology["logistic-system-3"].unit.count = 900
data.raw.technology["logistic-system-3"].prerequisites = {
  "logistic-system-2",
  "se-heavy-composite",
}

--Pumps
data.raw.recipe["bob-pump-2"].normal = {
  enabled = false,
  ingredients = {
    { type = "item", name = "electric-engine-unit", amount = 2 },
    { type = "item", name = "steel-pipe", amount = 2 },
    { type = "item", name = "pump", amount = 1 },
  },
  result = "bob-pump-2",
}
data.raw.recipe["bob-pump-2"].expensive = {
  enabled = false,
  ingredients = {
    { type = "item", name = "electric-engine-unit", amount = 4 },
    { type = "item", name = "steel-pipe", amount = 8 },
    { type = "item", name = "pump", amount = 1 },
  },
  result = "bob-pump-2",
}

data.raw.recipe["bob-pump-3"].normal = {
  enabled = false,
  ingredients = {
    { type = "item", name = "se-iridium-plate", amount = 2 },
    { type = "fluid", name = "se-pyroflux", amount = 3 },
    { type = "item", name = "bob-pump-2", amount = 1 },
  },
  result = "bob-pump-3",
}
data.raw.recipe["bob-pump-3"].expensive = {
  enabled = false,
  ingredients = {
    { type = "item", name = "se-iridium-plate", amount = 8 },
    { type = "fluid", name = "se-pyroflux", amount = 5 },
    { type = "item", name = "bob-pump-2", amount = 1 },
  },
  result = "bob-pump-3",
}
data.raw.recipe["bob-pump-3"].category = "crafting-with-fluid"
if data.raw.item["iridium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "se-iridium-plate", "iridium-pipe")
end

data.raw.recipe["bob-pump-4"].normal = {
  enabled = false,
  ingredients = {
    { type = "item", name = "se-self-sealing-gel", amount = 1 },
    { type = "item", name = "se-heavy-composite", amount = 1 },
    { type = "item", name = "bob-pump-3", amount = 1 },
  },
  result = "bob-pump-4",
}
data.raw.recipe["bob-pump-4"].expensive = {
  enabled = false,
  ingredients = {
    { type = "item", name = "se-self-sealing-gel", amount = 2 },
    { type = "item", name = "se-heavy-composite", amount = 1 },
    { type = "item", name = "bob-pump-3", amount = 1 },
  },
  result = "bob-pump-4",
}

data.raw.item["bob-pump-2"].subgroup = "pipe"
data.raw.item["bob-pump-3"].subgroup = "pipe"
data.raw.item["bob-pump-4"].subgroup = "pipe"

--Storage tanks
data.raw.recipe["bob-storage-tank-all-corners"].ingredients = {
  { type = "item", name = "iron-plate", amount = 24 },
  { type = "item", name = "steel-plate", amount = 5 },
}

data.raw.recipe["storage-tank-2"].ingredients = {
  { type = "item", name = "refined-concrete", amount = 20 },
  { type = "item", name = "low-density-structure", amount = 2 },
  { type = "item", name = "storage-tank", amount = 1 },
}

data.raw.recipe["bob-storage-tank-all-corners-2"].ingredients = {
  { type = "item", name = "refined-concrete", amount = 20 },
  { type = "item", name = "low-density-structure", amount = 4 },
  { type = "item", name = "bob-storage-tank-all-corners", amount = 1 },
}

data.raw.recipe["storage-tank-3"].ingredients = {
  { type = "fluid", name = "se-pyroflux", amount = 12 },
  { type = "item", name = "se-heavy-girder", amount = 10 },
  { type = "item", name = "storage-tank-2", amount = 1 },
}
data.raw.recipe["storage-tank-3"].category = "crafting-with-fluid"

data.raw.recipe["bob-storage-tank-all-corners-3"].ingredients = {
  { type = "fluid", name = "se-pyroflux", amount = 16 },
  { type = "item", name = "se-heavy-girder", amount = 12 },
  { type = "item", name = "bob-storage-tank-all-corners-2", amount = 1 },
}
data.raw.recipe["bob-storage-tank-all-corners-3"].category = "crafting-with-fluid"

data.raw.recipe["storage-tank-4"].ingredients = {
  { type = "item", name = "se-heavy-composite", amount = 10 },
  { type = "item", name = "se-lattice-pressure-vessel", amount = 2 },
  { type = "item", name = "storage-tank-3", amount = 1 },
}

data.raw.recipe["bob-storage-tank-all-corners-4"].ingredients = {
  { type = "item", name = "se-heavy-composite", amount = 12 },
  { type = "item", name = "se-lattice-pressure-vessel", amount = 2 },
  { type = "item", name = "bob-storage-tank-all-corners-3", amount = 1 },
}

data.raw.item["bob-storage-tank-all-corners"].subgroup = "pipe"
data.raw.item["storage-tank-2"].subgroup = "pipe"
data.raw.item["bob-storage-tank-all-corners-2"].subgroup = "pipe"
data.raw.item["storage-tank-3"].subgroup = "pipe"
data.raw.item["bob-storage-tank-all-corners-3"].subgroup = "pipe"
data.raw.item["storage-tank-4"].subgroup = "pipe"
data.raw.item["bob-storage-tank-all-corners-4"].subgroup = "pipe"

data.raw.technology["bob-fluid-handling-2"].prerequisites = {
  "electric-engine",
  "concrete",
  "low-density-structure",
  "chemical-science-pack",
}
data.raw.technology["bob-fluid-handling-2"].unit.count = 100
data.raw.technology["bob-fluid-handling-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
}

data.raw.technology["bob-fluid-handling-3"].prerequisites = {
  "bob-fluid-handling-2",
  "se-heavy-girder",
}
data.raw.technology["bob-fluid-handling-3"].unit.count = 200
data.raw.technology["bob-fluid-handling-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-material-science-pack-1", 1 },
}

data.raw.technology["bob-fluid-handling-4"].prerequisites = {
  "bob-fluid-handling-3",
  "se-self-sealing-gel",
  "se-heavy-composite",
  "se-lattice-pressure-vessel",
}
data.raw.technology["bob-fluid-handling-4"].unit.count = 500
data.raw.technology["bob-fluid-handling-4"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-biological-science-pack-4", 1 },
  { "se-material-science-pack-3", 1 },
}

--Trains
if settings.startup["bobmods-logistics-trains"].value == true then
  data.raw.recipe["bob-locomotive-2"].ingredients = {
    { type = "item", name = "locomotive", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 6 },
    { type = "item", name = "electric-engine-unit", amount = 10 },
    { type = "item", name = "advanced-circuit", amount = 10 },
  }

  data.raw.recipe["bob-locomotive-3"].ingredients = {
    { type = "item", name = "bob-locomotive-2", amount = 1 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 2 },
    { type = "item", name = "se-heavy-assembly", amount = 4 },
    { type = "item", name = "processing-unit", amount = 10 },
  }

  data.raw.recipe["bob-armoured-locomotive"].ingredients = {
    { type = "item", name = "locomotive", amount = 1 },
    { type = "item", name = "steel-plate", amount = 40 },
    { type = "item", name = "low-density-structure", amount = 2 },
  }

  data.raw.recipe["bob-armoured-locomotive-2"].ingredients = {
    { type = "item", name = "bob-armoured-locomotive", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 6 },
    { type = "item", name = "se-heavy-composite", amount = 10 },
    { type = "item", name = "electric-engine-unit", amount = 12 },
    { type = "item", name = "advanced-circuit", amount = 10 },
  }

  data.raw.recipe["bob-cargo-wagon-2"].ingredients = {
    { type = "item", name = "cargo-wagon", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 6 },
    { type = "item", name = "se-heavy-girder", amount = 8 },
  }

  data.raw.recipe["bob-cargo-wagon-3"].ingredients = {
    { type = "item", name = "bob-cargo-wagon-2", amount = 1 },
    { type = "item", name = "se-heavy-composite", amount = 4 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 2 },
  }

  data.raw.recipe["bob-armoured-cargo-wagon"].ingredients = {
    { type = "item", name = "cargo-wagon", amount = 1 },
    { type = "item", name = "steel-plate", amount = 30 },
    { type = "item", name = "low-density-structure", amount = 2 },
  }

  data.raw.recipe["bob-armoured-cargo-wagon-2"].ingredients = {
    { type = "item", name = "bob-armoured-cargo-wagon", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 4 },
    { type = "item", name = "se-heavy-composite", amount = 8 },
  }

  data.raw.recipe["bob-fluid-wagon-2"].ingredients = {
    { type = "item", name = "fluid-wagon", amount = 1 },
    { type = "item", name = "storage-tank-2", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 4 },
    { type = "item", name = "se-heavy-girder", amount = 2 },
  }

  data.raw.recipe["bob-fluid-wagon-3"].ingredients = {
    { type = "item", name = "bob-fluid-wagon-2", amount = 1 },
    { type = "item", name = "storage-tank-3", amount = 1 },
    { type = "item", name = "se-heavy-composite", amount = 2 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 2 },
  }

  data.raw.recipe["bob-armoured-fluid-wagon"].ingredients = {
    { type = "item", name = "fluid-wagon", amount = 1 },
    { type = "item", name = "steel-plate", amount = 30 },
    { type = "item", name = "low-density-structure", amount = 2 },
  }

  data.raw.recipe["bob-armoured-fluid-wagon-2"].ingredients = {
    { type = "item", name = "bob-armoured-fluid-wagon", amount = 1 },
    { type = "item", name = "storage-tank-2", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 4 },
    { type = "item", name = "se-heavy-composite", amount = 8 },
  }

  bobmods.lib.tech.add_prerequisite("se-space-catalogue-material-2", "railway")

  data.raw.technology["bob-railway-2"].prerequisites = {
    "se-heavy-bearing",
  }
  data.raw.technology["bob-railway-2"].unit.count = 400
  data.raw.technology["bob-railway-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-2", 1 },
  }

  data.raw.technology["bob-railway-3"].prerequisites = {
    "se-heavy-assembly",
    "se-aeroframe-bulkhead",
  }
  data.raw.technology["bob-railway-3"].unit.count = 1000
  data.raw.technology["bob-railway-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-4", 1 },
  }

  data.raw.technology["bob-armoured-railway"].prerequisites = {
    "automated-rail-transportation",
    "low-density-structure",
  }
  data.raw.technology["bob-armoured-railway"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "military-science-pack", 1 },
    { "chemical-science-pack", 1 },
  }

  data.raw.technology["bob-armoured-railway-2"].prerequisites = {
    "bob-armoured-railway",
    "se-heavy-composite",
  }
  data.raw.technology["bob-armoured-railway-2"].unit.count = 500
  data.raw.technology["bob-armoured-railway-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "military-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-3", 1 },
  }

  data.raw.technology["bob-fluid-wagon-2"].unit.count = 200
  data.raw.technology["bob-fluid-wagon-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-2", 1 },
  }

  data.raw.technology["bob-fluid-wagon-3"].unit.count = 500
  data.raw.technology["bob-fluid-wagon-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-4", 1 },
  }

  data.raw.technology["bob-armoured-fluid-wagon"].prerequisites = {
    "chemical-science-pack",
    "automated-rail-transportation",
    "low-density-structure",
  }
  data.raw.technology["bob-armoured-fluid-wagon"].unit.count = 50
  data.raw.technology["bob-armoured-fluid-wagon"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "military-science-pack", 1 },
    { "chemical-science-pack", 1 },
  }

  data.raw.technology["bob-armoured-fluid-wagon-2"].prerequisites = {
    "bob-armoured-fluid-wagon",
    "bob-fluid-handling-2",
    "se-heavy-composite",
  }
  data.raw.technology["bob-armoured-fluid-wagon-2"].unit.count = 250
  data.raw.technology["bob-armoured-fluid-wagon-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "military-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-3", 1 },
  }
end

--Robots and intermediates
if data.raw.item["flying-robot-frame-4"] then
  data.raw.recipe["flying-robot-frame-2"].normal = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 4 },
      { type = "item", name = "battery", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 4 },
      { type = "item", name = "se-beryllium-plate", amount = 4 },
    },
    result = "flying-robot-frame-2",
  }
  data.raw.recipe["flying-robot-frame-2"].expensive = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 16 },
      { type = "item", name = "battery", amount = 16 },
      { type = "item", name = "advanced-circuit", amount = 16 },
      { type = "item", name = "se-beryllium-plate", amount = 16 },
    },
    result = "flying-robot-frame-2",
  }

  data.raw.recipe["flying-robot-frame-3"].normal = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 4 },
      { type = "item", name = "battery", amount = 6 },
      { type = "item", name = "processing-unit", amount = 4 },
      { type = "item", name = "se-aeroframe-scaffold", amount = 2 },
    },
    result = "flying-robot-frame-3",
  }
  data.raw.recipe["flying-robot-frame-3"].expensive = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 16 },
      { type = "item", name = "battery", amount = 24 },
      { type = "item", name = "processing-unit", amount = 16 },
      { type = "item", name = "se-aeroframe-scaffold", amount = 8 },
    },
    result = "flying-robot-frame-3",
  }

  data.raw.recipe["flying-robot-frame-4"].normal = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "se-holmium-solenoid", amount = 4 },
      { type = "item", name = "battery", amount = 8 },
      { type = "item", name = "processing-unit", amount = 4 },
      { type = "item", name = "se-aeroframe-scaffold", amount = 2 },
    },
    result = "flying-robot-frame-4",
  }
  data.raw.recipe["flying-robot-frame-4"].expensive = {
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "se-holmium-solenoid", amount = 16 },
      { type = "item", name = "battery", amount = 32 },
      { type = "item", name = "processing-unit", amount = 16 },
      { type = "item", name = "se-aeroframe-scaffold", amount = 8 },
    },
    result = "flying-robot-frame-4",
  }

  data.raw.technology["bob-robotics-2"].prerequisites = {
    "robotics",
    "se-processing-beryllium",
  }
  data.raw.technology["bob-robotics-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-robotics-3"].prerequisites = {
    "bob-robotics-2",
    "se-aeroframe-scaffold",
    "production-science-pack",
  }
  data.raw.technology["bob-robotics-3"].unit.count = 400
  data.raw.technology["bob-robotics-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
  }

  data.raw.technology["bob-robotics-4"].prerequisites = {
    "bob-robotics-3",
    "se-holmium-solenoid",
  }
  data.raw.technology["bob-robotics-4"].unit.count = 600
  data.raw.technology["bob-robotics-4"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
    { "se-energy-science-pack-2", 1 },
  }

  data.raw.technology["bob-robots-1"].unit.count = 100
  data.raw.technology["bob-robots-1"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-robots-2"].unit.count = 100

  data.raw.technology["bob-robots-3"].prerequisites = {
    "bob-robots-2",
    "bob-robotics-4",
  }
  data.raw.technology["bob-robots-3"].unit.count = 100

  bobmods.lib.tech.add_science_pack("bob-robots-4", "se-astronomic-science-pack-2", 1)
  bobmods.lib.tech.add_science_pack("worker-robots-storage-1", "space-science-pack", 1)
  data.raw.technology["worker-robots-speed-2"].prerequisites = {
    "worker-robots-speed-1",
    "chemical-science-pack",
  }
  data.raw.technology["worker-robots-speed-3"].prerequisites = {
    "worker-robots-speed-2",
    "bob-robots-1",
  }
end

if data.raw.item["robot-tool-logistic-4"] then
  data.raw.recipe["robot-tool-construction"].ingredients = {
    { "iron-gear-wheel", 3 },
    { "steel-plate", 1 },
  }
  data.raw.recipe["robot-tool-construction-2"].ingredients = {
    { "iron-gear-wheel", 3 },
    { "se-beryllium-plate", 1 },
  }
  data.raw.recipe["robot-tool-construction-3"].ingredients = {
    { "iron-gear-wheel", 3 },
    { "se-aeroframe-scaffold", 1 },
  }
  data.raw.recipe["robot-tool-construction-4"].ingredients = {
    { "se-holmium-solenoid", 2 },
    { "se-aeroframe-scaffold", 1 },
  }
  data.raw.recipe["robot-tool-logistic-2"].ingredients = {
    { "iron-gear-wheel", 2 },
    { "se-beryllium-plate", 1 },
  }
  data.raw.recipe["robot-tool-logistic-3"].ingredients = {
    { "iron-gear-wheel", 2 },
    { "se-aeroframe-scaffold", 1 },
  }
  data.raw.recipe["robot-tool-logistic-4"].ingredients = {
    { "se-holmium-solenoid", 1 },
    { "se-aeroframe-scaffold", 1 },
  }
end

--Roboports and parts
data.raw.recipe["roboport-antenna-1"].ingredients = {
  { "advanced-circuit", 10 },
  { "copper-cable", 10 },
  { "steel-plate", 4 },
}
data.raw.recipe["roboport-antenna-2"].ingredients = {
  { "processing-unit", 4 },
  { "copper-cable", 20 },
  { "se-aeroframe-pole", 4 },
}
data.raw.recipe["roboport-antenna-3"].ingredients = {
  { "processing-unit", 8 },
  { "se-holmium-cable", 6 },
  { "se-aeroframe-pole", 4 },
}
data.raw.recipe["roboport-antenna-4"].ingredients = {
  { "se-quantum-processor", 1 },
  { "se-superconductive-cable", 2 },
  { "se-aeroframe-scaffold", 1 },
}
data.raw.recipe["roboport-door-1"].ingredients = {
  { "iron-gear-wheel", 20 },
  { "electric-motor", 10 },
  { "steel-plate", 20 },
}
data.raw.recipe["roboport-door-2"].ingredients = {
  { "iron-gear-wheel", 20 },
  { "electric-motor", 10 },
  { "se-beryllium-plate", 20 },
}
data.raw.recipe["roboport-door-3"].ingredients = {
  { "iron-gear-wheel", 20 },
  { "electric-engine-unit", 5 },
  { "se-aeroframe-scaffold", 8 },
}
data.raw.recipe["roboport-door-4"].ingredients = {
  { "iron-gear-wheel", 20 },
  { "electric-engine-unit", 10 },
  { "se-aeroframe-bulkhead", 2 },
}
data.raw.recipe["roboport-chargepad-1"].ingredients = {
  { "battery", 2 },
  { "copper-cable", 4 },
  { "advanced-circuit", 4 },
  { "steel-plate", 10 },
}
data.raw.recipe["roboport-chargepad-2"].ingredients = {
  { "battery", 4 },
  { "copper-cable", 8 },
  { "processing-unit", 2 },
  { "se-beryllium-plate", 10 },
}
data.raw.recipe["roboport-chargepad-3"].ingredients = {
  { "battery", 6 },
  { "se-holmium-cable", 4 },
  { "processing-unit", 4 },
  { "se-aeroframe-scaffold", 4 },
}
data.raw.recipe["roboport-chargepad-4"].ingredients = {
  { "battery", 8 },
  { "se-superconductive-cable", 2 },
  { "se-quantum-processor", 1 },
  { "se-aeroframe-bulkhead", 1 },
}

bobmods.lib.recipe.replace_ingredient("bob-roboport-2", "steel-plate", "se-beryllium-plate")
bobmods.lib.recipe.remove_ingredient("bob-roboport-3", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-roboport-3", { type = "item", name = "se-aeroframe-scaffold", amount = 10 })
bobmods.lib.recipe.remove_ingredient("bob-roboport-4", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-roboport-4", { type = "item", name = "se-aeroframe-bulkhead", amount = 5 })
bobmods.lib.recipe.remove_ingredient("bob-logistic-zone-expander-2", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-logistic-zone-expander-2",
  { type = "item", name = "se-aeroframe-pole", amount = 2 }
)
bobmods.lib.recipe.remove_ingredient("bob-logistic-zone-expander-3", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-logistic-zone-expander-3",
  { type = "item", name = "se-aeroframe-scaffold", amount = 3 }
)
bobmods.lib.recipe.remove_ingredient("bob-logistic-zone-expander-4", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-logistic-zone-expander-4",
  { type = "item", name = "se-aeroframe-bulkhead", amount = 1 }
)
bobmods.lib.recipe.remove_ingredient("bob-robochest-2", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-robochest-2", { type = "item", name = "se-beryllium-plate", amount = 6 })
bobmods.lib.recipe.remove_ingredient("bob-robochest-3", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-robochest-3", { type = "item", name = "se-aeroframe-scaffold", amount = 4 })
bobmods.lib.recipe.remove_ingredient("bob-robochest-4", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-robochest-4", { type = "item", name = "se-aeroframe-bulkhead", amount = 2 })
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-2", "steel-plate")
bobmods.lib.recipe.add_ingredient("bob-robo-charge-port-2", { type = "item", name = "se-beryllium-plate", amount = 8 })
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-3", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-robo-charge-port-3",
  { type = "item", name = "se-aeroframe-scaffold", amount = 5 }
)
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-4", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-robo-charge-port-4",
  { type = "item", name = "se-aeroframe-bulkhead", amount = 3 }
)
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-large-2", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-robo-charge-port-large-2",
  { type = "item", name = "se-beryllium-plate", amount = 18 }
)
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-large-3", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-robo-charge-port-large-3",
  { type = "item", name = "se-aeroframe-scaffold", amount = 12 }
)
bobmods.lib.recipe.remove_ingredient("bob-robo-charge-port-large-4", "steel-plate")
bobmods.lib.recipe.add_ingredient(
  "bob-robo-charge-port-large-4",
  { type = "item", name = "se-aeroframe-bulkhead", amount = 7 }
)

data.raw.technology["bob-robo-modular-2"].prerequisites = {
  "bob-robo-modular-1",
  "se-aeroframe-pole",
}
data.raw.technology["bob-robo-modular-2"].unit.count = 200
data.raw.technology["bob-robo-modular-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-1", 1 },
}

data.raw.technology["bob-robo-modular-3"].prerequisites = {
  "bob-robo-modular-2",
  "se-aeroframe-scaffold",
  "se-holmium-cable",
}
data.raw.technology["bob-robo-modular-3"].unit.count = 300
data.raw.technology["bob-robo-modular-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-2", 1 },
  { "se-energy-science-pack-1", 1 },
}

data.raw.technology["bob-robo-modular-4"].prerequisites = {
  "bob-robo-modular-3",
  "se-aeroframe-bulkhead",
  "se-superconductive-cable",
  "se-quantum-processor",
}
data.raw.technology["bob-robo-modular-4"].unit.count = 500
data.raw.technology["bob-robo-modular-4"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-3", 1 },
  { "se-energy-science-pack-3", 1 },
  { "se-material-science-pack-3", 1 },
}

bobmods.lib.recipe.add_ingredient("se-pylon-construction", { type = "item", name = "roboport-antenna-3", amount = 2 })
bobmods.lib.recipe.add_ingredient("se-supercharger", { type = "item", name = "roboport-antenna-3", amount = 2 })
bobmods.lib.recipe.add_ingredient("se-supercharger", { type = "item", name = "roboport-chargepad-3", amount = 16 })
bobmods.lib.recipe.remove_ingredient("se-pylon-construction", "se-holmium-solenoid")
bobmods.lib.recipe.remove_ingredient("se-supercharger", "se-holmium-cable")
bobmods.lib.recipe.remove_ingredient("se-supercharger", "se-holmium-solenoid")
bobmods.lib.recipe.add_ingredient(
  "se-pylon-construction-radar",
  { type = "item", name = "roboport-antenna-4", amount = 3 }
)
bobmods.lib.tech.replace_prerequisite("se-pylon-construction", "se-holmium-solenoid", "bob-robo-modular-3")
bobmods.lib.tech.replace_prerequisite("se-supercharger", "se-holmium-solenoid", "bob-robo-modular-3")
bobmods.lib.tech.remove_science_pack("se-pylon-construction", "se-energy-science-pack-2")
bobmods.lib.tech.add_science_pack("se-pylon-construction", "se-energy-science-pack-1", 1)
bobmods.lib.tech.remove_science_pack("se-supercharger", "se-energy-science-pack-2")
bobmods.lib.tech.add_science_pack("se-supercharger", "se-energy-science-pack-1", 1)
bobmods.lib.tech.add_prerequisite("se-pylon-construction-radar", "bob-robo-modular-4")

--Transport belts
data.raw["item-subgroup"]["transport-belt"].group = "bob-logistics"
data.raw["item-subgroup"]["underground-belt"].group = "bob-logistics"
data.raw["item-subgroup"].splitter.group = "bob-logistics"
data.raw["item-subgroup"]["transport-belt"].order = "b-7"
data.raw["item-subgroup"]["underground-belt"].order = "b-8"
data.raw["item-subgroup"].splitter.order = "b-9"

if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data.raw.recipe["transport-belt"].normal.ingredients = {
    { type = "item", name = "basic-transport-belt", amount = 2 },
    { type = "item", name = "electric-motor", amount = 1 },
    { type = "item", name = "iron-plate", amount = 2 },
  }
  data.raw.recipe["transport-belt"].normal.results[1].amount = 2
  data.raw.recipe["transport-belt"].expensive.ingredients = {
    { type = "item", name = "basic-transport-belt", amount = 2 },
    { type = "item", name = "electric-motor", amount = 1 },
    { type = "item", name = "iron-plate", amount = 2 },
  }
  data.raw.recipe["transport-belt"].expensive.results[1].amount = 2
else
  data.raw.recipe["transport-belt"].normal.ingredients = {
    { type = "item", name = "electric-motor", amount = 1 },
    { type = "item", name = "iron-plate", amount = 2 },
  }
  data.raw.recipe["transport-belt"].normal.results[1].amount = 2
  data.raw.recipe["transport-belt"].expensive.ingredients = {
    { type = "item", name = "electric-motor", amount = 1 },
    { type = "item", name = "iron-plate", amount = 2 },
  }
  data.raw.recipe["transport-belt"].expensive.results[1].amount = 2
end

data.raw.recipe["fast-transport-belt"].ingredients = {
  { type = "item", name = "transport-belt", amount = 2 },
  { type = "item", name = "iron-gear-wheel", amount = 9 },
  { type = "item", name = "electric-motor", amount = 1 },
}
data.raw.recipe["fast-transport-belt"].result_count = 2

data.raw.recipe["express-transport-belt"].ingredients = {
  { type = "item", name = "fast-transport-belt", amount = 2 },
  { type = "item", name = "iron-gear-wheel", amount = 7 },
  { type = "item", name = "electric-motor", amount = 1 },
  { type = "fluid", name = "lubricant", amount = 10 },
}
data.raw.recipe["express-transport-belt"].result_count = 2
data.raw.recipe["express-transport-belt"].category = "crafting-with-fluid"

data.raw.recipe["underground-belt"].normal.ingredients = {
  { type = "item", name = "transport-belt", amount = 6 },
  { type = "item", name = "iron-plate", amount = 8 },
}
data.raw.recipe["underground-belt"].expensive.ingredients = {
  { type = "item", name = "transport-belt", amount = 6 },
  { type = "item", name = "iron-plate", amount = 8 },
}

data.raw.recipe["fast-underground-belt"].ingredients = {
  { type = "item", name = "underground-belt", amount = 2 },
  { type = "item", name = "iron-gear-wheel", amount = 40 },
  { type = "item", name = "electric-motor", amount = 12 },
}

data.raw.recipe["express-underground-belt"].ingredients = {
  { type = "item", name = "fast-underground-belt", amount = 2 },
  { type = "item", name = "iron-gear-wheel", amount = 60 },
  { type = "fluid", name = "lubricant", amount = 60 },
  { type = "item", name = "electric-motor", amount = 16 },
}
data.raw.recipe["express-underground-belt"].category = "crafting-with-fluid"

data.raw.recipe.splitter.normal.ingredients = {
  { type = "item", name = "transport-belt", amount = 2 },
  { type = "item", name = "iron-plate", amount = 4 },
  { type = "item", name = "electronic-circuit", amount = 2 },
  { type = "item", name = "electric-motor", amount = 1 },
}
data.raw.recipe.splitter.expensive.ingredients = {
  { type = "item", name = "transport-belt", amount = 2 },
  { type = "item", name = "iron-plate", amount = 4 },
  { type = "item", name = "electronic-circuit", amount = 2 },
  { type = "item", name = "electric-motor", amount = 1 },
}

data.raw.recipe["fast-splitter"].ingredients = {
  { type = "item", name = "splitter", amount = 1 },
  { type = "item", name = "iron-gear-wheel", amount = 18 },
  { type = "item", name = "electronic-circuit", amount = 5 },
  { type = "item", name = "electric-motor", amount = 2 },
}

data.raw.recipe["express-splitter"].ingredients = {
  { type = "item", name = "fast-splitter", amount = 1 },
  { type = "item", name = "iron-gear-wheel", amount = 14 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "fluid", name = "lubricant", amount = 20 },
  { type = "item", name = "electric-motor", amount = 2 },
}
data.raw.recipe["express-splitter"].category = "crafting-with-fluid"

bobmods.lib.tech.add_prerequisite("logistics", "electricity")
bobmods.lib.tech.remove_prerequisite("logistics-2", "steel-processing")

data.raw.recipe["turbo-transport-belt"].ingredients = {
  { type = "item", name = "express-transport-belt", amount = 2 },
  { type = "item", name = "se-heavy-bearing", amount = 2 },
  { type = "item", name = "electric-engine-unit", amount = 1 },
}
data.raw.recipe["turbo-transport-belt"].result_count = 2

data.raw.recipe["ultimate-transport-belt"].ingredients = {
  { type = "item", name = "turbo-transport-belt", amount = 2 },
  { type = "item", name = "se-holmium-solenoid", amount = 2 },
  { type = "item", name = "se-aeroframe-scaffold", amount = 1 },
  { type = "item", name = "se-heavy-composite", amount = 1 },
}
data.raw.recipe["ultimate-transport-belt"].result_count = 2

data.raw.recipe["turbo-underground-belt"].ingredients = {
  { type = "item", name = "express-underground-belt", amount = 2 },
  { type = "item", name = "se-heavy-bearing", amount = 16 },
  { type = "item", name = "electric-engine-unit", amount = 8 },
}

data.raw.recipe["ultimate-underground-belt"].ingredients = {
  { type = "item", name = "turbo-underground-belt", amount = 2 },
  { type = "item", name = "se-holmium-solenoid", amount = 14 },
  { type = "item", name = "se-aeroframe-scaffold", amount = 7 },
  { type = "item", name = "se-heavy-composite", amount = 7 },
}

data.raw.recipe["turbo-splitter"].ingredients = {
  { type = "item", name = "express-splitter", amount = 1 },
  { type = "item", name = "se-heavy-bearing", amount = 4 },
  { type = "item", name = "processing-unit", amount = 5 },
  { type = "item", name = "electric-engine-unit", amount = 2 },
}

data.raw.recipe["ultimate-splitter"].ingredients = {
  { type = "item", name = "turbo-splitter", amount = 1 },
  { type = "item", name = "se-holmium-solenoid", amount = 2 },
  { type = "item", name = "processing-unit", amount = 5 },
  { type = "item", name = "se-aeroframe-scaffold", amount = 2 },
  { type = "item", name = "se-heavy-composite", amount = 2 },
}

bobmods.lib.recipe.replace_ingredient(
  "se-deep-space-transport-belt",
  "se-space-transport-belt",
  "ultimate-transport-belt"
)
bobmods.lib.recipe.replace_ingredient("se-deep-space-transport-belt", "se-heavy-bearing", "se-heavy-assembly")
bobmods.lib.recipe.replace_ingredient("se-deep-space-transport-belt", "se-aeroframe-scaffold", "se-aeroframe-bulkhead")

data.raw.technology["logistics-4"].prerequisites = {
  "se-heavy-bearing",
}
data.raw.technology["logistics-4"].unit.count = 500
data.raw.technology["logistics-4"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-material-science-pack-2", 1 },
}

data.raw.technology["logistics-5"].prerequisites = {
  "logistics-4",
  "se-heavy-composite",
  "se-holmium-solenoid",
  "se-aeroframe-scaffold",
}
data.raw.technology["logistics-5"].unit.count = 1000
data.raw.technology["logistics-5"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-astronomic-science-pack-2", 1 },
  { "se-energy-science-pack-2", 1 },
  { "se-material-science-pack-3", 1 },
}

bobmods.lib.tech.add_prerequisite("se-deep-space-transport-belt", "logistics-5")
bobmods.lib.recipe.add_ingredient("se-space-transport-belt", { "electric-motor", 1 })

local ultlength = data.raw["underground-belt"]["ultimate-underground-belt"].max_distance
if ultlength > 17 then
  data.raw["underground-belt"]["se-deep-space-underground-belt-black"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-blue"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-cyan"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-green"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-magenta"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-red"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-white"].max_distance = ultlength
  data.raw["underground-belt"]["se-deep-space-underground-belt-yellow"].max_distance = ultlength
end

--Inserters
data.raw.recipe.inserter.normal.ingredients = {
  { type = "item", name = "burner-inserter", amount = 1 },
  { type = "item", name = "electric-motor", amount = 1 },
  { type = "item", name = "electronic-circuit", amount = 1 },
}
data.raw.recipe.inserter.expensive.ingredients = {
  { type = "item", name = "burner-inserter", amount = 1 },
  { type = "item", name = "electric-motor", amount = 1 },
  { type = "item", name = "electronic-circuit", amount = 1 },
}

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data.raw.recipe["turbo-inserter"].ingredients = {
    { type = "item", name = "fast-inserter", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 1 },
    { type = "item", name = "processing-unit", amount = 1 },
    { type = "item", name = "electric-engine-unit", amount = 1 },
  }

  data.raw.recipe["turbo-filter-inserter"].ingredients = {
    { type = "item", name = "filter-inserter", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 1 },
    { type = "item", name = "processing-unit", amount = 5 },
    { type = "item", name = "electric-engine-unit", amount = 1 },
  }

  data.raw.recipe["turbo-stack-inserter"].ingredients = {
    { type = "item", name = "stack-inserter", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "processing-unit", amount = 1 },
    { type = "item", name = "electric-engine-unit", amount = 2 },
  }

  data.raw.recipe["turbo-stack-filter-inserter"].ingredients = {
    { type = "item", name = "stack-filter-inserter", amount = 1 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "processing-unit", amount = 6 },
    { type = "item", name = "electric-engine-unit", amount = 2 },
  }

  data.raw.recipe["express-inserter"].ingredients = {
    { type = "item", name = "turbo-inserter", amount = 1 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 1 },
    { type = "item", name = "processing-unit", amount = 1 },
    { type = "item", name = "se-holmium-solenoid", amount = 1 },
  }

  data.raw.recipe["express-filter-inserter"].ingredients = {
    { type = "item", name = "turbo-filter-inserter", amount = 1 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 2 },
    { type = "item", name = "processing-unit", amount = 5 },
    { type = "item", name = "se-holmium-solenoid", amount = 1 },
  }

  data.raw.recipe["express-stack-inserter"].ingredients = {
    { type = "item", name = "turbo-stack-inserter", amount = 1 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 1 },
    { type = "item", name = "processing-unit", amount = 1 },
    { type = "item", name = "se-holmium-solenoid", amount = 2 },
  }

  data.raw.recipe["express-stack-filter-inserter"].ingredients = {
    { type = "item", name = "turbo-stack-filter-inserter", amount = 1 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 2 },
    { type = "item", name = "processing-unit", amount = 6 },
    { type = "item", name = "se-holmium-solenoid", amount = 2 },
  }

  bobmods.lib.tech.add_science_pack("turbo-inserter", "se-material-science-pack-2", 1)
  bobmods.lib.tech.add_science_pack("stack-inserter-3", "se-material-science-pack-2", 1)

  data.raw.technology["ultimate-inserter"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
    { "se-energy-science-pack-2", 1 },
    { "se-material-science-pack-3", 1 },
  }
  data.raw.technology["stack-inserter-4"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
    { "se-energy-science-pack-2", 1 },
    { "se-material-science-pack-3", 1 },
  }

  data.raw.technology["stack-inserter-3"].unit.count = 200
  data.raw.technology["ultimate-inserter"].unit.count = 150
  data.raw.technology["stack-inserter-4"].unit.count = 500
end

bobmods.lib.tech.add_science_pack("long-inserters-2", "space-science-pack", 1)
bobmods.lib.tech.add_science_pack("more-inserters-2", "utility-science-pack", 1)

data.raw.technology["inserter-capacity-bonus-8"].prerequisites = {
  "inserter-capacity-bonus-7",
}
data.raw.technology["inserter-capacity-bonus-8"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-material-science-pack-4", 1 },
  { "se-deep-space-science-pack-1", 1 },
}

end
