if mods["space-exploration"] then

--Portable solar panels
data.raw.recipe["solar-panel-equipment-2"].ingredients = {
  { type = "item", name = "solar-panel-equipment", amount = 1 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "glass", amount = 4 },
  { type = "item", name = "se-cryonite-rod", amount = 2 },
}

data.raw.recipe["solar-panel-equipment-3"].ingredients = {
  { type = "item", name = "solar-panel-equipment-2", amount = 1 },
  { type = "item", name = "processing-unit", amount = 3 },
  { type = "item", name = "se-space-mirror", amount = 4 },
  { type = "item", name = "se-holmium-plate", amount = 2 },
  { type = "item", name = "se-holmium-cable", amount = 2 },
}

data.raw.recipe["solar-panel-equipment-4"].ingredients = {
  { type = "item", name = "solar-panel-equipment-3", amount = 1 },
  { type = "item", name = "se-quantum-processor", amount = 1 },
  { type = "item", name = "se-superconductive-cable", amount = 2 },
  { type = "item", name = "se-nanomaterial", amount = 1 },
}

data.raw.technology["solar-panel-equipment-2"].prerequisites = {
  "solar-panel-equipment",
  "se-processing-cryonite",
}
data.raw.technology["solar-panel-equipment-2"].unit.count = 130
data.raw.technology["solar-panel-equipment-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
}

data.raw.technology["solar-panel-equipment-3"].prerequisites = {
  "solar-panel-equipment-2",
  "se-holmium-cable",
}
data.raw.technology["solar-panel-equipment-3"].unit.count = 300
data.raw.technology["solar-panel-equipment-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-energy-science-pack-1", 1 },
}

data.raw.technology["solar-panel-equipment-4"].prerequisites = {
  "solar-panel-equipment-3",
  "se-nanomaterial",
  "se-superconductive-cable",
}
data.raw.technology["solar-panel-equipment-4"].unit.count = 800
data.raw.technology["solar-panel-equipment-4"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-astronomic-science-pack-4", 1 },
  { "se-biological-science-pack-4", 1 },
  { "se-energy-science-pack-4", 1 },
  { "se-material-science-pack-4", 1 },
}

--Portable reactors
data.raw.item["se-rtg-equipment"].order = "a[energy-source]-b[fission-reactor]-a"
data.raw.item["se-rtg-equipment-2"].order = "a[energy-source]-b[fission-reactor]-b"

data.raw.recipe["se-rtg-equipment-2"].ingredients = {
  { type = "item", name = "se-rtg-equipment", amount = 2 },
  { type = "item", name = "processing-unit", amount = 50 },
  { type = "item", name = "low-density-structure", amount = 100 },
  { type = "item", name = "se-heat-shielding", amount = 50 },
  { type = "item", name = "se-cryonite-rod", amount = 20 },
}

data.raw.recipe["fusion-reactor-equipment"].ingredients = {
  { type = "item", name = "processing-unit", amount = 100 },
  { type = "item", name = "low-density-structure", amount = 50 },
  { type = "item", name = "se-heat-shielding", amount = 50 },
  { type = "item", name = "se-holmium-cable", amount = 20 },
  { type = "item", name = "se-electromagnetic-field-data", amount = 20 },
  { type = "fluid", name = "se-plasma-stream", amount = 200 },
}
data.raw.recipe["fusion-reactor-equipment"].category = "crafting-with-fluid"

data.raw.recipe["fusion-reactor-equipment-2"].ingredients = {
  { type = "item", name = "fusion-reactor-equipment", amount = 1 },
  { type = "item", name = "se-quantum-processor", amount = 20 },
  { type = "item", name = "se-superconductive-cable", amount = 50 },
  { type = "item", name = "se-magnetic-canister", amount = 10 },
  { type = "item", name = "effectivity-module-6", amount = 1 },
  { type = "item", name = "se-fusion-test-data", amount = 10 },
}

data.raw.recipe["fusion-reactor-equipment-3"].ingredients = {
  { type = "item", name = "fusion-reactor-equipment-2", amount = 1 },
  { type = "item", name = "se-gammaray-detector", amount = 40 },
  { type = "item", name = "se-dynamic-emitter", amount = 20 },
  { type = "item", name = "se-nanomaterial", amount = 40 },
  { type = "item", name = "productivity-module-6", amount = 1 },
  { type = "item", name = "se-particle-beam-shielding-data", amount = 20 },
}

