data.raw["technology"]["speed-module"].icon = "__bobmodules__/graphics/icons/speed-module-1.png"
data.raw["technology"]["speed-module"].icon_size = 32
data.raw["technology"]["speed-module"].icon_mipmaps = 0
data.raw["technology"]["speed-module-2"].icon = "__bobmodules__/graphics/icons/speed-module-2.png"
data.raw["technology"]["speed-module-2"].icon_size = 32
data.raw["technology"]["speed-module-2"].icon_mipmaps = 0
data.raw["technology"]["speed-module-3"].icon = "__bobmodules__/graphics/icons/speed-module-3.png"
data.raw["technology"]["speed-module-3"].icon_size = 32
data.raw["technology"]["speed-module-3"].icon_mipmaps = 0

data.raw["technology"]["speed-module"].unit = {count = 25, ingredients = {{"speed-processor", 1}}, time = 30}
data.raw["technology"]["speed-module-2"].unit = {count = 50, ingredients = {{"speed-processor", 1}}, time = 30}
data.raw["technology"]["speed-module-3"].unit = {count = 50, ingredients = {{"speed-processor", 2},{"module-circuit-board", 1}}, time = 60}

data.raw["technology"]["speed-module"].upgrade = false
data.raw["technology"]["speed-module-2"].upgrade = false
data.raw["technology"]["speed-module-3"].upgrade = false

data:extend(
{
  {
    type = "technology",
    name = "speed-module-4",
    icon = "__bobmodules__/graphics/icons/speed-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-4"
      }
    },
    prerequisites = {"speed-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"speed-processor", 4},
        {"module-circuit-board", 2},
      },
      time = 60
    },
    order = "i-c-d"
  },
  {
    type = "technology",
    name = "speed-module-5",
    icon = "__bobmodules__/graphics/icons/speed-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-5"
      }
    },
    prerequisites = {"speed-module-4"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"speed-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-c-e"
  },
  {
    type = "technology",
    name = "speed-module-6",
    icon = "__bobmodules__/graphics/icons/speed-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-6"
      }
    },
    prerequisites = {"speed-module-5"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-c-f"
  },
  {
    type = "technology",
    name = "speed-module-7",
    icon = "__bobmodules__/graphics/icons/speed-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-7"
      }
    },
    prerequisites = {"speed-module-6"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"speed-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-c-g"
  },
  {
    type = "technology",
    name = "speed-module-8",
    icon = "__bobmodules__/graphics/icons/speed-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-8"
      }
    },
    prerequisites = {"speed-module-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"speed-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-c-h"
  },
}
)


data.raw["technology"]["effectivity-module"].icon = "__bobmodules__/graphics/icons/yellow-module-1.png"
data.raw["technology"]["effectivity-module-2"].icon = "__bobmodules__/graphics/icons/yellow-module-2.png"
data.raw["technology"]["effectivity-module-3"].icon = "__bobmodules__/graphics/icons/yellow-module-3.png"

data.raw["technology"]["effectivity-module"].icon_size = 32
data.raw["technology"]["effectivity-module-2"].icon_size = 32
data.raw["technology"]["effectivity-module-3"].icon_size = 32

data.raw["technology"]["effectivity-module"].icon_mipmaps = 0
data.raw["technology"]["effectivity-module-2"].icon_mipmaps = 0
data.raw["technology"]["effectivity-module-3"].icon_mipmaps = 0

data.raw["technology"]["effectivity-module"].unit = {count = 25, ingredients = {{"effectivity-processor", 1}}, time = 30}
data.raw["technology"]["effectivity-module-2"].unit = {count = 50, ingredients = {{"effectivity-processor", 1}}, time = 30}
data.raw["technology"]["effectivity-module-3"].unit = {count = 50, ingredients = {{"effectivity-processor", 2},{"module-circuit-board", 1}}, time = 60}

data.raw["technology"]["effectivity-module"].upgrade = false
data.raw["technology"]["effectivity-module-2"].upgrade = false
data.raw["technology"]["effectivity-module-3"].upgrade = false

