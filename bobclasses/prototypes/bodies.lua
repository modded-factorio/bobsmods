data:extend({
  {
    type = "item",
    name = "character",
    icon = "__bobclasses__/icons/character.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "bodies",
    order = "a[character]-1",
    place_result = "character",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-miner",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, 0 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-1-miner",
    place_result = "bob-character-miner",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-fighter",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, 0 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-1-fighter",
    place_result = "bob-character-fighter",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-builder",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, 0 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-1-builder",
    place_result = "bob-character-builder",
    stack_size = 10,
  },

  {
    type = "item",
    name = "bob-character-balanced-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2",
    place_result = "bob-character-balanced-2",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-miner-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2-miner",
    place_result = "bob-character-miner-2",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-fighter-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2-fighter",
    place_result = "bob-character-fighter-2",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-builder-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2-builder",
    place_result = "bob-character-builder-2",
    stack_size = 10,
  },

  {
    type = "item",
    name = "bob-character-engineer",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/engineer.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, 0 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2-engineer",
    place_result = "bob-character-engineer",
    stack_size = 10,
  },
  {
    type = "item",
    name = "bob-character-prospector",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/prospector.png",
        icon_size = 32,
        scale = 0.5,
        shift = { 8, 0 },
      },
    },
    subgroup = "bodies",
    order = "a[character]-2-prospector",
    place_result = "bob-character-prospector",
    stack_size = 10,
  },
})

data:extend({
  {
    type = "recipe",
    name = "character",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame", 1 },
      { "assembling-machine-2", 1 },
    },
    result = "character",
  },
  {
    type = "recipe",
    name = "bob-character-miner",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame", 1 },
      { "assembling-machine-2", 1 },
      { "electric-furnace", 1 },
    },
    result = "bob-character-miner",
  },
  {
    type = "recipe",
    name = "bob-character-fighter",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame", 1 },
      { "assembling-machine-2", 1 },
      { "exoskeleton-equipment", 1 },
    },
    result = "bob-character-fighter",
  },
  {
    type = "recipe",
    name = "bob-character-builder",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame", 1 },
      { "assembling-machine-3", 1 },
    },
    result = "bob-character-builder",
  },

  {
    type = "recipe",
    name = "bob-character-balanced-2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-2", 1 },
    },
    result = "bob-character-balanced-2",
  },
  {
    type = "recipe",
    name = "bob-character-miner-2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-2", 1 },
      { "electric-furnace", 1 },
    },
    result = "bob-character-miner-2",
  },
  {
    type = "recipe",
    name = "bob-character-fighter-2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-2", 1 },
      { "exoskeleton-equipment", 1 },
    },
    result = "bob-character-fighter-2",
  },
  {
    type = "recipe",
    name = "bob-character-builder-2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-3", 1 },
    },
    result = "bob-character-builder-2",
  },

  {
    type = "recipe",
    name = "bob-character-engineer",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-3", 1 },
      { "electric-furnace", 1 },
    },
    result = "bob-character-engineer",
  },
  {
    type = "recipe",
    name = "bob-character-prospector",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "player-frame-2", 1 },
      { "assembling-machine-2", 1 },
      { "electric-furnace", 1 },
      { "exoskeleton-equipment", 1 },
    },
    result = "bob-character-prospector",
  },
})

data:extend({
  {
    type = "technology",
    name = "bodies",
    icon = "__bobclasses__/icons/character.png",
    icon_size = 128,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "character",
      },
      {
        type = "unlock-recipe",
        recipe = "player-brain",
      },
      {
        type = "unlock-recipe",
        recipe = "player-head",
      },
      {
        type = "unlock-recipe",
        recipe = "player-boots",
      },
      {
        type = "unlock-recipe",
        recipe = "player-gloves",
      },
      {
        type = "unlock-recipe",
        recipe = "player-power-core",
      },
      {
        type = "unlock-recipe",
        recipe = "player-frame",
      },
    },
    prerequisites = {
      "robotics",
      "advanced-electronics-2",
      "automation-2",
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
    order = "bodies",
  },
  {
    type = "technology",
    name = "miner-body",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-miner",
      },
    },
    prerequisites = {
      "bodies",
      "advanced-material-processing-2",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-miner",
  },
  {
    type = "technology",
    name = "fighter-body",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-fighter",
      },
    },
    prerequisites = {
      "bodies",
      "exoskeleton-equipment",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-fighter",
  },
  {
    type = "technology",
    name = "builder-body",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-builder",
      },
    },
    prerequisites = {
      "bodies",
      "automation-3",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-builder",
  },

  {
    type = "technology",
    name = "bodies-2",
    icon = "__bobclasses__/icons/character.png",
    icon_size = 128,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-balanced-2",
      },
      {
        type = "unlock-recipe",
        recipe = "player-brain-2",
      },
      {
        type = "unlock-recipe",
        recipe = "player-head-2",
      },
      {
        type = "unlock-recipe",
        recipe = "player-boots-2",
      },
      {
        type = "unlock-recipe",
        recipe = "player-gloves-2",
      },
      {
        type = "unlock-recipe",
        recipe = "player-frame-2",
      },
    },
    prerequisites = {
      "bodies",
      "production-science-pack",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
    order = "bodies-2",
  },
  {
    type = "technology",
    name = "miner-body-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-miner-2",
      },
    },
    prerequisites = {
      "bodies-2",
      "miner-body",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-2-miner",
  },
  {
    type = "technology",
    name = "fighter-body-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-fighter-2",
      },
    },
    prerequisites = {
      "bodies-2",
      "fighter-body",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-2-fighter",
  },
  {
    type = "technology",
    name = "builder-body-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-builder-2",
      },
    },
    prerequisites = {
      "bodies-2",
      "builder-body",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-2-builder",
  },

  {
    type = "technology",
    name = "engineer-body",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/engineer.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-engineer",
      },
    },
    prerequisites = {
      "miner-body",
      "builder-body",
      "bodies-2",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-2-engineer",
  },
  {
    type = "technology",
    name = "prospector-body",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = { -20, 0 },
      },
      {
        icon = "__bobclasses__/icons/prospector.png",
        icon_size = 32,
        scale = 2,
        shift = { 32, 0 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-character-prospector",
      },
    },
    prerequisites = {
      "miner-body",
      "fighter-body",
      "bodies-2",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "bodies-2-prospector",
  },
})
