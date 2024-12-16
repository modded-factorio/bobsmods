local resource_drop_move = {
  filename = "__base__/sound/item/resource-inventory-move.ogg",
  volume = 0.8
}
local resouce_pick = {
  filename = "__base__/sound/item/resource-inventory-pickup.ogg",
  volume = 0.6
}

if not data.raw.item["gold-ore"] then
  data:extend({
    {
      type = "item",
      name = "gold-ore",
      icon = "__bobplates__/graphics/icons/ore/gold-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[gold-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["lead-ore"] then
  data:extend({
    {
      type = "item",
      name = "lead-ore",
      icon = "__bobplates__/graphics/icons/ore/lead-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[lead-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["silver-ore"] then
  data:extend({
    {
      type = "item",
      name = "silver-ore",
      icon = "__bobplates__/graphics/icons/ore/silver-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[silver-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["tin-ore"] then
  data:extend({
    {
      type = "item",
      name = "tin-ore",
      icon = "__bobplates__/graphics/icons/ore/tin-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[tin-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["tungsten-ore"] then
  data:extend({
    {
      type = "item",
      name = "tungsten-ore",
      icon = "__bobplates__/graphics/icons/ore/tungsten-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[tungsten-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["zinc-ore"] then
  data:extend({
    {
      type = "item",
      name = "zinc-ore",
      icon = "__bobplates__/graphics/icons/ore/zinc-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[zinc-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bauxite-ore"] then
  data:extend({
    {
      type = "item",
      name = "bauxite-ore",
      icon = "__bobplates__/graphics/icons/ore/bauxite-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bauxite-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["rutile-ore"] then
  data:extend({
    {
      type = "item",
      name = "rutile-ore",
      icon = "__bobplates__/graphics/icons/ore/rutile-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[rutile-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["quartz"] then
  data:extend({
    {
      type = "item",
      name = "quartz",
      icon = "__bobplates__/graphics/icons/ore/quartz.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[quartz]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["nickel-ore"] then
  data:extend({
    {
      type = "item",
      name = "nickel-ore",
      icon = "__bobplates__/graphics/icons/ore/nickel-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[nickel-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["cobalt-ore"] then
  data:extend({
    {
      type = "item",
      name = "cobalt-ore",
      icon = "__bobplates__/graphics/icons/ore/cobalt-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[cobalt-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end
