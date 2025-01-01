bobmods.lib.tech.remove_prerequisite("modules", "advanced-circuit")
bobmods.lib.tech.add_prerequisite("modules", "plastics")

data.raw["technology"]["speed-module"].icon = "__bobmodules__/graphics/icons/speed-module-1.png"
data.raw["technology"]["speed-module"].icon_size = 32
data.raw["technology"]["speed-module-2"].icon = "__bobmodules__/graphics/icons/speed-module-2.png"
data.raw["technology"]["speed-module-2"].icon_size = 32
data.raw["technology"]["speed-module-3"].icon = "__bobmodules__/graphics/icons/speed-module-3.png"
data.raw["technology"]["speed-module-3"].icon_size = 32

bobmods.lib.tech.remove_prerequisite("speed-module-2", "processing-unit")
bobmods.lib.tech.add_prerequisite("speed-module-2", "advanced-circuit")
bobmods.lib.tech.add_prerequisite("speed-module-2", "chemical-science-pack")
bobmods.lib.tech.set_science_pack_count("speed-module-2", 100)
bobmods.lib.tech.set_science_pack_count("speed-module-3", 150)

data.raw["technology"]["speed-module"].upgrade = false
data.raw["technology"]["speed-module-2"].upgrade = false
data.raw["technology"]["speed-module-3"].upgrade = false

data:extend({
  {
    type = "technology",
    name = "bob-speed-module-4",
    localised_name = { "", { "technology-name.speed-module" }, " 4" },
    localised_description = { "technology-description.speed-module" },
    icon = "__bobmodules__/graphics/icons/speed-module-4.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-speed-module-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-speed-processor-3",
      },
    },
    prerequisites = {
      "speed-module-3",
      "utility-science-pack",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-speed-module-5",
    localised_name = { "", { "technology-name.speed-module" }, " 5" },
    localised_description = { "technology-description.speed-module" },
    icon = "__bobmodules__/graphics/icons/speed-module-5.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-speed-module-5",
      },
    },
    prerequisites = {
      "bob-speed-module-4",
      "space-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60,
    },
  },
})

data.raw["technology"]["efficiency-module"].icon = "__bobmodules__/graphics/icons/yellow-module-1.png"
data.raw["technology"]["efficiency-module-2"].icon = "__bobmodules__/graphics/icons/yellow-module-2.png"
data.raw["technology"]["efficiency-module-3"].icon = "__bobmodules__/graphics/icons/yellow-module-3.png"

data.raw["technology"]["efficiency-module"].icon_size = 32
data.raw["technology"]["efficiency-module-2"].icon_size = 32
data.raw["technology"]["efficiency-module-3"].icon_size = 32

bobmods.lib.tech.remove_prerequisite("efficiency-module-2", "processing-unit")
bobmods.lib.tech.add_prerequisite("efficiency-module-2", "advanced-circuit")
bobmods.lib.tech.add_prerequisite("efficiency-module-2", "chemical-science-pack")
bobmods.lib.tech.set_science_pack_count("efficiency-module-2", 100)
bobmods.lib.tech.set_science_pack_count("efficiency-module-3", 150)

data.raw["technology"]["efficiency-module"].upgrade = false
data.raw["technology"]["efficiency-module-2"].upgrade = false
data.raw["technology"]["efficiency-module-3"].upgrade = false

data:extend({
  {
    type = "technology",
    name = "bob-efficiency-module-4",
    localised_name = { "", { "technology-name.efficiency-module" }, " 4" },
    localised_description = { "technology-description.efficiency-module" },
    icon = "__bobmodules__/graphics/icons/yellow-module-4.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-efficiency-module-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-efficiency-processor-3",
      },
    },
    prerequisites = {
      "efficiency-module-3",
      "utility-science-pack",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-efficiency-module-5",
    localised_name = { "", { "technology-name.efficiency-module" }, " 5" },
    localised_description = { "technology-description.efficiency-module" },
    icon = "__bobmodules__/graphics/icons/yellow-module-5.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-efficiency-module-5",
      },
    },
    prerequisites = {
      "bob-efficiency-module-4",
      "space-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60,
    },
  },
})

data.raw["technology"]["productivity-module"].icon = "__bobmodules__/graphics/icons/red-module-1.png"
data.raw["technology"]["productivity-module-2"].icon = "__bobmodules__/graphics/icons/red-module-2.png"
data.raw["technology"]["productivity-module-3"].icon = "__bobmodules__/graphics/icons/red-module-3.png"

data.raw["technology"]["productivity-module"].icon_size = 32
data.raw["technology"]["productivity-module-2"].icon_size = 32
data.raw["technology"]["productivity-module-3"].icon_size = 32

bobmods.lib.tech.remove_prerequisite("productivity-module-2", "processing-unit")
bobmods.lib.tech.add_prerequisite("productivity-module-2", "advanced-circuit")
bobmods.lib.tech.add_prerequisite("productivity-module-2", "chemical-science-pack")
bobmods.lib.tech.set_science_pack_count("productivity-module-2", 100)
bobmods.lib.tech.set_science_pack_count("productivity-module-3", 150)

