local resource_drop_move = {
  filename = "__base__/sound/item/resource-inventory-move.ogg",
  volume = 0.8,
}
local resouce_pick = {
  filename = "__base__/sound/item/resource-inventory-pickup.ogg",
  volume = 0.6,
}

if not data.raw.item["bob-gold-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-gold-ore",
      icon = "__bobplates__/graphics/icons/ore/gold-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-gold-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-lead-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-lead-ore",
      icon = "__bobplates__/graphics/icons/ore/lead-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-lead-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-silver-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-silver-ore",
      icon = "__bobplates__/graphics/icons/ore/silver-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-silver-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-tin-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-tin-ore",
      icon = "__bobplates__/graphics/icons/ore/tin-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-tin-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-tungsten-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-tungsten-ore",
      icon = "__bobplates__/graphics/icons/ore/tungsten-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-tungsten-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-zinc-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-zinc-ore",
      icon = "__bobplates__/graphics/icons/ore/zinc-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-zinc-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-bauxite-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-bauxite-ore",
      icon = "__bobplates__/graphics/icons/ore/bauxite-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-bauxite-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-rutile-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-rutile-ore",
      icon = "__bobplates__/graphics/icons/ore/rutile-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-rutile-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-quartz"] then
  data:extend({
    {
      type = "item",
      name = "bob-quartz",
      icon = "__bobplates__/graphics/icons/ore/quartz.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-quartz]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-nickel-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-nickel-ore",
      icon = "__bobplates__/graphics/icons/ore/nickel-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-nickel-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end

if not data.raw.item["bob-cobalt-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-cobalt-ore",
      icon = "__bobplates__/graphics/icons/ore/cobalt-ore.png",
      icon_size = 32,
      subgroup = "bob-ores",
      order = "b-d[bob-cobalt-ore]",
      stack_size = 200,
      drop_sound = resource_drop_move,
      inventory_move_sound = resource_drop_move,
      pick_sound = resouce_pick,
    },
  })
end