data.raw.recipe["fusion-reactor-equipment-4"].ingredients = {
  { type = "item", name = "fusion-reactor-equipment-3", amount = 1 },
  { type = "item", name = "se-naquium-processor", amount = 5 },
  { type = "item", name = "se-naquium-cube", amount = 4 },
  { type = "item", name = "se-naquium-plate", amount = 20 },
  { type = "item", name = "speed-module-6", amount = 1 },
  { type = "item", name = "se-naquium-energy-data", amount = 1 },
}

data.raw.technology["se-rtg-equipment-2"].prerequisites = {
  "se-rtg-equipment",
  "utility-science-pack",
}
data.raw.technology["se-rtg-equipment-2"].unit.count = 300
data.raw.technology["se-rtg-equipment-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
}

data:extend({
  {
    type = "technology",
    name = "fusion-reactor-equipment-se",
    localised_description = { "technology-description.fusion-reactor-equipment" },
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-1.png",
      icon_size = 128,
    }),
    order = "g-l-b",
    prerequisites = {
      "se-rtg-equipment-2",
      "se-holmium-cable",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment",
      },
    },
    unit = {
      count = 400,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "se-energy-science-pack-1", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-se-2",
    localised_description = { "technology-description.fusion-reactor-equipment" },
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-2.png",
      icon_size = 128,
    }),
    order = "g-l-b",
    prerequisites = {
      "fusion-reactor-equipment-se",
      "se-energy-science-pack-4",
      "se-superconductive-cable",
      "effectivity-module-6",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-2",
      },
    },
    unit = {
      count = 500,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "se-energy-science-pack-4", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-se-3",
    localised_description = { "technology-description.fusion-reactor-equipment" },
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-3.png",
      icon_size = 128,
    }),
    order = "g-l-c",
    prerequisites = {
      "fusion-reactor-equipment-se-2",
      "se-nanomaterial",
      "productivity-module-6",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-3",
      },
    },
    unit = {
      count = 2000,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "production-science-pack", 1 },
        { "se-astronomic-science-pack-4", 1 },
        { "se-biological-science-pack-4", 1 },
        { "se-energy-science-pack-4", 1 },
        { "se-material-science-pack-4", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-se-4",
    localised_description = { "technology-description.fusion-reactor-equipment" },
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-4.png",
      icon_size = 128,
    }),
    order = "g-l-d",
    prerequisites = {
      "fusion-reactor-equipment-se-3",
      "se-naquium-processor",
      "speed-module-6",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-4",
      },
    },
    unit = {
      count = 1000,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "production-science-pack", 1 },
        { "se-astronomic-science-pack-4", 1 },
        { "se-biological-science-pack-4", 1 },
        { "se-energy-science-pack-4", 1 },
        { "se-material-science-pack-4", 1 },
        { "se-deep-space-science-pack-3", 1 },
      },
    },
  },
})

if data.raw.technology["bob-robots-4"] then
  bobmods.lib.tech.replace_prerequisite("bob-robots-4", "fusion-reactor-equipment", "fusion-reactor-equipment-se")
end

data.raw.technology["fusion-reactor-equipment"].hidden = true
data.raw.technology["fusion-reactor-equipment-2"].hidden = true
data.raw.technology["fusion-reactor-equipment-3"].hidden = true
data.raw.technology["fusion-reactor-equipment-4"].hidden = true

--Personal batteries
data.raw.recipe["battery-mk2-equipment"].ingredients = {
  { type = "item", name = "battery-equipment", amount = 2 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "low-density-structure", amount = 2 },
}

data.raw.recipe["battery-mk3-equipment"].ingredients = {
  { type = "item", name = "battery-mk2-equipment", amount = 2 },
  { type = "item", name = "se-vulcanite-block", amount = 2 },
  { type = "item", name = "se-cryonite-rod", amount = 2 },
}

data.raw.recipe["battery-mk4-equipment"].ingredients = {
  { type = "item", name = "battery-mk3-equipment", amount = 2 },
  { type = "item", name = "processing-unit", amount = 2 },
  { type = "item", name = "se-holmium-cable", amount = 6 },
}

