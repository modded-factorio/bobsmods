require("prototypes.recipe.entity-recipe-updates")
require("prototypes.technology-updates")

data.raw.character.character.inventory_size = settings.startup["bobmods-plates-inventorysize"].value

if data.raw["god-controller"] and data.raw["god-controller"]["default"] then
  data.raw["god-controller"]["default"].inventory_size = settings.startup["bobmods-plates-inventorysize"].value
end

--Sulfur update
data.raw.recipe["sulfur"].allow_productivity = false
data.raw.recipe["sulfuric-acid"].allow_productivity = false

--Electrolyser power
if settings.startup["bobmods-plates-expensive-electrolysis"].value == true then
  if feature_flags["quality"] then
    data.raw.fluid["bob-hydrogen"].fuel_value = "35kJ"
    data.raw.fluid["bob-deuterium"].fuel_value = "35kJ"
    data.raw.recipe["bob-water-electrolysis"].energy_required = 2
    data.raw.recipe["bob-heavy-water-electrolysis"].energy_required = 2
    if data.raw.recipe["bob-sodium-chlorate"] then
      data.raw.recipe["bob-sodium-chlorate"].energy_required = 6
      data.raw.recipe["bob-sodium-perchlorate"].energy_required = 2
    end
  end
  data.raw["assembling-machine"]["bob-electrolyser"].energy_usage = "1200kW"
  data.raw["assembling-machine"]["bob-electrolyser"].energy_source.drain = "13kW"
  data.raw.recipe["bob-water-electrolysis"].allow_consumption = false
  data.raw.recipe["bob-salt-water-electrolysis"].allow_consumption = false
  data.raw.recipe["bob-heavy-water-electrolysis"].allow_consumption = false
  if data.raw.recipe["bob-sodium-chlorate"] then
    data.raw.recipe["bob-sodium-chlorate"].allow_consumption = false
    data.raw.recipe["bob-sodium-perchlorate"].allow_consumption = false
  end
  if data.raw.recipe["bob-brine-electrolysis"] then
    data.raw.recipe["bob-brine-electrolysis"].allow_consumption = false
  end
end

--change icons.
if settings.startup["bobmods-colorupdate"].value == true then
  data.raw.item["battery"].icon = "__bobplates__/graphics/icons/battery-red.png"
  data.raw.item["battery"].icon_size = 64
  data.raw.recipe["battery"].crafting_machine_tint = data.raw.recipe["battery"].crafting_machine_tint or {}
  data.raw.recipe["battery"].crafting_machine_tint.primary = { r = 1.0, g = 0.2, b = 0.1, a = 1.000 }

  data.raw.item["bob-lithium-ion-battery"].icon = "__bobplates__/graphics/icons/battery-blue.png"
  data.raw.item["bob-lithium-ion-battery"].icon_size = 64
  data.raw.recipe["bob-lithium-ion-battery"].crafting_machine_tint = data.raw.recipe["bob-lithium-ion-battery"].crafting_machine_tint
    or {}
  data.raw.recipe["bob-lithium-ion-battery"].crafting_machine_tint.primary = { r = 0.1, g = 0.5, b = 1.0, a = 1.000 }

  data.raw.item["bob-silver-zinc-battery"].icon = "__bobplates__/graphics/icons/battery-purple.png"
  data.raw.item["bob-silver-zinc-battery"].icon_size = 64
  data.raw.recipe["bob-silver-zinc-battery"].crafting_machine_tint = data.raw.recipe["bob-silver-zinc-battery"].crafting_machine_tint
    or {}
  data.raw.recipe["bob-silver-zinc-battery"].crafting_machine_tint.primary = { r = 0.7, g = 0.9, b = 1.0, a = 1.000 }
else
  data.raw.item["battery"].icon = "__bobplates__/graphics/icons/battery.png"
  data.raw.item["battery"].icon_size = 64
end

-- small storage tank recipe move.
if mods["boblogistics"] then
  bobmods.lib.item.set_subgroup("bob-small-storage-tank", "bob-storage-tank")
  bobmods.lib.item.set_subgroup("bob-small-inline-storage-tank", "bob-storage-tank")
end

bobmods.lib.machine.type_if_add_category("assembling-machine", "chemistry", "bob-distillery") -- Adds distilling recipies to chemical plants
if not data.raw.furnace["bob-distillery"] then
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "bob-distillery") -- Adds distilling recipies to assembling machines that can handle fluids
end

