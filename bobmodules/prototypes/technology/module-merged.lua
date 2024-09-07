if
  settings.startup["bobmods-modules-enablegreenmodules"].value == true
  or settings.startup["bobmods-modules-enablerawspeedmodules"].value == true
  or settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true
  or settings.startup["bobmods-modules-enablegodmodules"].value == true
then
  data:extend({
    {
      type = "technology",
      name = "module-merging",
      icon = "__base__/graphics/technology/module.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {},
      prerequisites = { "modules" },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-m-a",
    },
  })
end

if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "raw-speed-module-1",
      icon = "__bobmodules__/graphics/icons/cyan-module-1.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-1",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-1-combine",
        },
      },
      prerequisites = { "module-merging", "speed-module", "effectivity-module" },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-m-a",
    },
    {
      type = "technology",
      name = "raw-speed-module-2",
      icon = "__bobmodules__/graphics/icons/cyan-module-2.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-2",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-2-combine",
        },
      },
      prerequisites = { "raw-speed-module-1", "speed-module-2", "effectivity-module-2" },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-m-b",
    },
    {
      type = "technology",
      name = "raw-speed-module-3",
      icon = "__bobmodules__/graphics/icons/cyan-module-3.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-3",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-3-combine",
        },
      },
      prerequisites = { "raw-speed-module-2", "speed-module-3", "effectivity-module-3" },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-m-c",
    },
    {
      type = "technology",
      name = "raw-speed-module-4",
      icon = "__bobmodules__/graphics/icons/cyan-module-4.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-4",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-4-combine",
        },
      },
      prerequisites = { "raw-speed-module-3", "speed-module-4", "effectivity-module-4" },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-m-d",
    },
    {
      type = "technology",
      name = "raw-speed-module-5",
      icon = "__bobmodules__/graphics/icons/cyan-module-5.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-5",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-5-combine",
        },
      },
      prerequisites = { "raw-speed-module-4", "speed-module-5", "effectivity-module-5" },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-m-e",
    },
    {
      type = "technology",
      name = "raw-speed-module-6",
      icon = "__bobmodules__/graphics/icons/cyan-module-6.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-6",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-6-combine",
        },
      },
      prerequisites = { "raw-speed-module-5", "speed-module-6", "effectivity-module-6" },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-m-f",
    },
    {
      type = "technology",
      name = "raw-speed-module-7",
      icon = "__bobmodules__/graphics/icons/cyan-module-7.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-7",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-7-combine",
        },
      },
      prerequisites = { "raw-speed-module-6", "speed-module-7", "effectivity-module-7" },
      unit = {
        count = 350,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-m-g",
    },
    {
      type = "technology",
      name = "raw-speed-module-8",
      icon = "__bobmodules__/graphics/icons/cyan-module-8.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-8",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-speed-module-8-combine",
        },
      },
      prerequisites = { "raw-speed-module-7", "speed-module-8", "effectivity-module-8" },
      unit = {
        count = 400,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-m-h",
    },
  })
end
if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "green-module-1",
      icon = "__bobmodules__/graphics/icons/green-module-1.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-1",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-1-combine",
        },
      },
      prerequisites = { "module-merging", "effectivity-module", "pollution-clean-module-1" },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-o-a",
    },
    {
      type = "technology",
      name = "green-module-2",
      icon = "__bobmodules__/graphics/icons/green-module-2.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-2",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-2-combine",
        },
      },
      prerequisites = { "green-module-1", "effectivity-module-2", "pollution-clean-module-2" },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-o-b",
    },
    {
      type = "technology",
      name = "green-module-3",
      icon = "__bobmodules__/graphics/icons/green-module-3.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-3",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-3-combine",
        },
      },
      prerequisites = { "green-module-2", "effectivity-module-3", "pollution-clean-module-3" },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-o-c",
    },
    {
      type = "technology",
      name = "green-module-4",
      icon = "__bobmodules__/graphics/icons/green-module-4.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-4",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-4-combine",
        },
      },
      prerequisites = { "green-module-3", "effectivity-module-4", "pollution-clean-module-4" },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-o-d",
    },
    {
      type = "technology",
      name = "green-module-5",
      icon = "__bobmodules__/graphics/icons/green-module-5.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-5",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-5-combine",
        },
      },
      prerequisites = { "green-module-4", "effectivity-module-5", "pollution-clean-module-5" },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-o-e",
    },
    {
      type = "technology",
      name = "green-module-6",
      icon = "__bobmodules__/graphics/icons/green-module-6.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-6",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-6-combine",
        },
      },
      prerequisites = { "green-module-5", "effectivity-module-6", "pollution-clean-module-6" },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-o-f",
    },
    {
      type = "technology",
      name = "green-module-7",
      icon = "__bobmodules__/graphics/icons/green-module-7.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-7",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-7-combine",
        },
      },
      prerequisites = { "green-module-6", "effectivity-module-7", "pollution-clean-module-7" },
      unit = {
        count = 350,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-o-g",
    },
    {
      type = "technology",
      name = "green-module-8",
      icon = "__bobmodules__/graphics/icons/green-module-8.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "green-module-8",
        },
        {
          type = "unlock-recipe",
          recipe = "green-module-8-combine",
        },
      },
      prerequisites = { "green-module-7", "effectivity-module-8", "pollution-clean-module-8" },
      unit = {
        count = 400,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-o-h",
    },
  })
