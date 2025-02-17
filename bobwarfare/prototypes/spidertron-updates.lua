data.raw["spider-vehicle"]["spidertron"].order = "b[personal-transport]-c[spidertron]-c[spider]"
data.raw["item-with-entity-data"]["spidertron"].order = "b[personal-transport]-c[spidertron]-c[spider]"

data.raw["spider-vehicle"]["spidertron"].resistances = {
  { type = "physical", decrease = 15, percent = 60 },
  { type = "impact", decrease = 50, percent = 80 },
  { type = "bob-pierce", percent = 50 },
  { type = "electric", decrease = 0, percent = 70 },
  { type = "explosion", decrease = 30, percent = 65 },
  { type = "acid", decrease = 5, percent = 70 },
  { type = "fire", decrease = 20, percent = 85 },
  { type = "poison", decrease = 10, percent = 80 },
  { type = "laser", decrease = 0, percent = 70 },
  { type = "bob-plasma", decrease = 0, percent = 90 },
}

local vanilla_spidertron_leg_resistances = {
  { type = "physical", decrease = 15, percent = 60 },
  { type = "impact", decrease = 50, percent = 80 },
  { type = "bob-pierce", percent = 50 },
  { type = "electric", decrease = 0, percent = 70 },
  { type = "explosion", percent = 100 },
  { type = "acid", decrease = 5, percent = 70 },
  { type = "fire", percent = 100 },
  { type = "poison", decrease = 10, percent = 80 },
  { type = "laser", decrease = 0, percent = 70 },
  { type = "bob-plasma", decrease = 0, percent = 90 },
}
data.raw["spider-leg"]["spidertron-leg-1"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-2"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-3"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-4"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-5"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-6"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-7"].resistances = vanilla_spidertron_leg_resistances
data.raw["spider-leg"]["spidertron-leg-8"].resistances = vanilla_spidertron_leg_resistances

bobmods.lib.recipe.remove_ingredient("spidertron", "raw-fish")
bobmods.lib.recipe.remove_ingredient("spidertron", "radar")
bobmods.lib.recipe.remove_ingredient("spidertron", "processing-unit")
bobmods.lib.tech.remove_prerequisite("spidertron", "efficiency-module-3")
bobmods.lib.tech.remove_prerequisite("spidertron", "exoskeleton-equipment")

bobmods.lib.tech.add_prerequisite("spidertron", "bob-walking-vehicle")

if data.raw.technology["logistics-4"] then
  bobmods.lib.tech.replace_prerequisite("bob-logistic-spidertron", "logistics-3", "logistics-4")
end
if bobmods.tech and bobmods.tech.advanced_logistic_science then
  bobmods.lib.tech.replace_science_pack(
    "bob-logistic-spidertron",
    "utility-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.remove_prerequisite("bob-logistic-spidertron", "utility-science-pack")
  bobmods.lib.tech.add_prerequisite("bob-logistic-spidertron", "bob-advanced-logistic-science-pack")
end

local function spidertron_burner_energy_source()
  return {
    type = "burner",
    fuel_categories = { "chemical" },
    effectivity = 1,
    fuel_inventory_size = 1,
    smoke = {
      {
        name = "car-smoke",
        deviation = { 0.25, 0.25 },
        frequency = 200,
        position = { 0, -1.5 },
        starting_frame = 0,
        starting_frame_deviation = 60,
      },
    },
  }
end

local function add_antron_power_supply()
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "bob-rtg", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-rtg")
  elseif data.raw.item["bob-vehicle-fission-reactor-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-antron",
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-vehicle-fission-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "fission-reactor-equipment", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "fission-reactor-equipment")
  end
end

local function add_tankotron_power_supply()
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "bob-rtg", amount = 2 })
  elseif data.raw.item["bob-vehicle-fission-reactor-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-tankotron",
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-tankotron",
      { type = "item", name = "fission-reactor-equipment", amount = 2 }
    )
  end
end

local function remove_spidertron_power_supply()
  bobmods.lib.recipe.remove_ingredient("spidertron", "fission-reactor-equipment")
  bobmods.lib.tech.remove_prerequisite("spidertron", "fission-reactor-equipment")
  if bobmods.lib.tech.has_recipe_unlock("nuclear-power", "uranium-fuel-cell") then
    bobmods.lib.tech.add_prerequisite("spidertron", "nuclear-power")
  else
    bobmods.lib.tech.add_prerequisite("spidertron", "uranium-processing")
  end
end

