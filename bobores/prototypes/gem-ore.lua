bobmods.ores.gems = {
  name = "gem-ore",
  map_color = { r = 0.25, g = 1, b = 0.25 },
  mining_time = 2.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/gem-ore.png",
  stage_mult = 2,
  particle = "gem-ore-particle",
  sprite = {
    filename = "__bobores__/graphics/entity/gem-ore/gem-ore.png",
    width = 38,
    height = 38,
    frame_count = 4,
    variation_count = 8,
    -- hr_version can now be specified as a table within sprite, which uses the same table values as sprite.
  },
  --[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.01,
    size = 1
  }
]]
  --
  autoplace = "control-only",
}

function bobmods.ores.gems.create_autoplace()
  data.raw.resource["gem-ore"].autoplace = bobmods.lib.resource_autoplace.resource_autoplace_settings({
    name = "gem-ore",
    order = "c",
    base_density = 0.1,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1,
  })
  bobmods.ores.gems.enabled = true
end

data:extend({
  {
    type = "optimized-particle",
    name = "gem-ore-particle",
    flags = { "not-on-map" },
    life_time = 180,
    pictures = {
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1,
      },
    },
    shadows = {
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1,
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1,
      },
    },
  },
})
