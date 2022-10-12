if settings.startup["bobmods-power-nuclear"].value == true then
  data.raw.reactor["nuclear-reactor"].consumption = "54MW"
  data.raw.reactor["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"
  data.raw.reactor["nuclear-reactor"].use_fuel_glow_color = true
  data.raw.reactor["nuclear-reactor"].default_fuel_glow_color = {0, 1, 0, 1} -- color used as working_light_picture tint for fuels that don't have glow color defined
  data.raw.reactor["nuclear-reactor"].working_light_picture = {
    filename = "__bobpower__/graphics/nuclear-reactor/reactor-lights.png",
    width = 160,
    height = 160,
    shift = {-0.03125, -0.1875},
    blend_mode = "additive",
    draw_as_glow = true,
    hr_version = {
      filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-lights.png",
      width = 320,
      height = 320,
      scale = 0.5,
      shift = {-0.03125, -0.1875},
      blend_mode = "additive",
      draw_as_glow = true
    }
  }

  data:extend({util.merge{data.raw.reactor["nuclear-reactor"], {
    name = "nuclear-reactor-2",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    minable = {
      mining_time = 0.5,
      result = "nuclear-reactor-2"
    },
    max_health = 750,
    consumption = "72MW",
    heat_buffer = {
      max_transfer = "20GW",
      max_temperature = 1250
    },
    lower_layer_picture = {
      filename = "__bobpower__/graphics/nuclear-reactor/reactor-pipes-2.png",
      width = 160,
      height = 160,
      shift = {-0.03125, -0.1875},
      hr_version = {
        filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-pipes-2.png",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = {-0.03125, -0.1875}
      }
    },
    connection_patches_connected = {
      sheet = {
        filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-2.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version = {
          filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-connect-patches-2.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },
    connection_patches_disconnected = {
      sheet = {
        filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-2.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version = {
          filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-connect-patches-2.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    }
  }}})

  data:extend({util.merge{data.raw.reactor["nuclear-reactor"], {
    name = "nuclear-reactor-3",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    minable = {
      mining_time = 0.5,
      result = "nuclear-reactor-3"
    },
    max_health = 1000,
    consumption = "90MW",
    heat_buffer = {
      max_transfer = "30GW",
      max_temperature = 1500
    },
    lower_layer_picture = {
      filename = "__bobpower__/graphics/nuclear-reactor/reactor-pipes-3.png",
      width = 160,
      height = 160,
      shift = {-0.03125, -0.1875},
      hr_version = {
        filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-pipes-3.png",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = {-0.03125, -0.1875}
      }
    },
    connection_patches_connected = {
      sheet = {
        filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-3.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version = {
          filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-connect-patches-3.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },
    connection_patches_disconnected = {
      sheet = {
        filename = "__bobpower__/graphics/nuclear-reactor/reactor-connect-patches-3.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version = {
          filename = "__bobpower__/graphics/nuclear-reactor/hr-reactor-connect-patches-3.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    }
  }}})

  data.raw.reactor["nuclear-reactor"].next_upgrade = "nuclear-reactor-2"
  data.raw.reactor["nuclear-reactor-2"].next_upgrade = "nuclear-reactor-3"
end