local function replace_spidertron_power_supply()
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.replace_ingredient("spidertron", "fission-reactor-equipment", "bob-rtg")
    bobmods.lib.tech.replace_prerequisite("spidertron", "fission-reactor-equipment", "bob-rtg")
  elseif data.raw.item["bob-vehicle-fission-reactor-equipment-1"] then
    bobmods.lib.recipe.replace_ingredient(
      "spidertron",
      "fission-reactor-equipment",
      "bob-vehicle-fission-reactor-equipment-1"
    )
    bobmods.lib.tech.replace_prerequisite(
      "spidertron",
      "fission-reactor-equipment",
      "bob-vehicle-fission-reactor-equipment-1"
    )
  end
end

local function add_logistic_spidertron_power_supply()
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.add_ingredient("bob-heavy-spidertron", { type = "item", name = "bob-rtg", amount = 2 })
  elseif data.raw.item["bob-vehicle-fission-reactor-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "fission-reactor-equipment", amount = 2 }
    )
  end
end

local function add_heavy_spidertron_power_supply()
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.add_ingredient("bob-heavy-spidertron", { type = "item", name = "bob-rtg", amount = 3 })
    bobmods.lib.tech.add_prerequisite("bob-heavy-spidertron", "bob-rtg")
  elseif data.raw.item["bob-vehicle-fission-reactor-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 3 }
    )
    bobmods.lib.tech.add_prerequisite("bob-heavy-spidertron", "bob-vehicle-fission-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "fission-reactor-equipment", amount = 3 }
    )
    bobmods.lib.tech.add_prerequisite("bob-heavy-spidertron", "fission-reactor-equipment")
  end
end

if settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "all" then
  data.raw["spider-vehicle"]["bob-antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_burner_energy_source()
  remove_spidertron_power_supply()
  data.raw["spider-vehicle"]["bob-heavy-spidertron"].energy_source = spidertron_burner_energy_source()
elseif settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "nothighest" then
  data.raw["spider-vehicle"]["bob-antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_burner_energy_source()
  remove_spidertron_power_supply()
  add_heavy_spidertron_power_supply()
elseif settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "default" then
  data.raw["spider-vehicle"]["bob-antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["bob-logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  replace_spidertron_power_supply()
  add_heavy_spidertron_power_supply()
else --"none"
  add_antron_power_supply()
  add_tankotron_power_supply()
  add_logistic_spidertron_power_supply()
  replace_spidertron_power_supply()
  add_heavy_spidertron_power_supply()
end

if settings.startup["bobmods-warfare-spidertron-overhaul"].value == true then
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-leg-segment")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-knee")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-foot")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-hip")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-leg")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-frame")
  bobmods.lib.tech.add_recipe_unlock("bob-walking-vehicle", "bob-mech-brain")
  bobmods.lib.tech.add_recipe_unlock("bob-tankotron", "bob-mech-armor-plate")
  bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "low-density-structure")

  bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "bob-mech-leg", amount = 6 })
  bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "bob-mech-frame", amount = 1 })
  bobmods.lib.recipe.set_energy_required("bob-antron", 4)

  bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "bob-mech-leg", amount = 6 })
  bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "bob-mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "bob-mech-armor-plate", amount = 5 })
  bobmods.lib.recipe.set_energy_required("bob-tankotron", 5)

  bobmods.lib.recipe.remove_ingredient("spidertron", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "bob-mech-leg", amount = 8 })
  bobmods.lib.recipe.remove_ingredient("spidertron", "low-density-structure")
  bobmods.lib.recipe.remove_ingredient("spidertron", "efficiency-module-3")
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "bob-mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "bob-mech-armor-plate", amount = 10 })
  bobmods.lib.recipe.set_energy_required("spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("spidertron", "bob-walking-vehicle", "bob-tankotron")

  bobmods.lib.recipe.add_ingredient("bob-logistic-spidertron", { type = "item", name = "bob-mech-leg", amount = 8 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-spidertron", { type = "item", name = "bob-mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-spidertron",
    { type = "item", name = "bob-mech-armor-plate", amount = 5 }
  )
  bobmods.lib.recipe.set_energy_required("bob-logistic-spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("bob-logistic-spidertron", "bob-walking-vehicle", "bob-tankotron")

  bobmods.lib.recipe.add_ingredient("bob-heavy-spidertron", { type = "item", name = "bob-mech-leg", amount = 8 })
  bobmods.lib.recipe.add_ingredient("bob-heavy-spidertron", { type = "item", name = "bob-mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-heavy-spidertron",
    { type = "item", name = "bob-mech-armor-plate", amount = 20 }
  )
  bobmods.lib.recipe.set_energy_required("bob-heavy-spidertron", 6)

  if data.raw.item["bob-rubber"] then
    bobmods.lib.recipe.add_ingredient("bob-mech-foot", { type = "item", name = "bob-rubber", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-wood-processing")
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-mech-leg-segment", "pipe", "bob-titanium-pipe")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mech-hip", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-mech-knee", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-mech-hip", { type = "item", name = "bob-titanium-bearing", amount = 4 })
    bobmods.lib.recipe.add_ingredient("bob-mech-knee", { type = "item", name = "bob-titanium-bearing", amount = 2 })
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-mech-leg-segment", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-nitinol-processing")
  end

  if data.raw.item["bob-insulated-cable"] then
    bobmods.lib.recipe.replace_ingredient("bob-mech-leg", "copper-cable", "bob-insulated-cable")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-mech-armor-plate", "steel-plate", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-tankotron", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-mech-brain", { type = "item", name = "bob-solder", amount = 120 })
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-mech-brain",
      { type = "item", name = "bob-advanced-processing-unit", amount = 20 }
    )
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-advanced-processing-unit")
  else
    bobmods.lib.recipe.add_ingredient("bob-mech-brain", { type = "item", name = "efficiency-module-3", amount = 6 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "efficiency-module-3")
  end

  if data.raw.item["bob-module-case"] then
    bobmods.lib.recipe.add_ingredient("bob-mech-brain", { type = "item", name = "bob-module-case", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "modules")
  elseif data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.add_ingredient("bob-mech-brain", { type = "item", name = "bob-aluminium-plate", amount = 10 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-aluminium-processing")
  else
    bobmods.lib.recipe.add_ingredient("bob-mech-brain", { type = "item", name = "steel-plate", amount = 10 })
  end
else
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.remove_ingredient("spidertron", "efficiency-module-3")
    bobmods.lib.tech.remove_prerequisite("spidertron", "efficiency-module-3")
    bobmods.lib.recipe.add_ingredient(
      "spidertron",
      { type = "item", name = "bob-advanced-processing-unit", amount = 10 }
    )

    bobmods.lib.recipe.add_ingredient(
      "bob-antron",
      { type = "item", name = "bob-advanced-processing-unit", amount = 8 }
    )
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "bob-advanced-processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-tankotron",
      { type = "item", name = "bob-advanced-processing-unit", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-logistic-spidertron",
      { type = "item", name = "bob-advanced-processing-unit", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "bob-advanced-processing-unit", amount = 16 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "efficiency-module-3", amount = 2 })
    bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "efficiency-module-3")
    bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "efficiency-module-3", amount = 2 })
    bobmods.lib.recipe.add_ingredient(
      "bob-logistic-spidertron",
      { type = "item", name = "efficiency-module-3", amount = 3 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-heavy-spidertron",
      { type = "item", name = "efficiency-module-3", amount = 4 }
    )
  end

  bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "exoskeleton-equipment", amount = 3 })
  bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("bob-antron", { type = "item", name = "low-density-structure", amount = 100 })
  bobmods.lib.tech.add_prerequisite("bob-walking-vehicle", "low-density-structure")

  bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "exoskeleton-equipment", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-tankotron", { type = "item", name = "low-density-structure", amount = 120 })

  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-spidertron",
    { type = "item", name = "exoskeleton-equipment", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-spidertron",
    { type = "item", name = "low-density-structure", amount = 100 }
  )

  bobmods.lib.recipe.add_ingredient(
    "bob-heavy-spidertron",
    { type = "item", name = "exoskeleton-equipment", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-heavy-spidertron",
    { type = "item", name = "low-density-structure", amount = 200 }
  )
end

if data.raw.item["bob-titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("bob-logistic-spidertron", "steel-chest", "bob-titanium-chest")
end

if data.raw["equipment-category"]["spidertron"] and data.raw["equipment-category"]["vehicle"] then
  data.raw["equipment-grid"]["bob-logistic-spidertron-equipment-grid"].equipment_categories =
    { "spidertron", "vehicle" }
  if data.raw["equipment-category"]["armoured-vehicle"] then
    data.raw["equipment-grid"]["bob-antron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
    data.raw["equipment-grid"]["bob-tankotron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
    data.raw["equipment-grid"]["bob-heavy-spidertron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
  end
end