data:extend(
{
  {
    type = "technology",
    name = "effectivity-module-4",
    icon = "__bobmodules__/graphics/icons/yellow-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-4"
      }
    },
    prerequisites = {"effectivity-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
      },
      time = 60
    },
    order = "i-g-d"
  },
  {
    type = "technology",
    name = "effectivity-module-5",
    icon = "__bobmodules__/graphics/icons/yellow-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-5"
      }
    },
    prerequisites = {"effectivity-module-4"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-g-e"
  },
  {
    type = "technology",
    name = "effectivity-module-6",
    icon = "__bobmodules__/graphics/icons/yellow-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-6"
      }
    },
    prerequisites = {"effectivity-module-5"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-g-f"
  },
  {
    type = "technology",
    name = "effectivity-module-7",
    icon = "__bobmodules__/graphics/icons/yellow-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-7"
      }
    },
    prerequisites = {"effectivity-module-6"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-g-g"
  },
  {
    type = "technology",
    name = "effectivity-module-8",
    icon = "__bobmodules__/graphics/icons/yellow-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-8"
      }
    },
    prerequisites = {"effectivity-module-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-g-h"
  },
}
)


data.raw["technology"]["productivity-module"].icon = "__bobmodules__/graphics/icons/red-module-1.png"
data.raw["technology"]["productivity-module-2"].icon = "__bobmodules__/graphics/icons/red-module-2.png"
data.raw["technology"]["productivity-module-3"].icon = "__bobmodules__/graphics/icons/red-module-3.png"

data.raw["technology"]["productivity-module"].icon_size = 32
data.raw["technology"]["productivity-module-2"].icon_size = 32
data.raw["technology"]["productivity-module-3"].icon_size = 32

data.raw["technology"]["productivity-module"].icon_mipmaps = 0
data.raw["technology"]["productivity-module-2"].icon_mipmaps = 0
data.raw["technology"]["productivity-module-3"].icon_mipmaps = 0

data.raw["technology"]["productivity-module"].unit = {count = 25, ingredients = {{"productivity-processor", 1}}, time = 30}
data.raw["technology"]["productivity-module-2"].unit = {count = 50, ingredients = {{"productivity-processor", 1}}, time = 30}
data.raw["technology"]["productivity-module-3"].unit = {count = 50, ingredients = {{"productivity-processor", 2},{"module-circuit-board", 1}}, time = 60}

data.raw["technology"]["productivity-module"].upgrade = false
data.raw["technology"]["productivity-module-2"].upgrade = false
data.raw["technology"]["productivity-module-3"].upgrade = false

data:extend(
{
  {
    type = "technology",
    name = "productivity-module-4",
    icon = "__bobmodules__/graphics/icons/red-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4"
      }
    },
    prerequisites = {"productivity-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"productivity-processor", 4},
        {"module-circuit-board", 2},
      },
      time = 60
    },
    order = "i-e-d"
  },
  {
    type = "technology",
    name = "productivity-module-5",
    icon = "__bobmodules__/graphics/icons/red-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-5"
      }
    },
    prerequisites = {"productivity-module-4"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"productivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-e-e"
  },
  {
    type = "technology",
    name = "productivity-module-6",
    icon = "__bobmodules__/graphics/icons/red-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-6"
      }
    },
    prerequisites = {"productivity-module-5"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"productivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-e-f"
  },
  {
    type = "technology",
    name = "productivity-module-7",
    icon = "__bobmodules__/graphics/icons/red-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-7"
      }
    },
    prerequisites = {"productivity-module-6"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"productivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-e-g"
  },
  {
    type = "technology",
    name = "productivity-module-8",
    icon = "__bobmodules__/graphics/icons/red-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-8"
      }
    },
    prerequisites = {"productivity-module-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"productivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-e-h"
  },
}
)





