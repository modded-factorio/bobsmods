bobmods.ores.tin = {
  name = "bob-tin-ore",
  tint = { r = 0.95, g = 0.95, b = 0.95 },
  map_color = { r = 0.600, g = 0.600, b = 0.600 },
  mining_time = 0.8,
  enabled = false,
  icon = "__bobores__/graphics/icons/tin-ore.png",
  stage_mult = 100,
  item = {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite = {
    sheet = 1,
  },
  --[[
  autoplace = 
  {
    create = true,
    starting_area = true,
    richness = 1.2,
    size = 1.5
  }
]]
  --
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.tin.create_autoplace()
  data.raw.resource["bob-tin-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-tin-ore",
    order = "c",
    base_density = 8,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1.1,
    starting_rq_factor_multiplier = 1.2,
  })
  bobmods.ores.tin.enabled = true
end