data.raw.recipe["battery-mk5-equipment"].ingredients = {
  { type = "item", name = "battery-mk4-equipment", amount = 2 },
  { type = "item", name = "se-beryllium-plate", amount = 2 },
  { type = "item", name = "se-iridium-plate", amount = 2 },
  { type = "fluid", name = "se-vitalic-acid", amount = 10 },
}
data.raw.recipe["battery-mk5-equipment"].category = "crafting-with-fluid"

data.raw.recipe["battery-mk6-equipment"].ingredients = {
  { type = "item", name = "battery-mk5-equipment", amount = 2 },
  { type = "item", name = "se-naquium-cube", amount = 2 },
  { type = "item", name = "se-nanomaterial", amount = 2 },
  { type = "item", name = "se-superconductive-cable", amount = 2 },
}

data.raw.item["battery-equipment"].order = "c[battery]-a[battery-equipment]"
data.raw.item["battery-mk2-equipment"].order = "c[battery]-b[battery-mk2-equipment]"

--Exoskeletons
data.raw.recipe["exoskeleton-equipment-2"].ingredients = {
  { type = "item", name = "exoskeleton-equipment", amount = 1 },
  { type = "item", name = "processing-unit", amount = 10 },
  { type = "item", name = "se-aeroframe-pole", amount = 16 },
  { type = "item", name = "se-heavy-bearing", amount = 16 },
}

data.raw.recipe["exoskeleton-equipment-3"].ingredients = {
  { type = "item", name = "exoskeleton-equipment-2", amount = 1 },
  { type = "fluid", name = "se-neural-gel", amount = 30 },
  { type = "item", name = "se-holmium-solenoid", amount = 12 },
  { type = "item", name = "se-nanomaterial", amount = 16 },
}
data.raw.recipe["exoskeleton-equipment-3"].category = "crafting-with-fluid"

data.raw.technology["exoskeleton-equipment-2"].prerequisites = {
  "exoskeleton-equipment",
  "se-aeroframe-pole",
  "se-heavy-bearing",
}
data.raw.technology["exoskeleton-equipment-2"].unit.count = 150
data.raw.technology["exoskeleton-equipment-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-astronomic-science-pack-1", 1 },
  { "se-material-science-pack-2", 1 },
}

data.raw.technology["exoskeleton-equipment-3"].prerequisites = {
  "exoskeleton-equipment-2",
  "se-nanomaterial",
}
data.raw.technology["exoskeleton-equipment-3"].unit.count = 800
data.raw.technology["exoskeleton-equipment-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-astronomic-science-pack-4", 1 },
  { "se-biological-science-pack-4", 1 },
  { "se-energy-science-pack-4", 1 },
  { "se-material-science-pack-4", 1 },
}

--Portable roboports
data.raw.recipe["personal-roboport-robot-equipment-2"].ingredients = {
  { type = "item", name = "personal-roboport-robot-equipment", amount = 1 },
  { type = "item", name = "processing-unit", amount = 5 },
}

data.raw.recipe["personal-roboport-robot-equipment-3"].ingredients = {
  { type = "item", name = "personal-roboport-robot-equipment-2", amount = 1 },
  { type = "item", name = "processing-unit", amount = 10 },
}

data.raw.recipe["personal-roboport-robot-equipment-4"].ingredients = {
  { type = "item", name = "personal-roboport-robot-equipment-3", amount = 1 },
  { type = "item", name = "se-quantum-processor", amount = 1 },
}

data.raw.technology["personal-roboport-mk2-equipment"].prerequisites = {
  "personal-roboport-equipment",
  "se-aeroframe-pole",
}
data.raw.technology["personal-roboport-mk2-equipment"].unit.count = 200
data.raw.technology["personal-roboport-mk2-equipment"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-1", 1 },
}

data.raw.technology["personal-roboport-mk3-equipment"].prerequisites = {
  "personal-roboport-mk2-equipment",
  "se-aeroframe-scaffold",
  "se-holmium-cable",
}
data.raw.technology["personal-roboport-mk3-equipment"].unit.count = 300
data.raw.technology["personal-roboport-mk3-equipment"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-2", 1 },
  { "se-energy-science-pack-1", 1 },
}

