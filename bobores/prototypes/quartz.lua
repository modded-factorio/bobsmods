bobmods.ores.quartz =
{
  name = "quartz",
  tint = {r = 1, g = 1, b = 1},
  map_color = {r = 1, g = 1, b = 1},
  mining_time = 0.625,
  enabled = false,
  icon = "__bobores__/graphics/icons/quartz.png",
  stage_mult = 100,
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 3
  },
--[[
  autoplace = 
  {
    create = true,
    starting_area = true,
    richness = 1,
    size = 1
  }
]]--
  autoplace = "control-only",
}

function bobmods.ores.quartz.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("quartz", {
      name = "quartz",
      order = "c",
      base_density = 4,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    }
    )
  else
    data.raw.resource["quartz"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "quartz",
      order = "c",
      base_density = 4,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    }
  end
  bobmods.ores.quartz.enabled = true
end
