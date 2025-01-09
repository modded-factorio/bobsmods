data:extend({
  {
    type = "recipe",
    name = "petroleum-jelly",
    category = "chemistry",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "petroleum-jelly", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "gun-cotton",
    category = "crafting-with-fluid",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "gun-cotton", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "cordite",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "nitroglycerin", amount = 60 },
      { type = "item", name = "gun-cotton", amount = 13 },
      { type = "item", name = "petroleum-jelly", amount = 1 },
    },
    results = { { type = "item", name = "cordite", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bullet-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "bullet-casing", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "magazine",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "magazine", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = { { type = "item", name = "bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "ap-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "ap-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "ap-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "ap-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "ap-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "he-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
    },
    results = { { type = "item", name = "he-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "he-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "he-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "he-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "flame-bullet-projectile",
    category = "chemistry",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 5 },
      { type = "fluid", name = "heavy-oil", amount = 5 },
    },
    results = { { type = "item", name = "flame-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "flame-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "flame-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "flame-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "acid-bullet-projectile",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = { { type = "item", name = "acid-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "acid-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "acid-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "acid-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "poison-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = { { type = "item", name = "poison-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "poison-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "poison-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "poison-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "electric-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "electric-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "electric-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "electric-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "electric-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "uranium-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "uranium-238", amount = 1 },
    },
    results = { { type = "item", name = "uranium-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "uranium-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "uranium-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "uranium-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "shotgun-shell-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "shotgun-shell-casing", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "shot",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = { { type = "item", name = "shot", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-case",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "laser-rifle-battery-case", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "rocket-engine",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "rocket-engine", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "rocket-body",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-fuel", amount = 1 },
      { type = "item", name = "rocket-engine", amount = 1 },
      { type = "item", name = "processing-unit", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "rocket-body", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
    },
    results = { { type = "item", name = "rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "piercing-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 2 },
    },
    results = { { type = "item", name = "piercing-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "electric-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "electric-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "explosive-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 2 },
    },
    results = { { type = "item", name = "explosive-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "acid-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = { { type = "item", name = "acid-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "flame-rocket-warhead",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 10 },
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "flame-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "poison-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "coal", amount = 2 },
    },
    results = { { type = "item", name = "poison-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },
})

if data.raw["item-subgroup"]["bob-resource-chemical"] then
  data.raw.recipe["petroleum-jelly"].subgroup = "bob-resource-chemical"
end

data:extend({
  {
    type = "recipe",
    name = "plasma-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = { { type = "item", name = "plasma-bullet-projectile", amount = 12 } },
  },

  {
    type = "recipe",
    name = "plasma-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bullet-casing", amount = 1 },
      { type = "item", name = "plasma-bullet-projectile", amount = 1 },
      { type = "item", name = "cordite", amount = 1 },
    },
    results = { { type = "item", name = "plasma-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "plasma-rocket-warhead",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = { { type = "item", name = "plasma-rocket-warhead", amount = 6 } },
  },
})
