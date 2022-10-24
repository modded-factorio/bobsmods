if settings.startup["bobmods-power-heatsources"].value == true then
  local function lower_layer_picture(suffix)
    return {
      filename = "__bobpower__/graphics/burner-reactor/reactor-pipes" .. suffix .. ".png",
      width = 96,
      height = 96,
      shift = { -0.03125, -0.1875 },
      hr_version = {
        filename = "__bobpower__/graphics/burner-reactor/hr-reactor-pipes" .. suffix .. ".png",
        width = 192,
        height = 192,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
      },
    }
  end

  local function connection_patches_connected(suffix)
    return {
      sheet = {
        filename = "__bobpower__/graphics/burner-reactor/reactor-connect-patches" .. suffix .. ".png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version = {
          filename = "__bobpower__/graphics/burner-reactor/hr-reactor-connect-patches" .. suffix .. ".png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5,
        },
      },
    }
  end

  local function connection_patches_disconnected(suffix)
    return {
      sheet = {
        filename = "__bobpower__/graphics/burner-reactor/reactor-connect-patches" .. suffix .. ".png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version = {
          filename = "__bobpower__/graphics/burner-reactor/hr-reactor-connect-patches" .. suffix .. ".png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5,
        },
      },
    }
  end

  data:extend({
    {
      type = "item",
      name = "burner-reactor",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-a[burner-reactor-1]",
      place_result = "burner-reactor",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "burner-reactor",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { "steel-furnace", 1 },
        { "heat-pipe", 8 },
        { "steel-plate", 6 },
      },
      result = "burner-reactor",
    },
    {
      type = "reactor",
      name = "burner-reactor",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      localised_description = { "entity-description.burner-reactor" },
      max_health = 300,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.3, result = "burner-reactor" },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      corpse = "medium-remnants",
      fast_replaceable_group = "burner-reactor",
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      consumption = "5.4MW",
      neighbour_bonus = 0.5,
      scale_energy_usage = true,
      energy_source = {
        type = "burner",
        fuel_category = "chemical",
        effectivity = 1,
        emissions_per_minute = 15,
        fuel_inventory_size = 1,
        smoke = {
          {
            name = "smoke",
            frequency = 30,
            position = { 0, -1.2 },
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60,
          },
        },
      },
      heat_buffer = {
        max_temperature = 750,
        specific_heat = "5.4MJ",
        max_transfer = "10GW",
        connections = {
          {
            position = { -1, -1 },
            direction = defines.direction.north,
          },
          {
            position = { 1, -1 },
            direction = defines.direction.north,
          },
          {
            position = { 1, -1 },
            direction = defines.direction.east,
          },
          {
            position = { 1, 1 },
            direction = defines.direction.east,
          },
          {
            position = { 1, 1 },
            direction = defines.direction.south,
          },
          {
            position = { -1, 1 },
            direction = defines.direction.south,
          },
          {
            position = { -1, 1 },
            direction = defines.direction.west,
          },
          {
            position = { -1, -1 },
            direction = defines.direction.west,
          },
        },
      },
      picture = {
        filename = "__bobpower__/graphics/burner-reactor/reactor.png",
        priority = "high",
        width = 84,
        height = 66,
        scale = 1.5,
        shift = { 0.4375 * 1.5, 0.03125 * 1.5 },
      },
      working_light_picture = {
        filename = "__bobpower__/graphics/burner-reactor/reactor-fire.png",
        priority = "high",
        width = 36,
        height = 19,
        frame_count = 12,
        scale = 1.5,
        shift = { -0.03125 * 1.5, 0.671875 * 1.5 },
      },
      light = { intensity = 0.3, size = 3, shift = { 0.0, 0.0 }, color = { r = 1.0, g = 0.9, b = 0.7 } },
      use_fuel_glow_color = true, -- should use glow color from fuel item prototype as light color and tint for working_light_picture
      -- default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don't have glow color defined
      lower_layer_picture = lower_layer_picture(""),
      connection_patches_connected = connection_patches_connected(""),
      connection_patches_disconnected = connection_patches_disconnected(""),
    },
    {
      type = "technology",
      name = "burner-reactor-1",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "advanced-material-processing",
        "bob-heat-pipe-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "burner-reactor",
        },
      },
      unit = {
        time = 30,
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      order = "[burner-reactor]-1",
    },
  })

  data:extend({
    {
      type = "item",
      name = "burner-reactor-2",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-a[burner-reactor-2]",
      place_result = "burner-reactor-2",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "burner-reactor-2",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "burner-reactor", 1 },
        { "heat-pipe-2", 8 },
        { "steel-plate", 6 },
        { "concrete", 10 },
      },
      result = "burner-reactor-2",
    },
    util.merge({
      data.raw.reactor["burner-reactor"],
      {
        name = "burner-reactor-2",
        minable = { result = "burner-reactor-2" },
        max_health = 400,
        consumption = "7.2MW",
        neighbour_bonus = 0.75,
        next_upgrade = "burner-reactor-3",
        lower_layer_picture = lower_layer_picture("-2"),
        connection_patches_connected = connection_patches_connected("-2"),
        connection_patches_disconnected = connection_patches_disconnected("-2"),
        heat_buffer = {
          max_temperature = 875,
          specific_heat = "7.2MJ",
          max_transfer = "20GW",
        },
      },
    }),
    {
      type = "technology",
      name = "burner-reactor-2",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "burner-reactor-1",
        "concrete",
        "chemical-science-pack",
        "bob-heat-pipe-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "burner-reactor-2",
        },
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      order = "[burner-reactor]-2",
    },
  })

  data:extend({
    {
      type = "item",
      name = "burner-reactor-3",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-a[burner-reactor-3]",
      place_result = "burner-reactor-3",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "burner-reactor-3",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { "burner-reactor-2", 1 },
        { "heat-pipe-3", 8 },
        { "steel-plate", 6 },
        { "concrete", 10 },
      },
      result = "burner-reactor-3",
    },
    util.merge({
      data.raw.reactor["burner-reactor"],
      {
        name = "burner-reactor-3",
        minable = { result = "burner-reactor-3" },
        max_health = 500,
        consumption = "9MW",
        neighbour_bonus = 1,
        lower_layer_picture = lower_layer_picture("-3"),
        connection_patches_connected = connection_patches_connected("-3"),
        connection_patches_disconnected = connection_patches_disconnected("-3"),
        heat_buffer = {
          max_temperature = 1000,
          specific_heat = "9MJ",
          max_transfer = "30GW",
        },
      },
    }),
    {
      type = "technology",
      name = "burner-reactor-3",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "burner-reactor-2",
        "production-science-pack",
        "bob-heat-pipe-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "burner-reactor-3",
        },
      },
      unit = {
        time = 30,
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      order = "[burner-reactor]-3",
    },
  })

  data:extend({
    {
      type = "item",
      name = "fluid-reactor",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-b[fluid-reactor-1]",
      place_result = "fluid-reactor",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "fluid-reactor",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { "burner-reactor", 1 },
        { "steel-plate", 6 },
        { "pipe", 5 },
      },
      result = "fluid-reactor",
    },
    util.merge({
      data.raw.reactor["burner-reactor"],
      {
        name = "fluid-reactor",
        minable = { result = "fluid-reactor" },
        next_upgrade = "fluid-reactor-2",
        localised_description = { "entity-description.fluid-reactor" },
      },
    }),
    {
      type = "technology",
      name = "fluid-reactor-1",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "burner-reactor-1",
        "bob-heat-pipe-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-reactor",
        },
      },
      unit = {
        time = 30,
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      order = "[fluid-reactor]-1",
    },
  })

  data:extend({
    {
      type = "item",
      name = "fluid-reactor-2",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-b[fluid-reactor-2]",
      place_result = "fluid-reactor-2",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "fluid-reactor-2",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "fluid-reactor", 1 },
        { "heat-pipe-2", 8 },
        { "steel-plate", 6 },
        { "concrete", 10 },
        { "pipe", 5 },
      },
      result = "fluid-reactor-2",
    },
    util.merge({
      data.raw.reactor["burner-reactor-2"],
      {
        name = "fluid-reactor-2",
        minable = { result = "fluid-reactor-2" },
        next_upgrade = "fluid-reactor-3",
        localised_description = { "entity-description.fluid-reactor" },
      },
    }),
    {
      type = "technology",
      name = "fluid-reactor-2",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "fluid-reactor-1",
        "concrete",
        "chemical-science-pack",
        "bob-heat-pipe-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-reactor-2",
        },
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      order = "[fluid-reactor]-2",
    },
  })

  data:extend({
    {
      type = "item",
      name = "fluid-reactor-3",
      icon = "__bobpower__/graphics/icons/burner-reactor.png",
      icon_size = 32,
      subgroup = "energy",
      order = "f[heat-energy]-b[fluid-reactor-3]",
      place_result = "fluid-reactor-3",
      stack_size = 10,
    },
    {
      type = "recipe",
      name = "fluid-reactor-3",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { "fluid-reactor-2", 1 },
        { "heat-pipe-3", 8 },
        { "steel-plate", 6 },
        { "concrete", 10 },
        { "pipe", 5 },
      },
      result = "fluid-reactor-3",
    },
    util.merge({
      data.raw.reactor["burner-reactor-3"],
      {
        name = "fluid-reactor-3",
        minable = { result = "fluid-reactor-3" },
        localised_description = { "entity-description.fluid-reactor" },
      },
    }),
    {
      type = "technology",
      name = "fluid-reactor-3",
      icon = "__bobpower__/graphics/icons/technology/heat-power.png",
      icon_size = 128,
      prerequisites = {
        "fluid-reactor-2",
        "production-science-pack",
        "bob-heat-pipe-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-reactor-3",
        },
      },
      unit = {
        time = 30,
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      order = "[fluid-reactor]-3",
    },
  })

  --Since the burner reactor is a base for the others, add next_upgrade to it after all the cloning.
  data.raw.reactor["burner-reactor"].next_upgrade = "burner-reactor-2"

  --Change the energy_source on the fluid reactors from burner to fluid.
  local fluid_reactor_energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions_per_minute = 10,
    fluid_box = {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections = {
        { type = "input-output", position = { 0, 2 } },
        { type = "input-output", position = { 0, -2 } },
        { type = "input-output", position = { 2, 0 } },
        { type = "input-output", position = { -2, 0 } },
      },
      pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepictures(),
      production_type = "input-output",
    },
    burns_fluid = true,
    scale_fluid_usage = true,
    smoke = {
      {
        name = "smoke",
        frequency = 20,
        position = { 0, -1.2 },
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60,
      },
    },
  }

  data.raw.reactor["fluid-reactor"].energy_source = fluid_reactor_energy_source
  data.raw.reactor["fluid-reactor-2"].energy_source = fluid_reactor_energy_source
  data.raw.reactor["fluid-reactor-3"].energy_source = fluid_reactor_energy_source

  --If the oil burning steel furnace exists, add a new alternate recipe to craft the fluid reactor from it.
  if
    settings.startup["bobmods-assembly-oilfurnaces"]
    and settings.startup["bobmods-assembly-oilfurnaces"].value == true
  then
    data:extend({
      {
        type = "recipe",
        name = "fluid-reactor-from-fluid-furnace",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "fluid-furnace", 1 },
          { "heat-pipe", 8 },
          { "steel-plate", 6 },
          { "pipe", 3 },
        },
        result = "fluid-reactor",
      },
    })

    bobmods.lib.tech.add_recipe_unlock("fluid-reactor-1", "fluid-reactor-from-fluid-furnace")
    bobmods.lib.tech.add_prerequisite("fluid-reactor-1", "fluid-furnace")
  end
end
