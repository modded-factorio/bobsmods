data:extend({
  {
    type = "item",
    name = "bob-vehicle-belt-immunity-equipment",
    icons = {
      {
        icon = "__bobvehicleequipment__/graphics/icons/vehicle-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__base__/graphics/icons/belt-immunity-equipment.png",
        icon_size = 64,
        scale = 0.5,
      },
    },
    place_as_equipment_result = "bob-vehicle-belt-immunity-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[belt-immunity]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
      volume = 0.8,
    },
  },
  {
    type = "recipe",
    name = "bob-vehicle-belt-immunity-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-vehicle-belt-immunity-equipment", amount = 1 } },
  },
  {
    type = "belt-immunity-equipment",
    name = "bob-vehicle-belt-immunity-equipment",
    sprite = {
      filename = "__base__/graphics/equipment/belt-immunity-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "100kJ",
      input_flow_limit = "240kW",
      usage_priority = "primary-input",
    },
    energy_consumption = "100kW",
    categories = { "car", "tank", "spidertron" },
    order = "b-i-c",
  },
  {
    type = "technology",
    name = "bob-vehicle-belt-immunity-equipment",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__base__/graphics/icons/belt-immunity-equipment.png",
      icon_size = 64,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-1",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-belt-immunity-equipment",
      },
    },
    unit = {
      time = 15,
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
  },
})