data.raw.technology["personal-roboport-mk4-equipment"].prerequisites = {
  "personal-roboport-mk3-equipment",
  "se-aeroframe-bulkhead",
  "se-superconductive-cable",
  "se-quantum-processor",
}
data.raw.technology["personal-roboport-mk4-equipment"].unit.count = 500
data.raw.technology["personal-roboport-mk4-equipment"].unit.ingredients = {
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

data.raw.technology["personal-roboport-modular-equipment-2"].unit.count = 200
data.raw.technology["personal-roboport-modular-equipment-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-1", 1 },
}

data.raw.technology["personal-roboport-modular-equipment-3"].unit.count = 300
data.raw.technology["personal-roboport-modular-equipment-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-2", 1 },
  { "se-energy-science-pack-1", 1 },
}

data.raw.technology["personal-roboport-modular-equipment-4"].unit.count = 500
data.raw.technology["personal-roboport-modular-equipment-4"].unit.ingredients = {
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

if not bobmods.logistics then
  data.raw.recipe["personal-roboport-antenna-equipment"].ingredients = {
    { "iron-gear-wheel", 20 },
    { "advanced-circuit", 20 },
    { "copper-cable", 20 },
    { "steel-plate", 8 },
  }
  data.raw.recipe["personal-roboport-antenna-equipment-2"].ingredients = {
    { "personal-roboport-antenna-equipment", 1 },
    { "iron-gear-wheel", 20 },
    { "processing-unit", 8 },
    { "copper-cable", 40 },
    { "se-aeroframe-pole", 8 },
  }
  data.raw.recipe["personal-roboport-antenna-equipment-3"].ingredients = {
    { "personal-roboport-antenna-equipment-2", 1 },
    { "iron-gear-wheel", 20 },
    { "processing-unit", 16 },
    { "se-holmium-cable", 12 },
    { "se-aeroframe-pole", 8 },
  }
  data.raw.recipe["personal-roboport-antenna-equipment-4"].ingredients = {
    { "personal-roboport-antenna-equipment-3", 1 },
    { "iron-gear-wheel", 20 },
    { "se-quantum-processor", 2 },
    { "se-superconductive-cable", 4 },
    { "se-aeroframe-scaffold", 2 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment"].ingredients = {
    { "battery", 4 },
    { "copper-cable", 8 },
    { "advanced-circuit", 8 },
    { "steel-plate", 20 },
  }
  data.raw.recipe["personal-roboport-chargepad-equipment-2"].ingredients = {
    { "personal-roboport-chargepad-equipment", 1 },
    { "battery", 8 },
    { "copper-cable", 16 },
    { "processing-unit", 4 },
    { "se-beryllium-plate", 20 },
  }
  data.raw.recipe["personal-roboport-chargepad-equipment-3"].ingredients = {
    { "personal-roboport-chargepad-equipment-2", 1 },
    { "battery", 12 },
    { "se-holmium-cable", 8 },
    { "processing-unit", 8 },
    { "se-aeroframe-scaffold", 8 },
  }
  data.raw.recipe["personal-roboport-chargepad-equipment-4"].ingredients = {
    { "personal-roboport-chargepad-equipment-3", 1 },
    { "battery", 16 },
    { "se-superconductive-cable", 4 },
    { "se-quantum-processor", 2 },
    { "se-aeroframe-bulkhead", 2 },
  }

  data.raw.recipe["personal-roboport-equipment"].ingredients = {
    { "iron-gear-wheel", 20 },
    { "battery", 20 },
    { "advanced-circuit", 25 },
    { "copper-cable", 30 },
    { "steel-plate", 30 },
  }
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { "personal-roboport-equipment", 1 },
    { "battery", 40 },
    { "processing-unit", 10 },
    { "copper-cable", 60 },
    { "se-beryllium-plate", 30 },
  }
  data.raw.recipe["personal-roboport-mk3-equipment"].ingredients = {
    { "personal-roboport-mk2-equipment", 1 },
    { "battery", 60 },
    { "processing-unit", 20 },
    { "se-holmium-cable", 18 },
    { "se-aeroframe-scaffold", 20 },
  }
  data.raw.recipe["personal-roboport-mk4-equipment"].ingredients = {
    { "personal-roboport-mk3-equipment", 1 },
    { "battery", 80 },
    { "se-quantum-processor", 3 },
    { "se-superconductive-cable", 6 },
    { "se-aeroframe-bulkhead", 5 },
  }
else
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk2-equipment", "steel-plate", "se-beryllium-plate")
  bobmods.lib.recipe.remove_ingredient("personal-roboport-mk3-equipment", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-mk3-equipment",
    { type = "item", name = "se-aeroframe-scaffold", amount = 5 }
  )
  bobmods.lib.recipe.remove_ingredient("personal-roboport-mk4-equipment", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-mk4-equipment",
    { type = "item", name = "se-aeroframe-bulkhead", amount = 2 }
  )
end

--Night vision equipment
data.raw["night-vision-equipment"]["night-vision-equipment"].color_lookup =
  { { 0.5, "__core__/graphics/color_luts/nightvision.png" } }

data.raw.recipe["night-vision-equipment-3"].ingredients = {
  { type = "item", name = "night-vision-equipment-2", amount = 1 },
  { type = "fluid", name = "se-neural-gel", amount = 10 },
  { type = "item", name = "plastic-bar", amount = 2 },
}
data.raw.recipe["night-vision-equipment-3"].category = "crafting-with-fluid"

data.raw.technology["night-vision-equipment-3"].prerequisites = {
  "night-vision-equipment-2",
  "se-space-genetics-laboratory",
}
data.raw.technology["night-vision-equipment-3"].unit.count = 50

--Personal laser defense
data.raw.recipe["personal-laser-defense-equipment"].ingredients = {
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "glass", amount = 20 },
  { type = "item", name = "battery", amount = 3 },
  { type = "item", name = "steel-plate", amount = 5 },
}

