data.raw["technology"]["energy-shield-mk2-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk2-equipment.png",
  icon_size = 128,
})
bobmods.lib.tech.remove_prerequisite("energy-shield-mk2-equipment", "low-density-structure")
bobmods.lib.tech.add_prerequisite("energy-shield-mk2-equipment", "productivity-module")

data:extend({
  {
    type = "technology",
    name = "bob-energy-shield-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk3-equipment.png",
      icon_size = 128,
    }),
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
    prerequisites = {
      "bob-energy-shield-equipment-3",
      "efficiency-module-3",
      "productivity-module-3",
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
    prerequisites = {
      "processing-unit",
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

data.raw["technology"]["fission-reactor-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-1.png",
  icon_size = 256,
})
bobmods.lib.tech.remove_science_pack("fission-reactor-equipment", "military-science-pack")
bobmods.lib.tech.remove_prerequisite("fission-reactor-equipment", "military-science-pack")
bobmods.lib.tech.remove_science_pack("fission-reactor-equipment", "utility-science-pack")
bobmods.lib.tech.remove_prerequisite("fission-reactor-equipment", "utility-science-pack")
bobmods.lib.tech.add_science_pack("fission-reactor-equipment", "production-science-pack", 1)
bobmods.lib.tech.add_prerequisite("fission-reactor-equipment", "production-science-pack")

data:extend({
  {
    type = "technology",
    name = "fission-reactor-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-2.png",
      icon_size = 256,
    }),
    prerequisites = {
      "fission-reactor-equipment",
      "low-density-structure",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fission-reactor-equipment-2",
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
      },
    },
  },

  {
    type = "technology",
    name = "fission-reactor-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-3.png",
      icon_size = 256,
    }),
    prerequisites = {
      "fission-reactor-equipment-2",
      "utility-science-pack"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fission-reactor-equipment-3",
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
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "fission-reactor-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-4.png",
      icon_size = 256,
    }),
    prerequisites = {
      "fission-reactor-equipment-3",
      "space-science-pack"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fission-reactor-equipment-4",
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
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
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
    }),
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
    }),
    prerequisites = {
      "processing-unit",
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

data.raw.technology["solar-panel-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__base__/graphics/technology/solar-panel-equipment.png",
  icon_size = 256,
})

data:extend({
  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
    }),
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
      count = 100,
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
    }),
    prerequisites = {
      "solar-panel-equipment-2",
      "processing-unit",
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
        { "production-science-pack", 1 },
      },
    },
  },

})

if data.raw.item["alien-artifact"] then
  data:extend({
    {
      type = "technology",
      name = "solar-panel-equipment-4",
      icons = bobmods.equipment.technology_icon_constant_equipment({
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        icon_size = 256,
      }),
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
  if data.raw.item["alien-orange-alloy"] and data.raw.fluid["alien-acid"] then
    data:extend({
      {
        type = "technology",
        name = "solar-panel-equipment-5",
        icons = bobmods.equipment.technology_icon_constant_equipment({
          icon = "__base__/graphics/technology/solar-panel-equipment.png",
          icon_size = 256,
        }),
        prerequisites = {
          "solar-panel-equipment-4",
          "alien-orange-research",
          "alien-purple-research"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "solar-panel-equipment-5",
          },
        },
        unit = {
          count = 200,
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
  end
end

data.raw["technology"]["personal-laser-defense-equipment"].icons =
  bobmods.equipment.technology_icon_constant_equipment({
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png",
    icon_size = 128,
  })
bobmods.lib.tech.remove_prerequisite("personal-laser-defense-equipment", "low-density-structure")
bobmods.lib.tech.remove_prerequisite("personal-laser-defense-equipment", "military-3")
bobmods.lib.tech.remove_prerequisite("personal-laser-defense-equipment", "power-armor")
bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment", "modular-armor")
if not mods["bobwarfare"] then
  bobmods.lib.tech.remove_prerequisite("personal-laser-defense-equipment", "laser-turret")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment", "military-science-pack")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment", "laser")
  bobmods.lib.tech.remove_science_pack("laser", "chemical-science-pack")
  bobmods.lib.tech.remove_prerequisite("laser", "chemical-science-pack")
  bobmods.lib.tech.add_prerequisite("laser-turret", "chemical-science-pack")
end
bobmods.lib.tech.remove_science_pack("laser-shooting-speed-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-weapons-damage-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("personal-laser-defense-equipment", "chemical-science-pack")

data:extend({
  {
    type = "technology",
    name = "personal-laser-defense-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
      icon_size = 128,
    }),
    prerequisites = {
      "military-3",
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
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
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
    prerequisites = {
      "personal-laser-defense-equipment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-3",
      },
    },
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
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
    prerequisites = {
      "personal-laser-defense-equipment-3",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-4",
      },
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
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
    prerequisites = {
      "personal-laser-defense-equipment-5",
      "speed-module-3",
      "efficiency-module-3",
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

bobmods.lib.tech.remove_prerequisite("exoskeleton-equipment", "processing-unit")
bobmods.lib.tech.add_prerequisite("exoskeleton-equipment", "advanced-circuit")
data.raw.technology["exoskeleton-equipment"].icons = bobmods.equipment.technology_icon_constant_equipment({
  icon = "__base__/graphics/technology/exoskeleton-equipment.png",
  icon_size = 256,
}),

data:extend({
  {
    type = "technology",
    name = "exoskeleton-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_equipment({
      icon = "__base__/graphics/technology/exoskeleton-equipment.png",
      icon_size = 256,
    }),
    prerequisites = {
      "exoskeleton-equipment",
      "processing-unit",
      "speed-module-2",
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
    }),
    prerequisites = {
      "exoskeleton-equipment-2",
      "speed-module-3",
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
