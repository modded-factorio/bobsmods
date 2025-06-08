bobmods.ores.tungsten = {
  name = "bob-tungsten-ore",
  tint = { r = 0.75, g = 0.5, b = 0.25 },
  map_color = { r = 0.5, g = 0.0, b = 0.0 },
  mining_time = 3,
  enabled = false,
  icon = "__bobores__/graphics/icons/tungsten-ore.png",
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
    richness = 0.8,
    size = 1.2
  }
]]
  --
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.tungsten.create_autoplace()
  data.raw.resource["bob-tungsten-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-tungsten-ore",
    order = "c",
    base_density = 8,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1,
  })
  bobmods.ores.tungsten.enabled = true
end
