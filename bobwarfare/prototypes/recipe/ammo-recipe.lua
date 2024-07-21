data:extend({
  {
    type = "recipe",
    name = "bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { "bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "ap-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "ap-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "ap-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "he-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "he-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "he-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "flame-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "flame-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "flame-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "acid-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "acid-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "acid-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "poison-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "poison-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "poison-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "electric-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "electric-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "electric-bullet-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "uranium-rounds-magazine",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "uranium-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "uranium-rounds-magazine", amount = 1 }},
  },

  {
    type = "recipe",
    name = "better-shotgun-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "shot", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "better-shotgun-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-ap-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "steel-plate", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-ap-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-electric-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "copper-plate", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-electric-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-explosive-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "explosives", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-explosive-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-flame-shell",
    category = "chemistry",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { type = "fluid", name = "light-oil", amount = 5 },
      { type = "fluid", name = "heavy-oil", amount = 5 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-flame-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-acid-shell",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-acid-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-poison-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "coal", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-poison-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "shotgun-uranium-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "shotgun-shell-casing", 1 },
      { "uranium-238", 1 },
      { "cordite", 1 },
    },
    results = {{ type = "item", name = "shotgun-uranium-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-case", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-ruby",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-ruby", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-sapphire",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-ruby", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-sapphire", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-emerald",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-sapphire", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-emerald", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-amethyst",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-emerald", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-amethyst", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-topaz",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-amethyst", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-topaz", amount = 1 }},
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-diamond",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { "laser-rifle-battery-topaz", 1 },
      { "battery", 4 },
    },
    results = {{ type = "item", name = "laser-rifle-battery-diamond", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-piercing-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "piercing-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-piercing-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-electric-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "electric-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-electric-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-explosive-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "explosive-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-explosive-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-acid-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "acid-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-acid-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-flame-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "flame-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-flame-rocket", amount = 1 }},
  },

  {
    type = "recipe",
    name = "bob-poison-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "poison-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-poison-rocket", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "scatter-cannon-shell",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "steel-plate", 2 },
      { "plastic-bar", 2 },
      { "explosives", 1 },
      { "shot", 5 },
    },
    results = {{ type = "item", name = "scatter-cannon-shell", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "fire-capsule",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "steel-plate", 3 },
      { "electronic-circuit", 3 },
      { type = "fluid", name = "light-oil", amount = 100 },
    },
    results = {{ type = "item", name = "fire-capsule", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "poison-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "steel-plate", 6 },
      { "plastic-bar", 6 },
      { "coal", 15 },
      { "explosives", 3 },
    },
    results = {{ type = "item", name = "poison-artillery-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "fire-artillery-shell",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "steel-plate", 6 },
      { "plastic-bar", 6 },
      { "explosives", 3 },
      { type = "fluid", name = "light-oil", amount = 150 },
    },
    results = {{ type = "item", name = "fire-artillery-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "explosive-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "steel-plate", 6 },
      { "plastic-bar", 6 },
      { "explosives", 18 },
    },
    results = {{ type = "item", name = "explosive-artillery-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "distractor-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "steel-plate", 6 },
      { "plastic-bar", 6 },
      { "explosives", 3 },
      { "distractor-capsule", 5 },
    },
    results = {{ type = "item", name = "distractor-artillery-shell", amount = 1 }},
  },

  {
    type = "recipe",
    name = "atomic-artillery-shell",
    enabled = false,
    energy_required = 50,
    ingredients = {
      { "steel-plate", 6 },
      { "plastic-bar", 6 },
      { "explosives", 15 },
      { "uranium-235", 30 },
    },
    results = {{ type = "item", name = "atomic-artillery-shell", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "plasma-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { "plasma-bullet", 5 },
      { "magazine", 1 },
    },
    results = {{ type = "item", name = "plasma-bullet-magazine", amount = 1 }},
  },
  {
    type = "recipe",
    name = "shotgun-plasma-shell",
    subgroup = "bob-ammo",
    energy_required = 0.6,
    enabled = false,
    ingredients = {},
    results = {{ type = "item", name = "shotgun-plasma-shell", amount = 6 }},
  },

  {
    type = "recipe",
    name = "bob-plasma-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "rocket-body", 1 },
      { "plasma-rocket-warhead", 1 },
    },
    results = {{ type = "item", name = "bob-plasma-rocket", amount = 1 }},
  },
})
