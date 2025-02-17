if settings.startup["bobmods-power-solar"].value == true then
  -- Copied from reskins-library with permission

  local solar_panel = data.raw["solar-panel"]["solar-panel"]
  solar_panel.fast_replaceable_group = "solar-panel"
  solar_panel.next_upgrade = "bob-solar-panel-2"
  solar_panel.picture = {
    layers = {
      -- Base
      {
        filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
        priority = "high",
        width = 230,
        height = 224,
        shift = util.by_pixel(-3, 3.5),
        scale = 0.5,
      },
      -- Mask
      {
        filename = "__bobpower__/graphics/solar-panel/solar-panel-mask.png",
        priority = "high",
        width = 230,
        height = 224,
        shift = util.by_pixel(-3, 3.5),
        tint = util.copy(bobmods.lib.standard_tier_colors[2]), -- T2
        scale = 0.5,
      },
      -- Highlights
      {
        filename = "__bobpower__/graphics/solar-panel/solar-panel-highlights.png",
        priority = "high",
        width = 230,
        height = 224,
        shift = util.by_pixel(-3, 3.5),
        blend_mode = "additive",
        scale = 0.5,
      },
      -- Shadow
      {
        filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
        priority = "high",
        width = 220,
        height = 180,
        shift = util.by_pixel(9.5, 6),
        draw_as_shadow = true,
        scale = 0.5,
      },
    },
  }
  solar_panel.overlay = {
    layers = {
      {
        filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
        priority = "high",
        width = 214,
        height = 180,
        shift = util.by_pixel(10.5, 6),
        scale = 0.5,
      },
    },
  }

  data:extend({
    {
      type = "solar-panel",
      name = "bob-solar-panel-small",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-small" },
      max_health = 100,
      corpse = "medium-remnants",
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-mask.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[2]), -- T2
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-highlights.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow-overlay.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
        },
      },
      production = "26.67kW",
      fast_replaceable_group = "solar-panel",
      next_upgrade = "bob-solar-panel-small-2",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large" },
      max_health = 300,
      corpse = "big-remnants",
      collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-mask.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[2]), -- T2
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-highlights.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow-overlay.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
        },
      },
      production = "106.67kW",
      fast_replaceable_group = "solar-panel",
      next_upgrade = "bob-solar-panel-large-2",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-small-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-small-2" },
      max_health = 150,
      corpse = "medium-remnants",
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-mask.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[3]), -- T3
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-highlights.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow-overlay.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
        },
      },
      production = "40kW",
      fast_replaceable_group = "solar-panel",
      next_upgrade = "bob-solar-panel-small-3",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-2" },
      max_health = 300,
      corpse = "big-remnants",
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel/solar-panel-mask.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[3]), -- T3
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel/solar-panel-highlights.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
            priority = "high",
            width = 220,
            height = 180,
            shift = util.by_pixel(9.5, 6),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
            priority = "high",
            width = 214,
            height = 180,
            shift = util.by_pixel(10.5, 6),
            scale = 0.5,
          },
        },
      },
      production = "90kW",
      fast_replaceable_group = "solar-panel",
      next_upgrade = "bob-solar-panel-3",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large-2" },
      max_health = 450,
      corpse = "big-remnants",
      collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-mask.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[3]), -- T3
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-highlights.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow-overlay.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
        },
      },
      production = "160kW",
      fast_replaceable_group = "solar-panel",
      next_upgrade = "bob-solar-panel-large-3",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-small-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-small-3" },
      max_health = 200,
      corpse = "medium-remnants",
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-mask.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[4]), -- T4
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-small/solar-panel-small-highlights.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-small/base/solar-panel-small-shadow-overlay.png",
            priority = "high",
            width = 180,
            height = 150,
            shift = util.by_pixel(5, 0.5),
            scale = 0.5,
          },
        },
      },
      production = "60kW",
      fast_replaceable_group = "solar-panel",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-3" },
      max_health = 400,
      corpse = "big-remnants",
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel/solar-panel-mask.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[4]), -- T4
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel/solar-panel-highlights.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
            priority = "high",
            width = 220,
            height = 180,
            shift = util.by_pixel(9.5, 6),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
            priority = "high",
            width = 214,
            height = 180,
            shift = util.by_pixel(10.5, 6),
            scale = 0.5,
          },
        },
      },
      production = "135kW",
      fast_replaceable_group = "solar-panel",
      impact_category = "glass",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large-3" },
      max_health = 600,
      corpse = "big-remnants",
      collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      energy_source = {
        type = "electric",
        usage_priority = "solar",
      },
      picture = {
        layers = {
          -- Base
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
          -- Mask
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-mask.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            tint = util.copy(bobmods.lib.standard_tier_colors[4]), -- T4
            scale = 0.5,
          },
          -- Highlights
          {
            filename = "__bobpower__/graphics/solar-panel-large/solar-panel-large-highlights.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            blend_mode = "additive",
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      overlay = {
        layers = {
          {
            filename = "__bobpower__/graphics/solar-panel-large/base/solar-panel-large-shadow-overlay.png",
            priority = "high",
            width = 308,
            height = 274,
            shift = util.by_pixel(5, 3.5),
            scale = 0.5,
          },
        },
      },
      production = "240kW",
      fast_replaceable_group = "solar-panel",
      impact_category = "glass",
    },
  })
end
