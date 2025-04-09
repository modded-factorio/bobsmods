bobmods.ores.sulfur = {
  name = "bob-sulfur",
  tint = { r = 0.8, g = 0.75, b = 0.1 },
  map_color = { r = 1, g = 1, b = 0 },
  mining_time = 0.25,
  enabled = false,
  icon = "__base__/graphics/icons/sulfur.png",
  icon_size = 64,
  stage_mult = 100,
  items = {
    {
      name = "sulfur",
      amount = 1,
    },
  },
  sprite = {
    sheet = 4,
  },
  autoplace = "control-only",
  planets = { "nauvis" },
}

function bobmods.ores.sulfur.create_autoplace()
  data.raw.resource["bob-sulfur"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-sulfur",
    order = "c",
    base_density = 8,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1,
  })
  bobmods.ores.sulfur.enabled = true
end
