bobmods.ores.nickel =
{
  name = "nickel-ore",
  tint = {r=0.54, g=0.8, b=0.75},
  map_color = {r=0.4, g=0.8, b=0.6},
  mining_time = 1.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/nickel-ore.png",
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
--[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.8,
    size = 1.2
  }
]]--
  autoplace = "control-only",
}


function bobmods.ores.nickel.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("nickel-ore", {
      name = "nickel-ore",
      order = "c",
      base_density = 5,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
    }
    )
  else
    data.raw.resource["nickel-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "nickel-ore",
      order = "c",
      base_density = 5,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
    }
  end
  bobmods.ores.nickel.enabled = true
end
