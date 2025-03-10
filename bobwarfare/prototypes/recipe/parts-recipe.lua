data:extend({
  {
    type = "recipe",
    name = "bob-petroleum-jelly",
    category = "chemistry",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "bob-petroleum-jelly", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-gun-cotton",
    category = "crafting-with-fluid",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-gun-cotton", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cordite",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 10,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "bob-nitroglycerin", amount = 60 },
      { type = "item", name = "bob-gun-cotton", amount = 13 },
      { type = "item", name = "bob-petroleum-jelly", amount = 1 },
    },
    results = { { type = "item", name = "bob-cordite", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-bullet-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-bullet-casing", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-magazine",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-magazine", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-ap-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-ap-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-ap-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-ap-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-ap-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-he-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
    },
    results = { { type = "item", name = "bob-he-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-he-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-he-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-he-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-flame-bullet-projectile",
    category = "chemistry",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 5 },
      { type = "fluid", name = "heavy-oil", amount = 5 },
    },
    results = { { type = "item", name = "bob-flame-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-flame-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-flame-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-flame-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-acid-bullet-projectile",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = { { type = "item", name = "bob-acid-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-acid-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-acid-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-acid-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-poison-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = { { type = "item", name = "bob-poison-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-poison-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-poison-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-poison-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-electric-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-electric-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-electric-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-electric-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-electric-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-uranium-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "uranium-238", amount = 1 },
    },
    results = { { type = "item", name = "bob-uranium-bullet-projectile", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-uranium-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-uranium-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-uranium-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-shotgun-shell-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-shotgun-shell-casing", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-shot",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-shot", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-laser-rifle-battery-case",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-laser-rifle-battery-case", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-rocket-engine",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-rocket-engine", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-rocket-body",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-fuel", amount = 1 },
      { type = "item", name = "bob-rocket-engine", amount = 1 },
      { type = "item", name = "processing-unit", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-rocket-body", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
    },
    results = { { type = "item", name = "bob-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-piercing-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 2 },
    },
    results = { { type = "item", name = "bob-piercing-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-electric-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "bob-electric-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-explosive-rocket-warhead",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "explosives", amount = 2 },
    },
    results = { { type = "item", name = "bob-explosive-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-acid-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = { { type = "item", name = "bob-acid-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-flame-rocket-warhead",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 10 },
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "bob-flame-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-poison-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "coal", amount = 2 },
    },
    results = { { type = "item", name = "bob-poison-rocket-warhead", amount = 1 } },
    allow_productivity = true,
  },
})

if data.raw["item-subgroup"]["bob-resource-chemical"] then
  data.raw.recipe["bob-petroleum-jelly"].subgroup = "bob-resource-chemical"
end

data:extend({
  {
    type = "recipe",
    name = "bob-plasma-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = { { type = "item", name = "bob-plasma-bullet-projectile", amount = 12 } },
  },

  {
    type = "recipe",
    name = "bob-plasma-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-bullet-casing", amount = 1 },
      { type = "item", name = "bob-plasma-bullet-projectile", amount = 1 },
      { type = "item", name = "bob-cordite", amount = 1 },
    },
    results = { { type = "item", name = "bob-plasma-bullet", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-plasma-rocket-warhead",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = { { type = "item", name = "bob-plasma-rocket-warhead", amount = 6 } },
  },
})