-- Reduce cost of Steel and new Steel
if settings.startup["bobmods-plates-cheapersteel"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "steel-plate",
      category = "bob-chemical-furnace",
      enabled = false,
      energy_required = 3.2,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "fluid", name = "bob-oxygen", amount = 10 },
      },
      results = { { type = "item", name = "steel-plate", amount = 1 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
else
  data:extend({
    {
      type = "recipe",
      name = "steel-plate",
      category = "bob-chemical-furnace",
      enabled = false,
      energy_required = 16,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "fluid", name = "bob-oxygen", amount = 50 },
      },
      results = { { type = "item", name = "steel-plate", amount = 2 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

if settings.startup["bobmods-plates-batteryupdate"].value == true then
  data.raw.technology["battery"].prerequisites = { "sulfur-processing", "bob-lead-processing" }
  bobmods.lib.recipe.clear_ingredients("battery")

  bobmods.lib.recipe.add_ingredient("battery", { type = "item", name = "bob-lead-plate", amount = 2 })
  bobmods.lib.recipe.add_ingredient("battery", { type = "fluid", name = "sulfuric-acid", amount = 20 })
  bobmods.lib.recipe.add_ingredient("battery", { type = "item", name = "steel-plate", amount = 1 })
end

data.raw.recipe["steel-plate"].category = "bob-chemical-furnace"
bobmods.lib.tech.add_prerequisite("steel-processing", "bob-electrolysis-1")
bobmods.lib.tech.add_prerequisite("steel-processing", "bob-chemical-processing-1")

--Nuclear fuel update.
data.raw.item["uranium-fuel-cell"].fuel_glow_color = { r = 0, g = 1, b = 0 }
bobmods.lib.item.set_subgroup("uranium-fuel-cell", "bob-fuel-cells")
bobmods.lib.item.set_subgroup("depleted-uranium-fuel-cell", "bob-fuel-cells")
bobmods.lib.recipe.set_subgroup("nuclear-fuel-reprocessing", "bob-fuel-cells")
bobmods.lib.item.set_subgroup("uranium-235", "bob-nuclear")
bobmods.lib.item.set_subgroup("uranium-238", "bob-nuclear")
bobmods.lib.recipe.set_subgroup("uranium-processing", "bob-nuclear")
bobmods.lib.recipe.set_subgroup("kovarex-enrichment-process", "bob-nuclear")

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  bobmods.lib.recipe.disallow_productivity("uranium-fuel-cell")
  bobmods.lib.recipe.remove_ingredient("uranium-fuel-cell", "iron-plate")
  bobmods.lib.recipe.add_ingredient(
    "uranium-fuel-cell",
    { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 }
  )

  data.raw.technology["nuclear-fuel-reprocessing"].icon =
    "__bobplates__/graphics/icons/technology/uranium-nuclear-fuel-reprocessing-new.png"
  data.raw.technology["nuclear-fuel-reprocessing"].icon_size = 128

  data.raw.recipe["nuclear-fuel-reprocessing"].icon =
    "__bobplates__/graphics/icons/nuclear/nuclear-fuel-reprocessing.png"
  data.raw.recipe["nuclear-fuel-reprocessing"].icon_size = 32
  data.raw.recipe["nuclear-fuel-reprocessing"].crafting_machine_tint.secondary = { r = 1, g = 0.7, b = 0 } --Right hand module glows plutonium orange-yellow.

  data.raw.recipe["nuclear-fuel-reprocessing"].energy_required = 120 --up from 60
  bobmods.lib.recipe.add_ingredient(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "depleted-uranium-fuel-cell", amount = 5 }
  ) -- +5 from base
  bobmods.lib.recipe.set_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "uranium-238", amount = 6, ignored_by_productivity = 5 }
  )

  bobmods.lib.recipe.add_result("nuclear-fuel-reprocessing", {
    type = "item",
    name = "bob-empty-nuclear-fuel-cell",
    amount = 10,
    ignored_by_productivity = 10,
    ignored_by_stats = 10,
  })
  bobmods.lib.recipe.add_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "uranium-235", amount = 1, probability = 0.2 }
  )
  bobmods.lib.recipe.add_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "bob-plutonium-239", amount = 1, probability = 0.8 }
  )
  bobmods.lib.recipe.add_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "bob-fusion-catalyst", amount = 1 }
  )
else
  bobmods.lib.recipe.replace_ingredient("uranium-fuel-cell", "iron-plate", "bob-lead-plate")

  bobmods.lib.recipe.set_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "uranium-238", amount = 3, ignored_by_productivity = 2 }
  )
  bobmods.lib.recipe.add_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "bob-lead-plate", amount = 5, ignored_by_productivity = 5 }
  )
  bobmods.lib.recipe.add_result(
    "nuclear-fuel-reprocessing",
    { type = "item", name = "bob-plutonium-239", amount = 1, probability = 0.1 }
  )
end

data.raw["item-subgroup"]["fill-barrel"].group = "fluids"
data.raw["item-subgroup"]["empty-barrel"].group = "fluids"
data.raw["item-subgroup"]["barrel"].group = "fluids"

