if mods["bobplates"] then
  data.raw.recipe["firearm-magazine"].ingredients = {
    { type = "item", name = "iron-plate", amount = 1 },
    { type = "item", name = "coal", amount = 1 },
    { type = "item", name = "bob-lead-plate", amount = 1 },
  }
end

data:extend({
  {
    type = "recipe",
    name = "bob-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "bob-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-ap-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-ap-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-ap-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-he-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-he-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-he-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-flame-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-flame-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-flame-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-acid-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-acid-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-acid-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-poison-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-poison-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-poison-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-electric-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-electric-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-electric-bullet-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "uranium-rounds-magazine",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-uranium-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "uranium-rounds-magazine", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-better-shotgun-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "bob-shot", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-better-shotgun-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-ap-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-ap-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-electric-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-electric-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-explosive-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-explosive-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-flame-shell",
    category = "chemistry",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 5 },
      { type = "fluid", name = "heavy-oil", amount = 5 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-flame-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-acid-shell",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-acid-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-poison-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "coal", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-poison-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-uranium-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-shotgun-shell-casing", amount = 1 },
      { type = "item", name = "uranium-238", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-uranium-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-case", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-ruby",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-ruby", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-sapphire",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-ruby", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-sapphire", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-emerald",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-sapphire", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-emerald", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-amethyst",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-emerald", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-amethyst", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-topaz",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-amethyst", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-topaz", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-diamond",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-laser-rifle-battery-topaz", amount = 1 },
      { type = "item", name = "battery", amount = 4 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-diamond", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-piercing-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-piercing-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-piercing-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-electric-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-electric-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-electric-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-explosive-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-explosive-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-explosive-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-acid-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-acid-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-acid-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-flame-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-flame-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-flame-rocket", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-poison-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-poison-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-poison-rocket", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-scatter-cannon-shell",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 2 },
      { type = "item", name = "explosives", amount = 1 },
      { type = "item", name = "bob-shot", amount = 5 },
    },
    results = { { type = "item", name = "bob-scatter-cannon-shell", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-fire-capsule",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 3 },
      { type = "item", name = "electronic-circuit", amount = 3 },
      { type = "fluid", name = "light-oil", amount = 100 },
    },
    results = { { type = "item", name = "bob-fire-capsule", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-poison-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "plastic-bar", amount = 6 },
      { type = "item", name = "coal", amount = 15 },
      { type = "item", name = "explosives", amount = 3 },
    },
    results = { { type = "item", name = "bob-poison-artillery-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-fire-artillery-shell",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "plastic-bar", amount = 6 },
      { type = "item", name = "explosives", amount = 3 },
      { type = "fluid", name = "light-oil", amount = 150 },
    },
    results = { { type = "item", name = "bob-fire-artillery-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-explosive-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "plastic-bar", amount = 6 },
      { type = "item", name = "explosives", amount = 18 },
    },
    results = { { type = "item", name = "bob-explosive-artillery-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-distractor-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "plastic-bar", amount = 6 },
      { type = "item", name = "explosives", amount = 3 },
      { type = "item", name = "distractor-capsule", amount = 5 },
    },
    results = { { type = "item", name = "bob-distractor-artillery-shell", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-atomic-artillery-shell",
    enabled = false,
    energy_required = 50,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "plastic-bar", amount = 6 },
      { type = "item", name = "explosives", amount = 15 },
      { type = "item", name = "uranium-235", amount = 30 },
    },
    results = { { type = "item", name = "bob-atomic-artillery-shell", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-plasma-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "bob-plasma-bullet", amount = 5 },
      { type = "item", name = "bob-magazine", amount = 1 },
    },
    results = { { type = "item", name = "bob-plasma-bullet-magazine", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-shotgun-plasma-shell",
    subgroup = "bob-ammo",
    energy_required = 0.6,
    enabled = false,
    ingredients = {},
    results = { { type = "item", name = "bob-shotgun-plasma-shell", amount = 6 } },
  },

  {
    type = "recipe",
    name = "bob-plasma-rocket",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-rocket-body", amount = 1 },
      { type = "item", name = "bob-plasma-rocket-warhead", amount = 1 },
    },
    results = { { type = "item", name = "bob-plasma-rocket", amount = 1 } },
  },
})
