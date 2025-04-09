bobmods.ores.thorium = {
  name = "bob-thorium-ore",
  tint = { r = 1, g = 1, b = 0.25 },
  map_color = { r = 0.75, g = 1, b = 0.25 },
  mining_time = 2.5,
  enabled = false, --because It is controlled by a settings.lua option
  -- notice the icon line is missing! Icon will now be generated!
  stage_mult = 50,
  required_fluid = "sulfuric-acid",
  fluid_amount = 10,
  item = {
    create = true,
    create_variations = true,
    subgroup = "bob-ores",
  },
  sprite = {
    sheet = 6, --sheet 6 is a tintable uranium clone
  },
  effect = {
    -- the new effects section works like the sprite section. You can specify a sheet to generate from a pre-defined seet with a tint
    -- or specify options to use your own sheet, like in the gem-ore file.
    sheet = 6, --only sheet 6 exists right now

    -- the following lines of the effect table are not needed, but are here for the example
    animation_period = 5,
    animation_period_deviation = 1,
    darkness_multiplier = 3.6,
    min_alpha = 0.2,
    max_alpha = 0.3,
  },
  autoplace = "control-only",
  drop_sound = { filename = "__base__/sound/item/nuclear-inventory-move.ogg", volume = 0.6 },
  inventory_move_sound = { filename = "__base__/sound/item/nuclear-inventory-move.ogg", volume = 0.6 },
  pick_sound = { filename = "__base__/sound/item/nuclear-inventory-pickup.ogg", volume = 0.6 },
  planets = { "nauvis" },
}

function bobmods.ores.thorium.create_autoplace()
  data.raw.resource["bob-thorium-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "bob-thorium-ore",
    order = "c",
    base_density = 0.9,
    base_spots_per_km2 = 1.25,
    has_starting_area_placement = false,
    random_spot_size_minimum = 2,
    random_spot_size_maximum = 4,
    regular_rq_factor_multiplier = 1,
  })
  bobmods.ores.thorium.enabled = true
end
