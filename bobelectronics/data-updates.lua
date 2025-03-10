require("prototypes.recipe-updates")
require("prototypes.technology-updates")

data.raw.recipe["copper-cable"].category = "bob-electronics"
data.raw.item["copper-cable"].subgroup = "bob-electronic-components"
data.raw.item["copper-cable"].order = "0-a1"

if data.raw["recipe-category"]["bob-chemical-furnace"] then
  if data.raw.recipe["bob-carbon"] then
    data.raw.recipe["bob-carbon"].category = "bob-chemical-furnace"
  end
end

if data.raw["recipe-category"]["bob-mixing-furnace"] then
  if data.raw.recipe["bob-solder-alloy"] then
    data.raw.recipe["bob-solder-alloy"].category = "bob-mixing-furnace"
  end
  if data.raw.recipe["bob-solder-alloy-lead"] then
    data.raw.recipe["bob-solder-alloy-lead"].category = "bob-mixing-furnace"
  end
end

-- add new electronics crafting categories
bobmods.lib.machine.type_if_add_category("character", "crafting", "bob-electronics")
bobmods.lib.machine.type_if_add_category("god-controller", "crafting", "bob-electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "bob-electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "bob-electronics-machine")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "bob-electronics-with-fluid")

if settings.startup["bobmods-colorupdate"].value == true then
  data.raw.item["bob-basic-circuit-board"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/basic-circuit-board.png"
  data.raw.item["bob-circuit-board"].icon = "__bobelectronics__/graphics/icons/colour-coded/circuit-board.png"
  data.raw.item["bob-superior-circuit-board"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/superior-circuit-board.png"
  data.raw.item["bob-multi-layer-circuit-board"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/multi-layer-circuit-board.png"
  data.raw.item["electronic-circuit"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/basic-electronic-circuit-board.png"
  data.raw.item["advanced-circuit"].icon = "__bobelectronics__/graphics/icons/colour-coded/electronic-circuit-board.png"
  data.raw.item["processing-unit"].icon = "__bobelectronics__/graphics/icons/colour-coded/electronic-logic-board.png"
  data.raw.item["bob-advanced-processing-unit"].icon =
    "__bobelectronics__/graphics/icons/colour-coded/electronic-processing-board.png"

  data.raw.item["bob-basic-circuit-board"].icon_size = 128
  data.raw.item["bob-circuit-board"].icon_size = 128
  data.raw.item["bob-superior-circuit-board"].icon_size = 128
  data.raw.item["bob-multi-layer-circuit-board"].icon_size = 128
  data.raw.item["electronic-circuit"].icon_size = 128
  data.raw.item["advanced-circuit"].icon_size = 128
  data.raw.item["processing-unit"].icon_size = 128
  data.raw.item["bob-advanced-processing-unit"].icon_size = 128
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-basic-electronic-components",
    "bob-electronic-components",
    "bob-integrated-electronics",
    "bob-processing-electronics",
    "electronic-circuit",
    "advanced-circuit",
    "processing-unit",
    "bob-advanced-processing-unit",
    "bob-circuit-board",
    "bob-superior-circuit-board",
    "bob-multi-layer-circuit-board",
    "arithmetic-combinator",
    "decider-combinator",
    "constant-combinator",
    "bob-insulated-cable",
    "assembling-machine-1",
    "splitter",
    "inserter",
    "lab",
    "small-lamp",
    "repair-pack",
    "electric-mining-drill",
    "radar",
  })
  if settings.startup["bobmods-colorupdate"].value == true then
    bobmods.lib.recipe.update_recycling_recipe_icon(
      "bob-basic-circuit-board-recycling",
      "__bobelectronics__/graphics/icons/colour-coded/basic-circuit-board.png",
      128
    )
  end
end