if data.raw["item-subgroup"]["bob-alien-artifact"] then
  data.raw["item-subgroup"]["bob-alien-artifact"].group = "bob-resource-products"
end

bobmods.lib.create_gas_bottle(data.raw.fluid["bob-hydrogen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-oxygen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-nitrogen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-chlorine"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-hydrogen-chloride"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-nitrogen-dioxide"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-sulfur-dioxide"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-deuterium"])
bobmods.lib.create_gas_bottle(data.raw.fluid["bob-hydrogen-sulfide"])
bobmods.lib.create_gas_bottle(data.raw.fluid["petroleum-gas"])

bobmods.lib.create_fluid_canister(data.raw.fluid["bob-liquid-fuel"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-ferric-chloride-solution"])
bobmods.lib.create_fluid_canister(data.raw.fluid["sulfuric-acid"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-nitric-acid"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-sulfuric-nitric-acid"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-alien-acid"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-alien-explosive"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-alien-poison"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-alien-fire"])
bobmods.lib.create_fluid_canister(data.raw.fluid["bob-tungstic-acid"])

for i, recipe in pairs(data.raw.recipe) do
  if string.sub(recipe.name, -7) == "-barrel" and recipe.category == "crafting-with-fluid" then
    data.raw.recipe[recipe.name].category = "barrelling"
    if bobmods.lib.tech.has_recipe_unlock("fluid-handling", recipe.name) then
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", recipe.name)
      bobmods.lib.tech.add_recipe_unlock("bob-fluid-barrel-processing", recipe.name)
    end
  end
end

if settings.startup["bobmods-plates-vanillabarrelling"].value == true then
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "barrelling") -- Adds barrelling to assembling machines
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "bob-air-pump") -- Adds barrelling to assembling machines
end

bobmods.lib.tech.add_prerequisite("cliff-explosives", "bob-fluid-barrel-processing")
bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "barrel")

if bobmods.greenhouse then
  bobmods.lib.recipe.replace_ingredient("bob-polishing-wheel", "plastic-bar", "wood")
end

if settings.startup["bobmods-plates-purewater"].value == true then
  bobmods.lib.recipe.replace_ingredient("bob-water-electrolysis", "water", "bob-pure-water")
  bobmods.lib.recipe.replace_ingredient("bob-salt-water-electrolysis", "water", "bob-pure-water")
  bobmods.lib.recipe.replace_ingredient("bob-lithium-water-electrolysis", "water", "bob-pure-water")

  bobmods.lib.recipe.remove_result("bob-heavy-water", "water") -- There is no replace_result.
  bobmods.lib.recipe.add_result("bob-heavy-water", { type = "fluid", name = "bob-pure-water", amount = 99.5 })

  bobmods.lib.tech.add_recipe_unlock("bob-electrolysis-1", "bob-distillery")
  bobmods.lib.tech.add_recipe_unlock("bob-electrolysis-1", "bob-pure-water")
  bobmods.lib.tech.add_recipe_unlock("bob-electrolysis-1", "bob-pure-water-from-lithia")
end

data.raw.fluid["petroleum-gas"].gas_temperature = -42
data.raw.fluid["petroleum-gas"].flow_color = { r = 0.6, g = 0.2, b = 0.6 }

data.raw.fluid["crude-oil"].fuel_value = "1.9MJ" --"3.8MJ"
data.raw.fluid["crude-oil"].emissions_multiplier = 10
data.raw.fluid["light-oil"].fuel_value = "1.5MJ" --"3MJ"
data.raw.fluid["light-oil"].emissions_multiplier = 2
data.raw.fluid["heavy-oil"].fuel_value = "1MJ" --"2MJ"
data.raw.fluid["heavy-oil"].emissions_multiplier = 3
data.raw.fluid["petroleum-gas"].fuel_value = "2.3MJ" --"4.6MJ"

data.raw.item["coal"].fuel_emissions_multiplier = 2
data.raw.item["solid-fuel"].fuel_emissions_multiplier = 0.8
data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1.2
data.raw.item["nuclear-fuel"].fuel_emissions_multiplier = 5

-- Stack Sizes
data.raw.item["iron-plate"].stack_size = 200
data.raw.item["copper-plate"].stack_size = 200
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["coal"].stack_size = 200
data.raw.item["uranium-ore"].stack_size = 200
data.raw.item["sulfur"].stack_size = 200
data.raw.item["wood"].stack_size = 200

if not bobmods.ores.cobalt.enabled then
  bobmods.lib.tech.remove_recipe_unlock("bob-cobalt-processing", "bob-cobalt-oxide")
  bobmods.lib.recipe.hide("bob-cobalt-oxide")
