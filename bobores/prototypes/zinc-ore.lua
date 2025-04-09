bobmods.ores.zinc = {
  name = "bob-zinc-ore",
  tint = { r = 0.34, g = 0.9, b = 0.81 },
  map_color = { r = 0.5, g = 1, b = 1 },
  mining_time = 1.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/zinc-ore.png",
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
    richness = 1,
    size = 1.2
  }
]]
  --
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.zinc.create_autoplace()
  data.raw.resource["bob-zinc-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-zinc-ore",
    order = "c",
    base_density = 4,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 0.8,
  })
  bobmods.ores.zinc.enabled = true
end
