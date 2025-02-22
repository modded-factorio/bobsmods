data.raw["technology"]["belt-immunity-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/belt-immunity-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")

data.raw["technology"]["energy-shield-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/energy-shield-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["energy-shield-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk2-equipment.png",
  icon_size = 128,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
bobmods.lib.tech.remove_prerequisite("energy-shield-mk2-equipment", "low-density-structure")
bobmods.lib.tech.add_prerequisite("energy-shield-mk2-equipment", "productivity-module")

data:extend({
  {
    type = "technology",
    name = "bob-energy-shield-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk3-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "energy-shield-mk2-equipment",
      "productivity-module-2",
      "production-science-pack",
      "processing-unit",
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
        recipe = "bob-energy-shield-mk3-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-4",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk4-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-energy-shield-equipment-3",
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
        recipe = "bob-energy-shield-mk4-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-5",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk5-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
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
        recipe = "bob-energy-shield-mk5-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-energy-shield-equipment-6",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/energy-shield-mk6-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-energy-shield-equipment-5",
      "space-science-pack",
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
        { "space-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-energy-shield-mk6-equipment",
      },
    },
  },
})

data.raw["technology"]["battery-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__bobequipment__/graphics/icons/technology/battery-equipment.png",
  icon_size = 64,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["battery-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__bobequipment__/graphics/icons/technology/battery-mk2-equipment.png",
  icon_size = 64,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
bobmods.lib.tech.remove_prerequisite("battery-mk2-equipment", "low-density-structure")

data:extend({
  {
    type = "technology",
    name = "bob-battery-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk3-equipment.png",
      icon_size = 64,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
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
        recipe = "bob-battery-mk3-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-4",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk4-equipment.png",
      icon_size = 64,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
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
        recipe = "bob-battery-mk4-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-5",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk5-equipment.png",
      icon_size = 64,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
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
        recipe = "bob-battery-mk5-equipment",
      },
    },
  },

  {
    type = "technology",
    name = "bob-battery-equipment-6",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/battery-mk6-equipment.png",
      icon_size = 64,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
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
        recipe = "bob-battery-mk6-equipment",
      },
    },
  },
})

data.raw["technology"]["fission-reactor-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-1.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
bobmods.lib.tech.remove_science_pack("fission-reactor-equipment", "utility-science-pack")
bobmods.lib.tech.remove_prerequisite("fission-reactor-equipment", "utility-science-pack")
bobmods.lib.tech.add_science_pack("fission-reactor-equipment", "production-science-pack", 1)
bobmods.lib.tech.add_prerequisite("fission-reactor-equipment", "production-science-pack")

data:extend({
  {
    type = "technology",
    name = "bob-fission-reactor-equipment-2",
    localised_name = { "", { "technology-name.fission-reactor-equipment" }, " 2" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-2.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "fission-reactor-equipment",
      "low-density-structure",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-fission-reactor-equipment-2",
      },
    },
    unit = {
      count = 250,
      time = 45,
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
    name = "bob-fission-reactor-equipment-3",
    localised_name = { "", { "technology-name.fission-reactor-equipment" }, " 3" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-3.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-fission-reactor-equipment-2",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-fission-reactor-equipment-3",
      },
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-fission-reactor-equipment-4",
    localised_name = { "", { "technology-name.fission-reactor-equipment" }, " 4" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-4.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-fission-reactor-equipment-3",
      "space-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-fission-reactor-equipment-4",
      },
    },
    unit = {
      count = 350,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
    },
  },
})

data.raw["technology"]["night-vision-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/night-vision-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")