end

--Intermediate reorganization
data.raw["item-group"].fluids.icon = "__bobplates__/graphics/icons/technology/fluids.png"
data.raw["item-group"].fluids.icon_size = 64
data.raw["item-subgroup"]["fluid-recipes"].group = "fluids"
data.raw["item-subgroup"]["science-pack"].order = "a"
data.raw["item-subgroup"]["intermediate-product"].order = "c"

data.raw.item["solid-fuel"].subgroup = "bob-chemical-fuels"
data.raw.item["rocket-fuel"].subgroup = "bob-chemical-fuels"
data.raw.item["nuclear-fuel"].subgroup = "bob-chemical-fuels"
data.raw.item["iron-plate"].subgroup = "bob-material"
data.raw.item["copper-plate"].subgroup = "bob-material"
data.raw.item["steel-plate"].subgroup = "bob-material"
data.raw.item["plastic-bar"].subgroup = "bob-resource-chemical"
data.raw.item["uranium-fuel-cell"].order = "r[uranium-processing]-a[uranium-fuel-cell]"
data.raw.item["nuclear-fuel"].subgroup = "bob-chemical-fuels"
data.raw.item["nuclear-fuel"].order = "e[nuclear-fuel]"
data.raw.item["iron-gear-wheel"].subgroup = "bob-gears"
data.raw.item["battery"].subgroup = "intermediate-product"
data.raw.item["explosives"].subgroup = "intermediate-product"
data.raw.item["explosives"].order = "b[chemistry]-a[explosives]"
data.raw.item["sulfur"].subgroup = "bob-resource-chemical"
data.raw.item["sulfur"].order = "f[sulfur]"
if mods["bobgreenhouse"] then
  data.raw.item["bob-wood-pellets"].subgroup = "bob-chemical-fuels"
  data.raw.item["bob-seedling"].subgroup = "bob-resource"
  data.raw.recipe["bob-basic-greenhouse-cycle"].subgroup = "bob-resource"
  data.raw.recipe["bob-advanced-greenhouse-cycle"].subgroup = "bob-resource"
  data.raw.recipe["bob-basic-greenhouse-cycle"].order = "b[greenhouse-cycle-1]"
  data.raw.recipe["bob-advanced-greenhouse-cycle"].order = "b[greenhouse-cycle-2]"
end
data.raw.item["wood"].subgroup = "bob-resource"
data.raw.capsule["raw-fish"].subgroup = "bob-resource"

data.raw.recipe["solid-fuel-from-heavy-oil"].subgroup = "bob-chemical-fuels"
data.raw.recipe["solid-fuel-from-light-oil"].subgroup = "bob-chemical-fuels"
data.raw.recipe["solid-fuel-from-petroleum-gas"].subgroup = "bob-chemical-fuels"
data.raw.recipe["nuclear-fuel"].subgroup = "bob-chemical-fuels"
data.raw.recipe["nuclear-fuel"].order = "e[nuclear-fuel]"
data.raw.recipe["iron-plate"].subgroup = "bob-material-smelting"
data.raw.recipe["copper-plate"].subgroup = "bob-material-smelting"
data.raw.recipe["steel-plate"].subgroup = "bob-material-smelting"
data.raw.recipe["plastic-bar"].subgroup = "bob-resource-chemical"
data.raw.recipe["uranium-fuel-cell"].subgroup = "bob-fuel-cells"
data.raw.recipe["nuclear-fuel-reprocessing"].order = "r[uranium-processing]-b[reprocessing]"

for _, recipe_name in pairs({
  "advanced-oil-processing",
  "basic-oil-processing",
  "bob-oil-processing",
  "bob-carbon-dioxide-oil-processing",
  "coal-liquefaction",
}) do
  local recipe = data.raw.recipe[recipe_name]
  if recipe then
    recipe.subgroup = "bob-fluid-oil"
  end
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-air-pump",
    "bob-air-pump-2",
    "bob-air-pump-3",
    "bob-air-pump-4",
    "bob-water-pump",
    "bob-water-pump-2",
    "bob-water-pump-3",
    "bob-water-pump-4",
    "bob-void-pump",
    "bob-distillery",
    "bob-electrolyser",
    "stone-furnace",
    "steel-furnace",
    "electric-furnace",
    "bob-stone-mixing-furnace",
    "bob-steel-mixing-furnace",
    "bob-electric-mixing-furnace",
    "bob-stone-chemical-furnace",
    "bob-steel-chemical-furnace",
    "bob-electric-chemical-furnace",
    "uranium-fuel-cell",
    "bob-polishing-wheel",
    "bob-lithium-ion-battery",
    "bob-silver-zinc-battery",
    "battery",
  })
end
