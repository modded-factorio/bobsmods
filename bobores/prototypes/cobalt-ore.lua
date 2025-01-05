bobmods.ores.cobalt = {
  name = "bob-cobalt-ore",
  tint = { r = 0.3, g = 0.53, b = 0.77 },
  map_color = { r = 0.18, g = 0.35, b = 0.53 },
  mining_time = 1.75,
  enabled = false,
  icon = "__bobores__/graphics/icons/cobalt-ore.png",
  stage_mult = 100,
  item = {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite = {
    sheet = 1,
  },
  --[[  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.6,
    size = 1
  }
]]
  --
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.cobalt.create_autoplace()
  data.raw.resource["bob-cobalt-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-cobalt-ore",
    order = "c",
    base_density = 4,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 0.8,
  })
  bobmods.ores.cobalt.enabled = true
end