data:extend(
{
  {
    type = "technology",
    name = "pollution-clean-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-1"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 25,
      ingredients = {
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    order = "i-i-a"
  },
  {
    type = "technology",
    name = "pollution-clean-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-2"
      }
    },
    prerequisites = {"pollution-clean-module-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    order = "i-i-b"
  },
  {
    type = "technology",
    name = "pollution-clean-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-3"
      }
    },
    prerequisites = {"pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    order = "i-i-c"
  },
  {
    type = "technology",
    name = "pollution-clean-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-4"
      }
    },
    prerequisites = {"pollution-clean-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
      },
      time = 60
    },
    order = "i-i-d"
  },
  {
    type = "technology",
    name = "pollution-clean-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-5"
      }
    },
    prerequisites = {"pollution-clean-module-4"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-i-e"
  },
  {
    type = "technology",
    name = "pollution-clean-module-6",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-6"
      }
    },
    prerequisites = {"pollution-clean-module-5"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-i-f"
  },
  {
    type = "technology",
    name = "pollution-clean-module-7",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-7"
      }
    },
    prerequisites = {"pollution-clean-module-6"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-i-g"
  },
  {
    type = "technology",
    name = "pollution-clean-module-8",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-8"
      }
    },
    prerequisites = {"pollution-clean-module-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-i-h"
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "pollution-create-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-1"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"pollution-create-processor", 1},
      },
      time = 30
    },
    order = "i-k-a"
  },
  {
    type = "technology",
    name = "pollution-create-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-2"
      }
    },
    prerequisites = {"pollution-create-module-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"pollution-create-processor", 1},
      },
      time = 30
    },
    order = "i-k-b"
  },
  {
    type = "technology",
    name = "pollution-create-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-3"
      }
    },
    prerequisites = {"pollution-create-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"pollution-create-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    order = "i-k-c"
  },
  {
    type = "technology",
    name = "pollution-create-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-4"
      }
    },
    prerequisites = {"pollution-create-module-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"pollution-create-processor", 4},
        {"module-circuit-board", 2},
      },
      time = 60
    },
    order = "i-k-d"
  },
  {
    type = "technology",
    name = "pollution-create-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-5"
      }
    },
    prerequisites = {"pollution-create-module-4"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"pollution-create-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-k-e"
  },
  {
    type = "technology",
    name = "pollution-create-module-6",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-6"
      }
    },
    prerequisites = {"pollution-create-module-5"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"pollution-create-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-k-f"
  },
  {
    type = "technology",
    name = "pollution-create-module-7",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-7"
      }
    },
    prerequisites = {"pollution-create-module-6"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"pollution-create-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-k-g"
  },
  {
    type = "technology",
    name = "pollution-create-module-8",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-8"
      }
    },
    prerequisites = {"pollution-create-module-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"pollution-create-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    order = "i-k-h"
  },
}
)




table.insert(data.raw.technology["speed-module-3"].effects,{type = "unlock-recipe", recipe = "speed-processor-2"})
table.insert(data.raw.technology["effectivity-module-3"].effects,{type = "unlock-recipe", recipe = "effectivity-processor-2"})
table.insert(data.raw.technology["productivity-module-3"].effects,{type = "unlock-recipe", recipe = "productivity-processor-2"})
table.insert(data.raw.technology["pollution-clean-module-3"].effects,{type = "unlock-recipe", recipe = "pollution-clean-processor-2"})
table.insert(data.raw.technology["pollution-create-module-3"].effects,{type = "unlock-recipe", recipe = "pollution-create-processor-2"})

table.insert(data.raw.technology["speed-module-6"].effects,{type = "unlock-recipe", recipe = "speed-processor-3"})
table.insert(data.raw.technology["effectivity-module-6"].effects,{type = "unlock-recipe", recipe = "effectivity-processor-3"})
table.insert(data.raw.technology["productivity-module-6"].effects,{type = "unlock-recipe", recipe = "productivity-processor-3"})
table.insert(data.raw.technology["pollution-clean-module-6"].effects,{type = "unlock-recipe", recipe = "pollution-clean-processor-3"})
table.insert(data.raw.technology["pollution-create-module-6"].effects,{type = "unlock-recipe", recipe = "pollution-create-processor-3"})


table.insert(data.raw.technology["speed-module-3"].prerequisites,"advanced-electronics-2")
table.insert(data.raw.technology["effectivity-module-3"].prerequisites,"advanced-electronics-2")
table.insert(data.raw.technology["productivity-module-3"].prerequisites,"advanced-electronics-2")
table.insert(data.raw.technology["pollution-clean-module-3"].prerequisites,"advanced-electronics-2")
table.insert(data.raw.technology["pollution-create-module-3"].prerequisites,"advanced-electronics-2")

if data.raw.technology["advanced-electronics-3"] then
  table.insert(data.raw.technology["speed-module-6"].prerequisites,"advanced-electronics-3")
  table.insert(data.raw.technology["effectivity-module-6"].prerequisites,"advanced-electronics-3")
  table.insert(data.raw.technology["productivity-module-6"].prerequisites,"advanced-electronics-3")
  table.insert(data.raw.technology["pollution-clean-module-6"].prerequisites,"advanced-electronics-3")
  table.insert(data.raw.technology["pollution-create-module-6"].prerequisites,"advanced-electronics-3")
end

