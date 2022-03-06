bobmods.ores.lead =
{
  name = "lead-ore",
  icon = "__bobores__/graphics/icons/lead-ore.png",
  mining_time = 0.75,
  tint = {r = 0.5, g = 0.5, b = 0.5},
  map_color = {r=0.0, g=0.0, b=0.50},
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
    stack_size = 200
  },
  stage_mult = 100,
  sprite =
  {
    sheet = 1
  },
  enabled = false,
--[[
  autoplace = 
  {
    create = true,
    starting_area = true,
    richness = 1.2,
    size = 1
  }
]]--
  autoplace = "control-only",
}



function bobmods.ores.lead.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("lead-ore", {
      name = "lead-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    }
    )
  else
    data.raw.resource["lead-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "lead-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    }
  end
  bobmods.ores.lead.enabled = true
end
