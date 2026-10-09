local hit_effects = require("__base__/prototypes/entity/hit-effects")

if settings.startup["bobmods-power-solar"].value == true then
  -- Copied from reskins-library with permission

  local solar_panel = data.raw["solar-panel"]["solar-panel"]
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
      fast_replaceable_group = "solar-panel",
      max_health = 100,
      corpse = "medium-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -0.85, -0.85 }, { 0.85, 0.85 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "26.67kW",
      next_upgrade = "bob-solar-panel-small-2",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large" },
      fast_replaceable_group = "solar-panel",
      max_health = 300,
      corpse = "solar-panel-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -1.85, -1.85 }, { 1.85, 1.85 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "106.67kW",
      next_upgrade = "bob-solar-panel-large-2",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-small-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-small-2" },
      fast_replaceable_group = "solar-panel",
      max_health = 150,
      corpse = "medium-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -0.85, -0.85 }, { 0.85, 0.85 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "40kW",
      next_upgrade = "bob-solar-panel-small-3",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-2" },
      fast_replaceable_group = "solar-panel",
      max_health = 300,
      corpse = "solar-panel-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "90kW",
      water_reflection = {
        pictures = {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-reflection.png",
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
      next_upgrade = "bob-solar-panel-3",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large-2" },
      fast_replaceable_group = "solar-panel",
      max_health = 450,
      corpse = "solar-panel-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -1.85, -1.85 }, { 1.85, 1.85 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "160kW",
      next_upgrade = "bob-solar-panel-large-3",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-small-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-small-3" },
      fast_replaceable_group = "solar-panel",
      max_health = 200,
      corpse = "medium-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -0.85, -0.85 }, { 0.85, 0.85 } },
      selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "60kW",
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-3" },
      fast_replaceable_group = "solar-panel",
      max_health = 400,
      corpse = "solar-panel-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "135kW",
      water_reflection = {
        pictures = {
          filename = "__base__/graphics/entity/solar-panel/solar-panel-reflection.png",
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
    },

    {
      type = "solar-panel",
      name = "bob-solar-panel-large-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      localised_description = { "entity-description.solar-panel" },
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-solar-panel-large-3" },
      fast_replaceable_group = "solar-panel",
      max_health = 600,
      corpse = "solar-panel-remnants",
      dying_explosion = "solar-panel-explosion",
      collision_box = { { -1.85, -1.85 }, { 1.85, 1.85 } },
      selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
      damaged_trigger_effect = hit_effects.entity(),
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
      impact_category = "glass",
      production = "240kW",
    },
  })
end