end

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "raw-productivity-module-1",
      icon = "__bobmodules__/graphics/icons/purple-module-1.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-1",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-1-combine",
        },
      },
      prerequisites = { "module-merging", "productivity-module", "effectivity-module", "pollution-clean-module-1" },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-q-a",
    },
    {
      type = "technology",
      name = "raw-productivity-module-2",
      icon = "__bobmodules__/graphics/icons/purple-module-2.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-2",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-2-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-1",
        "productivity-module-2",
        "effectivity-module-2",
        "pollution-clean-module-2",
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-q-b",
    },
    {
      type = "technology",
      name = "raw-productivity-module-3",
      icon = "__bobmodules__/graphics/icons/purple-module-3.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-3",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-3-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-2",
        "productivity-module-3",
        "effectivity-module-3",
        "pollution-clean-module-3",
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-q-c",
    },
    {
      type = "technology",
      name = "raw-productivity-module-4",
      icon = "__bobmodules__/graphics/icons/purple-module-4.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-4",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-4-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-3",
        "productivity-module-4",
        "effectivity-module-4",
        "pollution-clean-module-4",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-q-d",
    },
    {
      type = "technology",
      name = "raw-productivity-module-5",
      icon = "__bobmodules__/graphics/icons/purple-module-5.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-5",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-5-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-4",
        "productivity-module-5",
        "effectivity-module-5",
        "pollution-clean-module-5",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-q-e",
    },
    {
      type = "technology",
      name = "raw-productivity-module-6",
      icon = "__bobmodules__/graphics/icons/purple-module-6.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-6",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-6-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-5",
        "productivity-module-6",
        "effectivity-module-6",
        "pollution-clean-module-6",
      },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-q-f",
    },
    {
      type = "technology",
      name = "raw-productivity-module-7",
      icon = "__bobmodules__/graphics/icons/purple-module-7.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-7",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-7-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-6",
        "productivity-module-7",
        "effectivity-module-7",
        "pollution-clean-module-7",
      },
      unit = {
        count = 350,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-q-g",
    },
    {
      type = "technology",
      name = "raw-productivity-module-8",
      icon = "__bobmodules__/graphics/icons/purple-module-8.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-8",
        },
        {
          type = "unlock-recipe",
          recipe = "raw-productivity-module-8-combine",
        },
      },
      prerequisites = {
        "raw-productivity-module-7",
        "productivity-module-8",
        "effectivity-module-8",
        "pollution-clean-module-8",
      },
      unit = {
        count = 400,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-q-h",
    },
  })

  if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
    table.insert(data.raw.technology["raw-productivity-module-1"].prerequisites, "speed-module")
    table.insert(data.raw.technology["raw-productivity-module-2"].prerequisites, "speed-module-2")
    table.insert(data.raw.technology["raw-productivity-module-3"].prerequisites, "speed-module-3")
    table.insert(data.raw.technology["raw-productivity-module-4"].prerequisites, "speed-module-4")
    table.insert(data.raw.technology["raw-productivity-module-5"].prerequisites, "speed-module-5")
    table.insert(data.raw.technology["raw-productivity-module-6"].prerequisites, "speed-module-6")
    table.insert(data.raw.technology["raw-productivity-module-7"].prerequisites, "speed-module-7")
    table.insert(data.raw.technology["raw-productivity-module-8"].prerequisites, "speed-module-8")
  end
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "god-module-1",
      icon = "__bobmodules__/graphics/icons/god-module.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "god-module-1",
        },
      },
      prerequisites = {
        "module-merging",
        "speed-module-2",
        "productivity-module-2",
        "effectivity-module-2",
        "pollution-clean-module-2",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "i-s-a",
    },
    {
      type = "technology",
      name = "god-module-2",
      icon = "__bobmodules__/graphics/icons/god-module-1.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "god-module-2",
        },
      },
      prerequisites = {
        "god-module-1",
        "speed-module-4",
        "productivity-module-4",
        "effectivity-module-4",
        "pollution-clean-module-4",
      },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "i-s-b",
    },
    {
      type = "technology",
      name = "god-module-3",
      icon = "__bobmodules__/graphics/icons/god-module-2.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "god-module-3",
        },
      },
      prerequisites = {
        "god-module-2",
        "speed-module-6",
        "productivity-module-6",
        "effectivity-module-6",
        "pollution-clean-module-6",
      },
      unit = {
        count = 400,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-s-c",
    },
    {
      type = "technology",
      name = "god-module-4",
      icon = "__bobmodules__/graphics/icons/god-module-3.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "god-module-4",
        },
      },
      prerequisites = {
        "god-module-3",
        "speed-module-8",
        "productivity-module-8",
        "effectivity-module-8",
        "pollution-clean-module-8",
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-s-d",
    },
    {
      type = "technology",
      name = "god-module-5",
      icon = "__bobmodules__/graphics/icons/god-module-4.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "god-module-5",
        },
      },
      prerequisites = { "god-module-4" },
      unit = {
        count = 600,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 120,
      },
      order = "i-s-e",
    },
  })
end
