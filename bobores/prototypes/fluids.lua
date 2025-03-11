bobmods.ores.water = {
  name = "bob-ground-water",
  icon = "__base__/graphics/icons/fluid/water.png",
  icon_size = 64,
  subgroup = "fluid",
  category = "water",
  infinite = true,
  minimum = 400000,
  normal = 400000,
  highlight = true,
  resource_patch_search_radius = 12,
  mining_time = 1,
  tint = { r = 0.2, g = 0.8, b = 1 },
  map_color = { r = 0.2, g = 0.8, b = 1 },
  collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
  particle = nil,
  items = {
    {
      type = "fluid",
      name = "water",
      amount_min = 10,
      amount_max = 10,
      probability = 1,
    },
  },
  sprite = {
    sheet = 5,
  },
  walking_sound = "oil",
  driving_sound = "oil",
  disable_map_grid = true,
  enabled = false,
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.water.create_autoplace()
  local ground_water_parameters
  if settings.startup["bobmods-ores-startinggroundwater"].value == true then
    ground_water_parameters = {
      name = "bob-ground-water",
      order = "c",
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1 / 48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 1000000,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 2,
    }
  else
    ground_water_parameters = {
      name = "bob-ground-water",
      order = "c",
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1 / 48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 1000000,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
  end
  data.raw.resource["bob-ground-water"].autoplace =
    bobmods.lib.resource_autoplace.resource_autoplace_settings(ground_water_parameters)
  bobmods.ores.water.enabled = true
end

bobmods.ores.lithia_water = {
  name = "bob-lithia-water",
  icon = "__bobores__/graphics/icons/lithia-water.png",
  subgroup = "fluid",
  category = "water",
  infinite = true,
  minimum = 2000000,
  normal = 2000000,
  highlight = true,
  resource_patch_search_radius = 12,
  mining_time = 1,
  tint = { r = 0.5, g = 0.7, b = 0.8 },
  map_color = { r = 0.5, g = 1, b = 0.8 },
  collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
  particle = nil,
  items = {
    {
      type = "fluid",
      name = "bob-lithia-water",
      amount_min = 10,
      amount_max = 10,
      probability = 1,
    },
  },
  sprite = {
    sheet = 5,
  },
  walking_sound = "oil",
  driving_sound = "oil",
  disable_map_grid = true,
  enabled = false,
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.lithia_water.create_autoplace()
  bobmods.lib.resource.generate_autoplace_control("bob-lithia-water")
  data.raw.resource["bob-lithia-water"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-lithia-water",
    order = "c",
    base_density = 5,
    base_spots_per_km2 = 0.6,
    random_probability = 1 / 48,
    random_spot_size_minimum = 1,
    random_spot_size_maximum = 1,
    additional_richness = 1000000,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1,
  })
  bobmods.ores.lithia_water.enabled = true
end

data:extend({
  {
    type = "fluid",
    name = "bob-lithia-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2kJ",
    base_color = { r = 0, g = 0.34, b = 0.6 },
    flow_color = { r = 0.7, g = 1.0, b = 1.0 },
    icon = "__bobores__/graphics/icons/lithia-water.png",
    icon_size = 32,
    order = "a[fluid]-a[water-lithia]",
  },
})
