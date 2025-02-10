data:extend({
  {
    type = "radar",
    name = "bob-artifact-radar",
    factoriopedia_description = { "technology-description.bob-artifact-radar" },
    icon = "__bobenemies__/graphics/icons/radar.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-artifact-radar" },
    fast_replaceable_group = "radar",
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "radar-explosion",
    damaged_trigger_effect = {
      type = "create-entity",
      damage_type_filters = "fire",
      entity_name = "spark-explosion",
      offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      offsets = { { 0, 1 } },
    },
    resistances = {
      {
        type = "physical",
        decrease = 2,
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 40,
      },
      {
        type = "fire",
        decrease = 4,
        percent = 70,
      },
      {
        type = "acid",
        decrease = 6,
        percent = 60,
      },
      {
        type = "poison",
        decrease = 12,
        percent = 75,
      },
      {
        type = "impact",
        percent = 60,
      },
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    energy_per_sector = "2MJ",
    max_distance_of_sector_revealed = 4,
    max_distance_of_nearby_sector_revealed = 4,
    energy_per_nearby_scan = "240kJ",
    rotation_speed = 0.025,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "450kW",
    integration_patch = {
      filename = "__base__/graphics/entity/radar/radar-integration.png",
      priority = "low",
      width = 238,
      height = 216,
      line_length = 1,
      shift = util.by_pixel(1.5, 4),
      scale = 0.5,
    },
    pictures = {
      layers = {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 196,
          height = 254,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
          scale = 0.5,
          tint = { r = 0.7, g = 0.5, b = 0.5, a = 1 },
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 336,
          height = 170,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39, 6),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    water_reflection = {
      orientation_to_variation = false,
      rotate = false,
      pictures = {
        filename = "__base__/graphics/entity/radar/radar-reflection.png",
        width = 28,
        height = 32,
        variation_count = 1,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          1.09375,
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/radar.ogg",
        },
      },
    },
    radius_minimap_visualisation_color = { r = 0.235, g = 0.092, b = 0.059, a = 0.275 },
    is_military_target = false,
    circuit_connector = circuit_connector_definitions["radar"],
    circuit_wire_max_distance = 9,
  },

  {
    type = "item",
    name = "bob-artifact-radar",
    icon = "__bobenemies__/graphics/icons/radar.png",
    icon_size = 64,
    subgroup = "defensive-structure",
    order = "d[radar]-a[radar-artifact]",
    place_result = "bob-artifact-radar",
    stack_size = 50,
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
      volume = 0.8,
    },
  },

  {
    type = "recipe",
    name = "bob-artifact-radar",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 15 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-artifact-radar", amount = 1 } },
  },

  {
    type = "technology",
    name = "bob-artifact-radar",
    icon = "__bobenemies__/graphics/icons/radar-technology.png",
    icon_size = 256,
    prerequisites = {
      "military-2",
      "radar",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-artifact-radar",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
  },
})
