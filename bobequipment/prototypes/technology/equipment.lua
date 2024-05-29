data.raw["technology"]["energy-shield-mk2-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk2-equipment.png",
  icon_size = 128,
})
bobmods.lib.tech.remove_prerequisite("energy-shield-mk2-equipment", "low-density-structure")

data:extend({
  {
    type = "technology",
    name = "bob-energy-shield-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk3-equipment.png",
      icon_size = 128,
    }),
    order = "g-e-c",
    prerequisites = {
      "energy-shield-mk2-equipment",
      "productivity-module-2",
      "production-science-pack",
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk3-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk4-equipment.png",
      icon_size = 128,
    }),
    order = "g-e-d",
    prerequisites = {
      "bob-energy-shield-equipment-3",
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk4-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk5-equipment.png",
      icon_size = 128,
    }),
    order = "g-e-e",
    prerequisites = {
      "bob-energy-shield-equipment-4",
      "utility-science-pack",
    },
    unit = {
      count = 350,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk5-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk6-equipment.png",
      icon_size = 128,
    }),
    order = "g-e-f",
    prerequisites = {
      "bob-energy-shield-equipment-5",
    },
    unit = {
      count = 400,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk6-equipment",
      },
    },
  },
})

data.raw["technology"]["battery-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/battery-equipment.png",
  icon_size = 64,
})
data.raw["technology"]["battery-mk2-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/battery-mk2-equipment.png",
  icon_size = 64,
})
bobmods.lib.tech.remove_prerequisite("battery-mk2-equipment", "low-density-structure")

data:extend({
  {
    type = "technology",
    name = "bob-battery-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk3-equipment.png",
      icon_size = 64,
    }),
    order = "g-i-c",
    prerequisites = {
      "battery-mk2-equipment",
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "battery-mk3-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk4-equipment.png",
      icon_size = 64,
    }),
    order = "g-i-d",
    prerequisites = {
      "advanced-electronics-2",
      "bob-battery-equipment-3",
      "production-science-pack",
    },
    unit = {
      count = 200,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "battery-mk4-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk5-equipment.png",
      icon_size = 64,
    }),
    order = "g-i-e",
    prerequisites = {
      "bob-battery-equipment-4",
    },
    unit = {
      count = 250,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "battery-mk5-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk6-equipment.png",
      icon_size = 64,
    }),
    order = "g-i-f",
    prerequisites = {
      "bob-battery-equipment-5",
      "utility-science-pack",
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "battery-mk6-equipment",
      },
    },
  },
})

data.raw["technology"]["fusion-reactor-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-1.png",
  icon_size = 128,
})
bobmods.lib.tech.remove_science_pack("fusion-reactor-equipment", "military-science-pack")
bobmods.lib.tech.remove_prerequisite("fusion-reactor-equipment", "military-science-pack")

data:extend({
  {
    type = "technology",
    name = "fusion-reactor-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-2.png",
      icon_size = 128,
    }),
    order = "g-l-b",
    prerequisites = {
      "fusion-reactor-equipment",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-2",
      },
    },
    unit = {
      count = 250,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-3.png",
      icon_size = 128,
    }),
    order = "g-l-c",
    prerequisites = {
      "fusion-reactor-equipment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-3",
      },
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-4.png",
      icon_size = 128,
    }),
    order = "g-l-d",
    prerequisites = {
      "fusion-reactor-equipment-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-4",
      },
    },
    unit = {
      count = 350,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "night-vision-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/night-vision-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-g-b",
    prerequisites = {
      "chemical-science-pack",
      "night-vision-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "night-vision-equipment-2",
      },
    },
    unit = {
      count = 50,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "night-vision-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/night-vision-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    icon_mipmaps = 4,
    order = "g-g-c",
    prerequisites = {
      "advanced-electronics-2",
      "night-vision-equipment-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "night-vision-equipment-3",
      },
    },
    unit = {
      count = 50,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-k-b",
    prerequisites = {
      "chemical-science-pack",
      "solar-panel-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-2",
      },
    },
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "solar-panel-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-k-c",
    prerequisites = {
      "solar-panel-equipment-2",
      "advanced-electronics-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-3",
      },
    },
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1}
      },
    },
  },

  {
    type = "technology",
    name = "solar-panel-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-k-d",
    prerequisites = {
      "solar-panel-equipment-3",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-4",
      },
    },
    unit = {
      count = 100,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },
})

data.raw["technology"]["personal-laser-defense-equipment"].icons =
  bobmods.equipment.technology_icon_constant_equipment({
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png",
    icon_size = 128,
  })
bobmods.lib.tech.remove_prerequisite("personal-laser-defense-equipment", "low-density-structure")

data:extend({
  {
    type = "technology",
    name = "personal-laser-defense-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
      icon_size = 128,
    }),
    order = "g-m-b",
    prerequisites = {
      "personal-laser-defense-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-2",
      },
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
      icon_size = 128,
    }),
    order = "g-m-c",
    prerequisites = {
      "personal-laser-defense-equipment-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-3",
      },
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
      icon_size = 128,
    }),
    order = "g-m-d",
    prerequisites = {
      "personal-laser-defense-equipment-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-4",
      },
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
      icon_size = 128,
    }),
    order = "g-m-e",
    prerequisites = {
      "personal-laser-defense-equipment-4",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-5",
      },
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
      icon_size = 128,
    }),
    order = "g-m-f",
    prerequisites = {
      "personal-laser-defense-equipment-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-6",
      },
    },
    unit = {
      count = 350,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },
})

bobmods.lib.tech.remove_prerequisite("exoskeleton-equipment", "advanced-electronics-2")

data:extend({
  {
    type = "technology",
    name = "exoskeleton-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/exoskeleton-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-h-b",
    prerequisites = {
      "exoskeleton-equipment",
      "advanced-electronics-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "exoskeleton-equipment-2",
      },
    },
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
  },
  {
    type = "technology",
    name = "exoskeleton-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/exoskeleton-equipment.png",
      icon_size = 256,
      icon_mipmaps = 4,
    }),
    order = "g-h-c",
    prerequisites = {
      "exoskeleton-equipment-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "exoskeleton-equipment-3",
      },
    },
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },
})
