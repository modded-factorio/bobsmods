require("prototypes.recipe-updates")
require("prototypes.technology-updates")

data.raw.recipe["copper-cable"].category = "electronics"

if data.raw["recipe-category"]["chemical-furnace"] then
  if data.raw.recipe["carbon"] then
    data.raw.recipe["carbon"].category = "chemical-furnace"
  end
end

if data.raw["recipe-category"]["mixing-furnace"] then
  if data.raw.recipe["solder-alloy"] then
    data.raw.recipe["solder-alloy"].category = "mixing-furnace"
  end
  if data.raw.recipe["solder-alloy-lead"] then
    data.raw.recipe["solder-alloy-lead"].category = "mixing-furnace"
  end
end

-- add Assembling Machine catagory.
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "crafting-machine")

-- add new electronics crafting categories
bobmods.lib.machine.type_if_add_category("character", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("god-controller", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics-machine")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "electronics-with-fluid")

if settings.startup["bobmods-colorupdate"].value == true then
  data.raw.item["basic-circuit-board"].icon = "__bobelectronics__/graphics/icons/colour-coded/basic-circuit-board.png"
  data.raw.item["circuit-board"].icon = "__bobelectronics__/graphics/icons/colour-coded/circuit-board.png"
  data.raw.item["superior-circuit-board"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/superior-circuit-board.png"
  data.raw.item["multi-layer-circuit-board"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/multi-layer-circuit-board.png"
  data.raw.item["electronic-circuit"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/basic-electronic-circuit-board.png"
  data.raw.item["advanced-circuit"].icon = "__bobelectronics__/graphics/icons/colour-coded/electronic-circuit-board.png"
  data.raw.item["processing-unit"].icon = "__bobelectronics__/graphics/icons/colour-coded/electronic-logic-board.png"
  data.raw.item["advanced-processing-unit"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/electronic-processing-board.png"

  data.raw.item["basic-circuit-board"].icon_size = 128
  data.raw.item["circuit-board"].icon_size = 128
  data.raw.item["superior-circuit-board"].icon_size = 128
  data.raw.item["multi-layer-circuit-board"].icon_size = 128
  data.raw.item["electronic-circuit"].icon_size = 128
  data.raw.item["advanced-circuit"].icon_size = 128
  data.raw.item["processing-unit"].icon_size = 128
  data.raw.item["advanced-processing-unit"].icon_size = 128
end
