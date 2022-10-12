if data.raw.item["synthetic-wood"] then
  data:extend({{
    type = "recipe",
    name = "gun-cotton-synthetic",
    category = "crafting-with-fluid",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    ingredients = {{
      type = "fluid",
      name = "sulfuric-acid",
      amount = 10
    }, {"synthetic-wood", 1}},
    result = "gun-cotton",
    result_count = 1
  }})
end

data:extend({{
  type = "recipe",
  name = "petroleum-jelly",
  category = "chemistry",
  subgroup = "bob-resource",
  energy_required = 1,
  enabled = false,
  ingredients = {{
    type = "fluid",
    name = "heavy-oil",
    amount = 10
  }},
  result = "petroleum-jelly",
  result_count = 1
}, {
  type = "recipe",
  name = "gun-cotton",
  category = "crafting-with-fluid",
  subgroup = "bob-resource",
  energy_required = 1,
  enabled = false,
  ingredients = {{
    type = "fluid",
    name = "sulfuric-acid",
    amount = 10
  }, {"wood", 1}},
  result = "gun-cotton",
  result_count = 1
}, {
  type = "recipe",
  name = "cordite",
  category = "crafting-with-fluid",
  subgroup = "bob-ammo-parts",
  energy_required = 10,
  enabled = false,
  ingredients = {{
    type = "fluid",
    name = "nitroglycerin",
    amount = 60
  }, {"gun-cotton", 13}, {"petroleum-jelly", 1}},
  result = "cordite",
  result_count = 5
}, {
  type = "recipe",
  name = "bullet-casing",
  subgroup = "bob-ammo-parts",
  energy_required = 0.5,
  enabled = false,
  ingredients = {{"copper-plate", 1}},
  result = "bullet-casing",
  result_count = 1
}, {
  type = "recipe",
  name = "magazine",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}},
  result = "magazine",
  result_count = 2
}, {
  type = "recipe",
  name = "bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"iron-plate", 1}},
  result = "bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "ap-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"steel-plate", 1}},
  result = "ap-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "ap-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"ap-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "ap-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "he-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"explosives", 1}},
  result = "he-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "he-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"he-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "he-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "flame-bullet-projectile",
  category = "chemistry",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {
    type = "fluid",
    name = "light-oil",
    amount = 5
  }, {
    type = "fluid",
    name = "heavy-oil",
    amount = 5
  }},
  result = "flame-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "flame-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"flame-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "flame-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "acid-bullet-projectile",
  category = "crafting-with-fluid",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {
    type = "fluid",
    name = "sulfuric-acid",
    amount = 10
  }},
  result = "acid-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "acid-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"acid-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "acid-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "poison-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"coal", 1}},
  result = "poison-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "poison-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"poison-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "poison-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "electric-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"steel-plate", 1}},
  result = "electric-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "electric-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"electric-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "electric-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "uranium-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"copper-plate", 1}, {"uranium-238", 1}},
  result = "uranium-bullet-projectile",
  result_count = 2
}, {
  type = "recipe",
  name = "uranium-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"uranium-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "uranium-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-shell-casing",
  subgroup = "bob-ammo-parts",
  energy_required = 0.5,
  enabled = false,
  ingredients = {{"copper-plate", 1}},
  result = "shotgun-shell-casing",
  result_count = 1
}, {
  type = "recipe",
  name = "shot",
  subgroup = "bob-ammo-parts",
  energy_required = 0.5,
  enabled = false,
  ingredients = {{"iron-plate", 1}},
  result = "shot",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-case",
  subgroup = "bob-ammo-parts",
  energy_required = 1,
  enabled = false,
  ingredients = {{"plastic-bar", 1}},
  result = "laser-rifle-battery-case",
  result_count = 2
}, {
  type = "recipe",
  name = "rocket-engine",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}},
  result = "rocket-engine"
}, {
  type = "recipe",
  name = "rocket-body",
  energy_required = 1,
  enabled = false,
  ingredients = {
    {"solid-fuel", 1},
    {"rocket-engine", 1},
    {"processing-unit", 1},
    {"steel-plate", 1}
  },
  result = "rocket-body"
}, {
  type = "recipe",
  name = "rocket-warhead",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {"explosives", 1}},
  result = "rocket-warhead"
}, {
  type = "recipe",
  name = "piercing-rocket-warhead",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {"iron-plate", 2}},
  result = "piercing-rocket-warhead"
}, {
  type = "recipe",
  name = "electric-rocket-warhead",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {"copper-plate", 2}},
  result = "electric-rocket-warhead"
}, {
  type = "recipe",
  name = "explosive-rocket-warhead",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {"explosives", 2}},
  result = "explosive-rocket-warhead"
}, {
  type = "recipe",
  name = "acid-rocket-warhead",
  category = "crafting-with-fluid",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {
    type = "fluid",
    name = "sulfuric-acid",
    amount = 20
  }},
  result = "acid-rocket-warhead"
}, {
  type = "recipe",
  name = "flame-rocket-warhead",
  category = "chemistry",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {
    type = "fluid",
    name = "light-oil",
    amount = 10
  }, {
    type = "fluid",
    name = "heavy-oil",
    amount = 10
  }},
  result = "flame-rocket-warhead"
}, {
  type = "recipe",
  name = "poison-rocket-warhead",
  category = "crafting-with-fluid",
  energy_required = 1,
  enabled = false,
  ingredients = {{"steel-plate", 1}, {"coal", 2}},
  result = "poison-rocket-warhead"
}})

if data.raw["item-subgroup"]["bob-resource-chemical"] then
  data.raw.recipe["petroleum-jelly"].subgroup = "bob-resource-chemical"
end

data:extend({{
  type = "recipe",
  name = "plasma-bullet-projectile",
  subgroup = "bob-ammo-parts",
  energy_required = 6,
  enabled = false,
  ingredients = {},
  result = "plasma-bullet-projectile",
  result_count = 12
}, {
  type = "recipe",
  name = "plasma-bullet",
  subgroup = "bob-ammo-parts",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"bullet-casing", 1},
    {"plasma-bullet-projectile", 1},
    {"cordite", 1}
  },
  result = "plasma-bullet",
  result_count = 1
}, {
  type = "recipe",
  name = "plasma-rocket-warhead",
  energy_required = 6,
  enabled = false,
  ingredients = {},
  result = "plasma-rocket-warhead",
  result_count = 6
}})