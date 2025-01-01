bobmods.ores.silver = {
  name = "bob-silver-ore",
  tint = { r = 0.875, g = 0.975, b = 1 },
  map_color = { r = 0.7, g = 0.9, b = 0.9 },
  mining_time = 0.625,
  enabled = false,
  icon = "__bobores__/graphics/icons/silver-ore.png",
  stage_mult = 100,
  item = {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite = {
    sheet = 2,
  },
  --[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 1.2,
    size = 1
  }
]]
  --
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.silver.create_autoplace()
  data.raw.resource["bob-silver-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-silver-ore",
    order = "c",
    base_density = 4,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 0.9,
  })
  bobmods.ores.silver.enabled = true
end
