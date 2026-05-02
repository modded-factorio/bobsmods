bobmods.ores.gold = {
  name = "bob-gold-ore",
  tint = { r = 1, g = 0.75, b = 0 },
  map_color = { r = 1, g = 0.7, b = 0 },
  mining_time = 0.75,
  enabled = false,
  icon = "__bobores__/graphics/icons/gold-ore.png",
  stage_mult = 100,
  item = {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite = {
    sheet = 2,
  },
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.gold.create_autoplace()
  data.raw.resource["bob-gold-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-gold-ore",
    order = "c",
    base_density = 4,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 0.9,
  })
  bobmods.ores.gold.enabled = true
end
