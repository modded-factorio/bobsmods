if not bobmods then
  bobmods = {}
end
if not bobmods.assembly then
  bobmods.assembly = {}
end

circuit_connector_definitions["bob-steel-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 17,
      main_offset = util.by_pixel(14, -6),
      shadow_offset = util.by_pixel(20.5, 20),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(14, -6),
      shadow_offset = util.by_pixel(20.5, 20),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(14, -6),
      shadow_offset = util.by_pixel(20.5, 20),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(14, -6),
      shadow_offset = util.by_pixel(20.5, 20),
      show_shadow = true,
    },
  })

circuit_connector_definitions["bob-electric-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
  })

require("prototypes.assembly")
require("prototypes.assembly-electronics")
require("prototypes.assembly-burner")
require("prototypes.oil-refinery")
require("prototypes.chemical-plant")
require("prototypes.electric-furnace")
require("prototypes.electrolyser")
require("prototypes.chemical-mixing-furnace")
require("prototypes.distillery")
require("prototypes.fluid-furnace")
require("prototypes.centrifuge")

if feature_flags["quality"] then
  if data.raw["assembling-machine"]["bob-assembling-machine-6"] then
    table.insert(data.raw["assembling-machine"]["bob-assembling-machine-4"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-assembling-machine-5"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-assembling-machine-6"].allowed_effects, "quality")
  end
  if data.raw["assembling-machine"]["bob-electronics-machine-3"] then
    table.insert(data.raw["assembling-machine"]["bob-electronics-machine-1"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electronics-machine-2"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electronics-machine-3"].allowed_effects, "quality")
  end
  if data.raw["assembling-machine"]["bob-chemical-plant-4"] then
    table.insert(data.raw["assembling-machine"]["bob-chemical-plant-2"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-chemical-plant-3"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-chemical-plant-4"].allowed_effects, "quality")
  end
  if data.raw.furnace["bob-electric-furnace-3"] then
    table.insert(data.raw.furnace["bob-electric-furnace-2"].allowed_effects, "quality")
    table.insert(data.raw.furnace["bob-electric-furnace-3"].allowed_effects, "quality")
  end
  if data.raw["assembling-machine"]["bob-electrolyser-5"] then
    table.insert(data.raw["assembling-machine"]["bob-electrolyser-2"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electrolyser-3"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electrolyser-4"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electrolyser-5"].allowed_effects, "quality")
  end
  if data.raw["assembling-machine"]["bob-electric-chemical-mixing-furnace-2"] then
    table.insert(data.raw["assembling-machine"]["bob-electric-chemical-mixing-furnace"].allowed_effects, "quality")
    table.insert(data.raw["assembling-machine"]["bob-electric-chemical-mixing-furnace-2"].allowed_effects, "quality")
  end
end
