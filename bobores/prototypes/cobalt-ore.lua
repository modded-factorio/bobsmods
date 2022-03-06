bobmods.ores.cobalt =
{
  name = "cobalt-ore",
  tint = {r = 0.3, g = 0.53, b = 0.77},
  map_color = {r=0.18, g=0.35, b=0.53},
  mining_time = 1.75,
  enabled = false,
  icon = "__bobores__/graphics/icons/cobalt-ore.png",
  stage_mult = 100,
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 1
  },
--[[  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.6,
    size = 1
  }
]]--
  autoplace = "control-only",
}

function bobmods.ores.cobalt.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("cobalt-ore", {
      name = "cobalt-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    }
    )
  else
    data.raw.resource["cobalt-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "cobalt-ore",
      order = "c",
      base_density = 4,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    }
  end
  bobmods.ores.cobalt.enabled = true
end