data.raw.recipe["personal-laser-defense-equipment-2"].ingredients = {
  { type = "item", name = "personal-laser-defense-equipment", amount = 1 },
  { type = "item", name = "advanced-circuit", amount = 10 },
  { type = "item", name = "se-cryonite-rod", amount = 4 },
  { type = "item", name = "low-density-structure", amount = 2 },
}

data.raw.recipe["personal-laser-defense-equipment-3"].ingredients = {
  { type = "item", name = "personal-laser-defense-equipment-2", amount = 1 },
  { type = "item", name = "processing-unit", amount = 5 },
  { type = "item", name = "se-holmium-cable", amount = 20 },
  { type = "item", name = "se-holmium-plate", amount = 5 },
}

data.raw.recipe["personal-laser-defense-equipment-4"].ingredients = {
  { type = "item", name = "personal-laser-defense-equipment-3", amount = 1 },
  { type = "item", name = "processing-unit", amount = 10 },
  { type = "item", name = "se-space-mirror", amount = 4 },
  { type = "item", name = "se-iridium-plate", amount = 5 },
}

data.raw.recipe["personal-laser-defense-equipment-5"].ingredients = {
  { type = "item", name = "personal-laser-defense-equipment-4", amount = 1 },
  { type = "item", name = "se-quantum-processor", amount = 1 },
  { type = "item", name = "se-dynamic-emitter", amount = 4 },
  { type = "item", name = "se-aeroframe-bulkhead", amount = 1 },
}

data.raw.recipe["personal-laser-defense-equipment-6"].ingredients = {
  { type = "item", name = "personal-laser-defense-equipment-5", amount = 1 },
  { type = "item", name = "se-quantum-processor", amount = 3 },
  { type = "item", name = "se-naquium-crystal", amount = 4 },
  { type = "item", name = "se-nanomaterial", amount = 8 },
}

data.raw.technology["personal-laser-defense-equipment-2"].prerequisites = {
  "personal-laser-defense-equipment",
  "utility-science-pack",
}
--data.raw.technology["personal-laser-defense-equipment-2"].unit.count = 150
data.raw.technology["personal-laser-defense-equipment-2"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
}

data.raw.technology["personal-laser-defense-equipment-3"].prerequisites = {
  "personal-laser-defense-equipment-2",
  "se-holmium-cable",
}
data.raw.technology["personal-laser-defense-equipment-3"].unit.count = 400
data.raw.technology["personal-laser-defense-equipment-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-energy-science-pack-1", 1 },
}

