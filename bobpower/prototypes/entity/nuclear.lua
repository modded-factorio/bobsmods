if settings.startup["bobmods-power-nuclear"].value == true then
  data.raw.reactor["nuclear-reactor"].consumption = "54MW"
  data.raw.reactor["nuclear-reactor"].heat_buffer.max_transfer = "20GW"
  data.raw.reactor["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"
  data.raw.reactor["nuclear-reactor"].use_fuel_glow_color = true
  data.raw.reactor["nuclear-reactor"].default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don't have glow color defined
  data.raw.reactor["nuclear-reactor"].localised_description =
    { "", { "entity-description.nuclear-reactor" }, { "entity-description.bob-reactor-max-temperature", "1000" } }
  data.raw.reactor["nuclear-reactor"].lower_layer_picture = {
    filename = "__bobpower__/graphics/nuclear-reactor/reactor-pipes.png",
    width = 320,
    height = 316,
    scale = 0.5,
    shift = { -0.03125, -0.15625 },
  }
  data.raw.reactor["nuclear-reactor"].connection_patches_connected = {
    sheet = {
      filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches.png",
      width = 64,
      height = 64,
      variation_count = 12,
      scale = 0.5,
    },
  }
  data.raw.reactor["nuclear-reactor"].connection_patches_disconnected = {
    sheet = {
      filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches.png",
      width = 64,
      height = 64,
      variation_count = 12,
      y = 64,
      scale = 0.5,
    },
  }
  data.raw.reactor["nuclear-reactor"].working_light_picture = {
    filename = "__bobpower__/graphics/nuclear-reactor/reactor-lights.png",
    width = 320,
    height = 320,
    scale = 0.5,
    shift = { -0.03125, -0.1875 },
    blend_mode = "additive",
    draw_as_glow = true,
  }

  data:extend({
    util.merge({
      data.raw.reactor["nuclear-reactor"],
      {
        name = "bob-nuclear-reactor-2",
        localised_description = {
          "",
          { "entity-description.nuclear-reactor" },
          { "entity-description.bob-reactor-max-temperature", "1250" },
        },
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "bob-nuclear-reactor-2" },
        max_health = 750,
        consumption = "72MW",
        heat_buffer = {
          max_transfer = "40GW",
          max_temperature = 1250,
        },
        lower_layer_picture = {
          filename = "__bobpower__/graphics/nuclear-reactor/reactor-pipes-2.png",
          width = 320,
          height = 316,
          scale = 0.5,
          shift = { -0.03125, -0.15625 },
        },
        connection_patches_connected = {
          sheet = {
            filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-2.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5,
          },
        },
        connection_patches_disconnected = {
          sheet = {
            filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-2.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5,
          },
        },
      },
    }),
  })

  data:extend({
    util.merge({
      data.raw.reactor["nuclear-reactor"],
      {
        name = "bob-nuclear-reactor-3",
        localised_description = {
          "",
          { "entity-description.nuclear-reactor" },
          { "entity-description.bob-reactor-max-temperature", "1500" },
        },
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "bob-nuclear-reactor-3" },
        max_health = 1000,
        consumption = "90MW",
        heat_buffer = {
          max_transfer = "80GW",
          max_temperature = 1500,
        },
        lower_layer_picture = {
          filename = "__bobpower__/graphics/nuclear-reactor/reactor-pipes-3.png",
          width = 320,
          height = 316,
          scale = 0.5,
          shift = { -0.03125, -0.15625 },
        },
        connection_patches_connected = {
          sheet = {
            filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-3.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5,
          },
        },
        connection_patches_disconnected = {
          sheet = {
            filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-3.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5,
          },
        },
      },
    }),
  })

  data.raw.reactor["nuclear-reactor"].next_upgrade = "bob-nuclear-reactor-2"
  data.raw.reactor["bob-nuclear-reactor-2"].next_upgrade = "bob-nuclear-reactor-3"
end
