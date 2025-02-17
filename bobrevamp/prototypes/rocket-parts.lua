data:extend({
  {
    type = "item",
    name = "bob-heat-shield-tile",
    icon = "__bobrevamp__/graphics/icons/heat-shield-tile.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "m[heat-shield-tile]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
  {
    type = "recipe",
    name = "bob-heat-shield-tile",
    category = "advanced-crafting",
    energy_required = 30,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "plastic-bar", amount = 5 },
    },
    results = { { type = "item", name = "bob-heat-shield-tile", amount = 1 } },
    allow_productivity = true,
  },
  {
    type = "technology",
    name = "bob-heat-shield",
    icon = "__bobrevamp__/graphics/icons/technology/heat-shield.png",
    icon_size = 128,
    order = "k",
    prerequisites = {
      "steel-processing",
      "plastics",
      "production-science-pack",
    },
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-heat-shield-tile",
      },
    },
  },
})
