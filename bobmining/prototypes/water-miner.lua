local hit_effects = require("__base__/prototypes/entity/hit-effects")

local function water_miner_animation()
  return {
    north = {
      layers = {
        {
          priority = "high",
          filename = "__bobmining__/graphics/entity/water-miner/water-miner-horsehead.png",
          animation_speed = 0.5,
          scale = 0.5,
          line_length = 8,
          width = 206,
          height = 172,
          frame_count = 40,
          shift = util.by_pixel(-4.5, -29),
        },
        {
          priority = "high",
          filename = "__bobmining__/graphics/entity/water-miner/water-miner-horsehead-shadow.png",
          animation_speed = 0.5,
          draw_as_shadow = true,
          line_length = 8,
          width = 292,
          height = 78,
          frame_count = 40,
          scale = 0.5,
          shift = util.by_pixel(17.75, 14.5),
        },
      },
    },
  }
end

local function water_miner_visualisations(flipped)
  local base_sheets = {
    {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-base"
        .. (flipped and "-flipped" or "")
        .. ".png",
      priority = "extra-high",
      width = 261,
      height = 273,
      shift = util.by_pixel(-2.25, -4.75),
      scale = 0.5,
    },
    {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-base"
        .. (flipped and "-flipped" or "")
        .. "-shadow.png",
      width = 261,
      height = 273,
      scale = 0.5,
      draw_as_shadow = true,
      shift = util.by_pixel(-2, -5),
    },
  }

  local base_visualisation = { always_draw = true, secondary_draw_order = -1 }
  for i, name in pairs({ "north_animation", "east_animation", "south_animation", "west_animation" }) do
    local layers = {}
    for _, sheet in pairs(base_sheets) do
      sheet = table.deepcopy(sheet)
      sheet.x = sheet.width * (i - 1)
      table.insert(layers, sheet)
    end
    base_visualisation[name] = { layers = layers }
  end
  return { base_visualisation }
end