data.raw.technology["personal-laser-defense-equipment-4"].prerequisites = {
  "personal-laser-defense-equipment-3",
  "se-astronomic-science-pack-1",
  "se-material-science-pack-1",
}
data.raw.technology["personal-laser-defense-equipment-4"].unit.count = 550
data.raw.technology["personal-laser-defense-equipment-4"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-1", 1 },
  { "se-energy-science-pack-1", 1 },
  { "se-material-science-pack-1", 1 },
}

data.raw.technology["personal-laser-defense-equipment-5"].prerequisites = {
  "personal-laser-defense-equipment-4",
  "se-dynamic-emitter",
  "se-quantum-processor",
  "se-aeroframe-bulkhead",
  "se-material-science-pack-4",
}
data.raw.technology["personal-laser-defense-equipment-5"].unit.count = 1400
data.raw.technology["personal-laser-defense-equipment-5"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-3", 1 },
  { "se-energy-science-pack-4", 1 },
  { "se-material-science-pack-4", 1 },
}

data.raw.technology["personal-laser-defense-equipment-6"].prerequisites = {
  "personal-laser-defense-equipment-5",
  "se-deep-space-science-pack-1",
}
data.raw.technology["personal-laser-defense-equipment-6"].unit.count = 700
data.raw.technology["personal-laser-defense-equipment-6"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "se-astronomic-science-pack-4", 1 },
  { "se-biological-science-pack-4", 1 },
  { "se-energy-science-pack-4", 1 },
  { "se-material-science-pack-4", 1 },
  { "se-deep-space-science-pack-1", 1 },
}

--Artifacts
if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment-4", { type = "item", name = "alien-artifact", amount = 20 })
  bobmods.lib.recipe.add_ingredient("night-vision-equipment-3", { type = "item", name = "alien-artifact", amount = 20 })
  bobmods.lib.recipe.add_ingredient(
    "energy-shield-mk3-equipment",
    { type = "item", name = "alien-artifact", amount = 20 }
  )
  if data.raw.item["alien-artifact-red"] then
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-2",
      { type = "item", name = "alien-artifact-orange", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-2",
      { type = "item", name = "alien-artifact-blue", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-3",
      { type = "item", name = "alien-artifact-yellow", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-3",
      { type = "item", name = "alien-artifact-purple", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-4",
      { type = "item", name = "alien-artifact-red", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-4",
      { type = "item", name = "alien-artifact-green", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk4-equipment",
      { type = "item", name = "alien-artifact-orange", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk4-equipment",
      { type = "item", name = "alien-artifact-blue", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk5-equipment",
      { type = "item", name = "alien-artifact-yellow", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk5-equipment",
      { type = "item", name = "alien-artifact-purple", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk6-equipment",
      { type = "item", name = "alien-artifact-red", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "battery-mk6-equipment",
      { type = "item", name = "alien-artifact-green", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk4-equipment",
      { type = "item", name = "alien-artifact-orange", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk4-equipment",
      { type = "item", name = "alien-artifact-blue", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk5-equipment",
      { type = "item", name = "alien-artifact-yellow", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk5-equipment",
      { type = "item", name = "alien-artifact-purple", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk6-equipment",
      { type = "item", name = "alien-artifact-red", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk6-equipment",
      { type = "item", name = "alien-artifact-green", amount = 10 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-2",
      { type = "item", name = "alien-artifact", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-3",
      { type = "item", name = "alien-artifact", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient(
      "fusion-reactor-equipment-4",
      { type = "item", name = "alien-artifact", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient("battery-mk4-equipment", { type = "item", name = "alien-artifact", amount = 20 })
    bobmods.lib.recipe.add_ingredient("battery-mk5-equipment", { type = "item", name = "alien-artifact", amount = 20 })
    bobmods.lib.recipe.add_ingredient("battery-mk6-equipment", { type = "item", name = "alien-artifact", amount = 20 })
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk4-equipment",
      { type = "item", name = "alien-artifact", amount = 20 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk5-equipment",
      { type = "item", name = "alien-artifact", amount = 20 }
    )
    bobmods.lib.recipe.add_ingredient(
      "energy-shield-mk6-equipment",
      { type = "item", name = "alien-artifact", amount = 20 }
    )
  end
end

end
