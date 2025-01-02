data:extend({
  {
    type = "technology",
    name = "electrolysis-1",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    icon_size = 128,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-electrolyser",
      },
      {
        type = "unlock-recipe",
        recipe = "water-electrolysis",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-small-storage-tank",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-small-inline-storage-tank",
      },
    },
    unit = {
      count = 20,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "d-b-a1",
  },

  {
    type = "technology",
    name = "electrolysis-2",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    icon_size = 128,
    prerequisites = {
      "chemical-processing-1",
      "fluid-handling",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "salt-water-electrolysis",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 20,
    },
    order = "d-b-a2",
  },

  {
    type = "technology",
    name = "chemical-processing-1",
    icon = "__bobplates__/graphics/icons/technology/chemical-processing.png",
    icon_size = 128,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-stone-chemical-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-salt",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-carbon",
      },
    },
    unit = {
      count = 25,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "d-b-b1",
  },

  {
    type = "technology",
    name = "chemical-processing-2",
    icon = "__bobplates__/graphics/icons/technology/chemical-processing.png",
    icon_size = 128,
    prerequisites = {
      "electrolysis-2",
      "chemical-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-hydrogen-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-calcium-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-ferric-chloride-solution",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-hydrogen",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b2",
  },

  {
    type = "technology",
    name = "bob-steel-chemical-furnace",
    icons = {
      {
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        icon_size = 256,
      },
      {
        icon = "__bobplates__/graphics/icons/technology/chemistry.png",
        icon_size = 64,
        scale = 1,
        shift = { -48, -48 },
      },
    },
    prerequisites = {
      "chemical-processing-1",
      "advanced-material-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-steel-chemical-furnace",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b3",
  },

  {
    type = "technology",
    name = "bob-electric-chemical-furnace",
    icons = {
      {
        icon = "__base__/graphics/technology/advanced-material-processing-2.png",
        icon_size = 256,
      },
      {
        icon = "__bobplates__/graphics/icons/technology/chemistry.png",
        icon_size = 64,
        scale = 1,
        shift = { -32, -32 },
      },
    },
    prerequisites = {
      "chemical-processing-1",
      "advanced-material-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-electric-chemical-furnace",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b4",
  },

  {
    type = "technology",
    name = "alloy-processing",
    icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
    icon_size = 128,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-stone-mixing-furnace",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-bronze-alloy",
      },
    },
    unit = {
      count = 25,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-c-a-a",
  },

  {
    type = "technology",
    name = "bob-steel-mixing-furnace",
    icons = {
      {
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        icon_size = 256,
      },
      {
        icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
        icon_size = 128,
        scale = 0.5,
        shift = { -48, -48 },
      },
    },
    prerequisites = {
      "alloy-processing",
      "advanced-material-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-steel-mixing-furnace",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-c-a-b",
  },

  {
    type = "technology",
    name = "bob-electric-mixing-furnace",
    icons = {
      {
        icon = "__base__/graphics/technology/advanced-material-processing-2.png",
        icon_size = 256,
      },
      {
        icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
        icon_size = 128,
        scale = 0.5,
        shift = { -32, -32 },
      },
    },
    prerequisites = {
      "alloy-processing",
      "advanced-material-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-electric-mixing-furnace",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-c-a-c",
  },

  {
    type = "technology",
    name = "nitrogen-processing",
    icon = "__bobplates__/graphics/icons/technology/nitrogen-processing.png",
    icon_size = 128,
    prerequisites = {
      "chemical-processing-2",
      "air-compressor-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-nitrogen",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-nitrogen-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-nitric-acid",
      },
    },
    unit = {
      count = 35,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b5",
  },

  {
    type = "technology",
    name = "ceramics",
    icon = "__bobplates__/graphics/icons/technology/ceramics.png",
    icon_size = 64,
    prerequisites = {
      "nitrogen-processing",
      "silicon-processing",
      "chemical-science-pack",
      "lubricant",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-silicon-nitride",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-ceramic-bearing-ball",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-ceramic-bearing",
      },
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b6",
  },

  {
    type = "technology",
    name = "air-compressor-1",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-air-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-liquid-air",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 20,
    },
    order = "d-c-a1",
  },

  {
    type = "technology",
    name = "air-compressor-2",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    prerequisites = {
      "air-compressor-1",
      "steel-processing",
      "alloy-processing",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-air-pump-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-c-a2",
  },

  {
    type = "technology",
    name = "air-compressor-3",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    prerequisites = {
      "air-compressor-2",
      "zinc-processing",
      "titanium-processing",
      "processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-air-pump-3",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 45,
    },
    order = "d-c-a3",
  },

  {
    type = "technology",
    name = "air-compressor-4",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    prerequisites = {
      "air-compressor-3",
      "nitinol-processing",
      "electric-engine",
      "bob-advanced-processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-air-pump-4",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
    order = "d-c-a4",
  },

  {
    type = "technology",
    name = "water-bore-1",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-water-pump",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 20,
    },
    order = "d-c-b1",
  },

  {
    type = "technology",
    name = "water-bore-2",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    prerequisites = {
      "water-bore-1",
      "steel-processing",
      "alloy-processing",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-water-pump-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-c-b2",
  },

  {
    type = "technology",
    name = "water-bore-3",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    prerequisites = {
      "water-bore-2",
      "zinc-processing",
      "titanium-processing",
      "processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-water-pump-3",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 45,
    },
    order = "d-c-b3",
  },

  {
    type = "technology",
    name = "water-bore-4",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    prerequisites = {
      "water-bore-3",
      "nitinol-processing",
      "electric-engine",
      "bob-advanced-processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-water-pump-4",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
    order = "d-c-b4",
  },

  {
    type = "technology",
    name = "gas-canisters",
    icon = "__bobplates__/graphics/icons/technology/gas-canister.png",
    icon_size = 64,
    prerequisites = {
      "air-compressor-1",
      "logistic-science-pack",
      "steel-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-gas-canister",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-a1",
  },

  {
    type = "technology",
    name = "fluid-barrel-processing",
    icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
    icon_size = 64,
    prerequisites = {
      "water-bore-1",
      "logistic-science-pack",
      "steel-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "barrel",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-a1",
  },

  {
    type = "technology",
    name = "fluid-canister-processing",
    icon = "__bobplates__/graphics/icons/technology/fluid-canister.png",
    icon_size = 720,
    prerequisites = {
      "water-bore-1",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-empty-canister",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-a1",
  },

  {
    type = "technology",
    name = "grinding",
    icon = "__bobplates__/graphics/icons/technology/grinding.png",
    icon_size = 64,
    prerequisites = {
      "chemical-processing-1",
      "silicon-processing",
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-silicon-carbide",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-grinding-wheel",
      },
    },
    order = "b-c-b",
  },

  {
    type = "technology",
    name = "polishing",
    icon = "__bobplates__/graphics/icons/technology/polishing.png",
    icon_size = 64,
    prerequisites = {
      "oil-processing",
      "aluminium-processing",
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-polishing-compound",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-polishing-wheel",
      },
    },
    order = "b-c-c",
  },

  {
    type = "technology",
    name = "gem-processing-1",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    icon_size = 64,
    prerequisites = {
      "automation",
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-ruby-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-sapphire-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-emerald-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-amethyst-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-topaz-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-diamond-3",
      },
    },
    order = "c-b-i1",
  },

  {
    type = "technology",
    name = "gem-processing-2",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    icon_size = 64,
    prerequisites = {
      "gem-processing-1",
      "grinding",
      "automation-2",
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-ruby-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-sapphire-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-emerald-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-amethyst-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-topaz-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-diamond-4",
      },
    },
    order = "c-b-i2",
  },

  {
    type = "technology",
    name = "gem-processing-3",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    icon_size = 64,
    prerequisites = {
      "gem-processing-2",
      "polishing",
      --      "chemical-science-pack", --removed for balance, to allow lowest tier laser weapons to not be locked behind chemical science.
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        --        {"chemical-science-pack", 1}, --removed for balance, to allow lowest tier laser weapons to not be locked behind chemical science.
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-ruby-5",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-sapphire-5",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-emerald-5",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-amethyst-5",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-topaz-5",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-diamond-5",
      },
    },
    order = "c-b-i3",
  },

  {
    type = "technology",
    name = "void-fluid",
    icon = "__bobplates__/graphics/icons/technology/void.png",
    icon_size = 128,
    prerequisites = {
      "air-compressor-1",
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 10,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-void-pump",
      },
    },
    order = "void-fluid",
  },

  {
    type = "technology",
    name = "bob-advanced-processing-unit",
    icon = "__bobplates__/graphics/icons/technology/advanced-electronics-3.png",
    icon_size = 128,
    prerequisites = {
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-advanced-processing-unit",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "a-d-d",
  },

  {
    type = "technology",
    name = "battery-2",
    icon = "__base__/graphics/technology/battery.png",
    icon_size = 256,
    prerequisites = {
      "battery",
      "lithium-processing",
      "cobalt-processing",
      "chemical-science-pack",
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-lithium-cobalt-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-lithium-ion-battery",
      },
    },
    order = "b-c-a",
  },

  {
    type = "technology",
    name = "battery-3",
    icon = "__base__/graphics/technology/battery.png",
    icon_size = 256,
    prerequisites = {
      "battery-2",
      "nitrogen-processing",
      "electrolysis-2",
      "zinc-processing",
      "production-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-silver-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-silver-nitrate",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-silver-zinc-battery",
      },
    },
    order = "b-c-b",
  },

  {
    type = "technology",
    name = "bob-wood-processing",
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-resin-wood",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-rubber",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-a-a",
  },
})