data:extend({
  {
    type = "technology",
    name = "bob-night-vision-equipment-2",
    localised_name = { "", { "technology-name.night-vision-equipment" }, " 2" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/night-vision-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "chemical-science-pack",
      "night-vision-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-night-vision-equipment-2",
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
    name = "bob-night-vision-equipment-3",
    localised_name = { "", { "technology-name.night-vision-equipment" }, " 3" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/night-vision-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "processing-unit",
      "bob-night-vision-equipment-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-night-vision-equipment-3",
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

data.raw.technology["solar-panel-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/solar-panel-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")

data:extend({
  {
    type = "technology",
    name = "bob-solar-panel-equipment-2",
    localised_name = { "", { "technology-name.solar-panel-equipment" }, " 2" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "chemical-science-pack",
      "solar-panel-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-solar-panel-equipment-2",
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
    name = "bob-solar-panel-equipment-3",
    localised_name = { "", { "technology-name.solar-panel-equipment" }, " 3" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-solar-panel-equipment-2",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-solar-panel-equipment-3",
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

if data.raw.item["bob-alien-artifact"] then
  data:extend({
    {
      type = "technology",
      name = "bob-solar-panel-equipment-4",
      localised_name = { "", { "technology-name.solar-panel-equipment" }, " 4" },
      icons = bobmods.lib.tech.technology_icon_constant({
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        icon_size = 256,
      }, "__boblibrary__/graphics/constants/constant-equipment.png"),
      prerequisites = {
        "bob-solar-panel-equipment-3",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-solar-panel-equipment-4",
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
  if data.raw.item["bob-alien-orange-alloy"] and data.raw.fluid["bob-alien-acid"] then
    data:extend({
      {
        type = "technology",
        name = "bob-solar-panel-equipment-5",
        localised_name = { "", { "technology-name.solar-panel-equipment" }, " 5" },
        icons = bobmods.lib.tech.technology_icon_constant({
          icon = "__base__/graphics/technology/solar-panel-equipment.png",
          icon_size = 256,
        }, "__boblibrary__/graphics/constants/constant-equipment.png"),
        prerequisites = {
          "bob-solar-panel-equipment-4",
          "bob-alien-orange-research",
          "bob-alien-purple-research",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-solar-panel-equipment-5",
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

data.raw["technology"]["personal-laser-defense-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png",
  icon_size = 128,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
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
    name = "bob-personal-laser-defense-equipment-2",
    localised_name = { "", { "technology-name.personal-laser-defense-equipment" }, " 2" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "military-3",
      "personal-laser-defense-equipment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-laser-defense-equipment-2",
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
    name = "bob-personal-laser-defense-equipment-3",
    localised_name = { "", { "technology-name.personal-laser-defense-equipment" }, " 3" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-personal-laser-defense-equipment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-laser-defense-equipment-3",
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
    name = "bob-personal-laser-defense-equipment-4",
    localised_name = { "", { "technology-name.personal-laser-defense-equipment" }, " 4" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-personal-laser-defense-equipment-3",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-laser-defense-equipment-4",
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
    name = "bob-personal-laser-defense-equipment-5",
    localised_name = { "", { "technology-name.personal-laser-defense-equipment" }, " 5" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-personal-laser-defense-equipment-4",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-laser-defense-equipment-5",
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
    name = "bob-personal-laser-defense-equipment-6",
    localised_name = { "", { "technology-name.personal-laser-defense-equipment" }, " 6" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-personal-laser-defense-equipment-5",
      "speed-module-3",
      "efficiency-module-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-laser-defense-equipment-6",
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
data.raw.technology["exoskeleton-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/exoskeleton-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")

data:extend({
  {
    type = "technology",
    name = "bob-exoskeleton-equipment-2",
    localised_name = { "", { "technology-name.exoskeleton-equipment" }, " 2" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/exoskeleton-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "exoskeleton-equipment",
      "processing-unit",
      "speed-module-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-exoskeleton-equipment-2",
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
    name = "bob-exoskeleton-equipment-3",
    localised_name = { "", { "technology-name.exoskeleton-equipment" }, " 3" },
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/technology/exoskeleton-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    prerequisites = {
      "bob-exoskeleton-equipment-2",
      "speed-module-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-exoskeleton-equipment-3",
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