data.raw["technology"]["productivity-module"].upgrade = false
data.raw["technology"]["productivity-module-2"].upgrade = false
data.raw["technology"]["productivity-module-3"].upgrade = false

data:extend({
  {
    type = "technology",
    name = "bob-productivity-module-4",
    localised_name = { "", { "technology-name.productivity-module" }, " 4" },
    localised_description = { "technology-description.productivity-module" },
    icon = "__bobmodules__/graphics/icons/red-module-4.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-productivity-module-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-productivity-processor-3",
      },
    },
    prerequisites = {
      "productivity-module-3",
      "utility-science-pack",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-productivity-module-5",
    localised_name = { "", { "technology-name.productivity-module" }, " 5" },
    localised_description = { "technology-description.productivity-module" },
    icon = "__bobmodules__/graphics/icons/red-module-5.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-productivity-module-5",
      },
    },
    prerequisites = {
      "bob-productivity-module-4",
      "space-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60,
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-pollution-clean-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-1.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-module-1",
      },
    },
    prerequisites = { "modules" },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-clean-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-2.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-module-2",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-processor",
      },
    },
    prerequisites = {
      "bob-pollution-clean-module-1",
      "chemical-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-clean-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-3.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-module-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-processor-2",
      },
    },
    prerequisites = {
      "bob-pollution-clean-module-2",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-clean-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-4.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-module-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-processor-3",
      },
    },
    prerequisites = {
      "bob-pollution-clean-module-3",
      "utility-science-pack",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-clean-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-5.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-clean-module-5",
      },
    },
    prerequisites = {
      "bob-pollution-clean-module-4",
      "space-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60,
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-pollution-create-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-1.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-module-1",
      },
    },
    prerequisites = { "modules" },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-create-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-2.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-module-2",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-processor",
      },
    },
    prerequisites = {
      "bob-pollution-create-module-1",
      "chemical-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-create-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-3.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-module-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-processor-2",
      },
    },
    prerequisites = {
      "bob-pollution-create-module-2",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-create-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-4.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-module-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-processor-3",
      },
    },
    prerequisites = {
      "bob-pollution-create-module-3",
      "utility-science-pack",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
  {
    type = "technology",
    name = "bob-pollution-create-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-5.png",
    icon_size = 32,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-pollution-create-module-5",
      },
    },
    prerequisites = {
      "bob-pollution-create-module-4",
      "space-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 60,
    },
  },
})

bobmods.lib.tech.add_prerequisite("speed-module-3", "processing-unit")
bobmods.lib.tech.add_prerequisite("efficiency-module-3", "processing-unit")
bobmods.lib.tech.add_prerequisite("productivity-module-3", "processing-unit")

if data.raw.technology["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("bob-speed-module-4", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-efficiency-module-4", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-productivity-module-4", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-pollution-clean-module-4", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-pollution-create-module-4", "advanced-processing-unit")
end

if mods["quality"] then
  data.raw.technology["quality-module"].icon = "__bobmodules__/graphics/icons/quality-module-1.png"
  data.raw.technology["quality-module-2"].icon = "__bobmodules__/graphics/icons/quality-module-2.png"
  data.raw.technology["quality-module-3"].icon = "__bobmodules__/graphics/icons/quality-module-3.png"

  data.raw.technology["quality-module"].icon_size = 64
  data.raw.technology["quality-module-2"].icon_size = 64
  data.raw.technology["quality-module-3"].icon_size = 64

  bobmods.lib.tech.remove_prerequisite("quality-module-2", "processing-unit")
  bobmods.lib.tech.add_prerequisite("quality-module-2", "advanced-circuit")
  bobmods.lib.tech.add_prerequisite("quality-module-2", "chemical-science-pack")
  bobmods.lib.tech.set_science_pack_count("quality-module", 50)
  bobmods.lib.tech.set_science_pack_count("quality-module-2", 100)
  bobmods.lib.tech.set_science_pack_count("quality-module-3", 150)

  data.raw.technology["quality-module"].upgrade = false
  data.raw.technology["quality-module-2"].upgrade = false
  data.raw.technology["quality-module-3"].upgrade = false

  data:extend({
    {
      type = "technology",
      name = "bob-quality-module-4",
      localised_name = { "", { "technology-name.quality-module" }, " 4" },
      localised_description = { "technology-description.quality-module" },
      icon = "__bobmodules__/graphics/icons/quality-module-4.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-quality-module-4",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-quality-processor-3",
        },
      },
      prerequisites = {
        "quality-module-3",
        "utility-science-pack",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
    },
    {
      type = "technology",
      name = "bob-quality-module-5",
      localised_name = { "", { "technology-name.quality-module" }, " 5" },
      localised_description = { "technology-description.quality-module" },
      icon = "__bobmodules__/graphics/icons/quality-module-5.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-quality-module-5",
        },
      },
      prerequisites = {
        "bob-quality-module-4",
        "space-science-pack",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 60,
      },
    },
  })

  bobmods.lib.tech.add_prerequisite("quality-module-3", "processing-unit")

  if data.raw.technology["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("bob-quality-module-4", "advanced-processing-unit")
  end
end