if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
  data:extend({
    {
      type = "item",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-1]",
      place_result = "bob-water-miner-1",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
      weight = 50000,
    },
    {
      type = "item",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-2]",
      place_result = "bob-water-miner-2",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
      weight = 50000,
    },
    {
      type = "item",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-3]",
      place_result = "bob-water-miner-3",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
      weight = 50000,
    },
    {
      type = "item",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-4]",
      place_result = "bob-water-miner-4",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
      weight = 50000,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-water-miner-1",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-1", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-2",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-1", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-2", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-3",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-3", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-4",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-4", amount = 1 } },
      enabled = false,
    },
  })

  data:extend({
    {
      type = "mining-drill",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-water-miner-1" },
      resource_categories = { "water" },
      max_health = 100,
      corpse = "pumpjack-remnants",
      dying_explosion = "pumpjack-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            direction = defines.direction.north,
            positions = { { 1, -1 }, { 1, 1 }, { -1, 1 }, { -1, -1 } },
            flow_direction = "output",
          },
        },
      },
      energy_usage = "45kW",
      mining_speed = 1,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 1,
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      migrate_horizontal_mirroring = true,
      use_mirroring = true,
      graphics_set = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(false),
      },
      graphics_set_flipped = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(true),
      },
      open_sound = { filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5 },
      close_sound = { filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5 },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6 },
        max_sounds_per_prototype = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 10,
      },
      fast_replaceable_group = "pumpjack",
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 7.5,
      next_upgrade = "bob-water-miner-2",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-water-miner-2" },
      resource_categories = { "water" },
      max_health = 150,
      corpse = "pumpjack-remnants",
      dying_explosion = "pumpjack-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            direction = defines.direction.north,
            positions = { { 1, -1 }, { 1, 1 }, { -1, 1 }, { -1, -1 } },
            flow_direction = "output",
          },
        },
      },
      energy_usage = "85kW",
      mining_speed = 2,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 2,
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      migrate_horizontal_mirroring = true,
      use_mirroring = true,
      graphics_set = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(false),
      },
      graphics_set_flipped = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(true),
      },
      open_sound = { filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5 },
      close_sound = { filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5 },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6 },
        max_sounds_per_prototype = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 10,
      },
      fast_replaceable_group = "pumpjack",
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 10,
      next_upgrade = "bob-water-miner-3",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-water-miner-3" },
      resource_categories = { "water" },
      max_health = 200,
      corpse = "pumpjack-remnants",
      dying_explosion = "pumpjack-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            direction = defines.direction.north,
            positions = { { 1, -1 }, { 1, 1 }, { -1, 1 }, { -1, -1 } },
            flow_direction = "output",
          },
        },
      },
      energy_usage = "121kW",
      mining_speed = 3,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 3,
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      migrate_horizontal_mirroring = true,
      use_mirroring = true,
      graphics_set = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(false),
      },
      graphics_set_flipped = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(true),
      },
      open_sound = { filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5 },
      close_sound = { filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5 },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6 },
        max_sounds_per_prototype = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 10,
      },
      fast_replaceable_group = "pumpjack",
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 12.5,
      next_upgrade = "bob-water-miner-4",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-water-miner-4" },
      resource_categories = { "water" },
      max_health = 250,
      corpse = "pumpjack-remnants",
      dying_explosion = "pumpjack-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            direction = defines.direction.north,
            positions = { { 1, -1 }, { 1, 1 }, { -1, 1 }, { -1, -1 } },
            flow_direction = "output",
          },
        },
      },
      energy_usage = "180kW",
      mining_speed = 5,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 4,
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      migrate_horizontal_mirroring = true,
      use_mirroring = true,
      graphics_set = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(false),
      },
      graphics_set_flipped = {
        animation = water_miner_animation(),
        working_visualisations = water_miner_visualisations(true),
      },
      open_sound = { filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5 },
      close_sound = { filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5 },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6 },
        max_sounds_per_prototype = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 10,
      },
      fast_replaceable_group = "pumpjack",
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 15,
    },
  })

  if feature_flags["freezing"] then
    data.raw["mining-drill"]["bob-water-miner-1"].heating_energy = "50kW"
    data.raw["mining-drill"]["bob-water-miner-2"].heating_energy = "50kW"
    data.raw["mining-drill"]["bob-water-miner-3"].heating_energy = "50kW"
    data.raw["mining-drill"]["bob-water-miner-4"].heating_energy = "50kW"
    if mods["space-age"] then
      local function frozenpatch()
        local result = util.table.deepcopy(data.raw["mining-drill"].pumpjack.graphics_set.frozen_patch)
        return result
      end
      data.raw["mining-drill"]["bob-water-miner-1"].graphics_set.reset_animation_when_frozen = true
      data.raw["mining-drill"]["bob-water-miner-2"].graphics_set.reset_animation_when_frozen = true
      data.raw["mining-drill"]["bob-water-miner-3"].graphics_set.reset_animation_when_frozen = true
      data.raw["mining-drill"]["bob-water-miner-4"].graphics_set.reset_animation_when_frozen = true
      data.raw["mining-drill"]["bob-water-miner-1"].graphics_set.frozen_patch = frozenpatch()
      data.raw["mining-drill"]["bob-water-miner-2"].graphics_set.frozen_patch = frozenpatch()
      data.raw["mining-drill"]["bob-water-miner-3"].graphics_set.frozen_patch = frozenpatch()
      data.raw["mining-drill"]["bob-water-miner-4"].graphics_set.frozen_patch = frozenpatch()
    end
  end

  data:extend({
    {
      type = "technology",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "automation-science-pack",
      },
      unit = {
        count = 10,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-water-miner-1",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-1",
        "fluid-handling",
      },
      unit = {
        count = 30,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-water-miner-2",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-2",
        "chemical-science-pack",
      },
      unit = {
        count = 50,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-water-miner-3",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-3",
        "processing-unit",
        "production-science-pack",
      },
      unit = {
        count = 75,
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
          recipe = "bob-water-miner-4",
        },
      },
    },
  })
end
