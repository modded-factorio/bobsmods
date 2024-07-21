data:extend({
  {
    type = "item",
    name = "vehicle-belt-immunity-equipment",
    icons = {
      {
        icon = "__bobvehicleequipment__/graphics/icons/vehicle-roboport-equipment-base.png",
      },
      {
        icon = "__base__/graphics/icons/belt-immunity-equipment.png",
        icon_size = 64,
        icon_mipmaps = 4,
      },
    },
    icon_size = 32,
    placed_as_equipment_result = "vehicle-belt-immunity-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[belt-immunity]",
    default_request_amount = 1,
    stack_size = 20,
  },
  {
    type = "recipe",
    name = "vehicle-belt-immunity-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "advanced-circuit", 5 },
      { "steel-plate", 10 },
    },
    results = { { type = "item", name = "vehicle-belt-immunity-equipment", amount = 1 } },
  },
  {
    type = "belt-immunity-equipment",
    name = "vehicle-belt-immunity-equipment",
    sprite = {
      filename = "__base__/graphics/equipment/belt-immunity-equipment.png",
      width = 32,
      height = 32,
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
    name = "vehicle-belt-immunity-equipment",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__base__/graphics/icons/belt-immunity-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4,
    }),
    order = "g-g-g",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "advanced-electronics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-belt-immunity-equipment",
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
