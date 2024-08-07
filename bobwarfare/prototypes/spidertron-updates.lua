table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "poison", decrease = 15, percent = 80 })
table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "plasma", decrease = 0, percent = 90 })
table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "bob-pierce", decrease = 0, percent = 50 })

bobmods.lib.recipe.remove_ingredient("spidertron", "raw-fish")
bobmods.lib.recipe.remove_ingredient("spidertron", "radar")
bobmods.lib.tech.remove_prerequisite("spidertron", "effectivity-module-3")
bobmods.lib.tech.remove_prerequisite("spidertron", "exoskeleton-equipment")

bobmods.lib.tech.add_prerequisite("spidertron", "walking-vehicle")

if data.raw.technology["logistics-4"] then
  bobmods.lib.tech.replace_prerequisite("logistic-spidertron", "logistics-3", "logistics-4")
end
if bobmods.tech and bobmods.tech.advanced_logistic_science then
  bobmods.lib.tech.replace_science_pack("logistic-spidertron", "utility-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("logistic-spidertron", "utility-science-pack")
  bobmods.lib.tech.add_prerequisite("logistic-spidertron", "advanced-logistic-science-pack")
end

local function spidertron_burner_energy_source()
  return {
    type = "burner",
    fuel_category = "chemical",
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
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "rtg", amount = 1 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "rtg")
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "vehicle-fusion-reactor-1", amount = 1 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "vehicle-fusion-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "fusion-reactor-equipment", amount = 1 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "fusion-reactor-equipment")
  end
end

local function add_tankotron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "rtg", amount = 2 })
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "vehicle-fusion-reactor-1", amount = 2 })
  else
    bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "fusion-reactor-equipment", amount = 2 })
  end
end

local function remove_spidertron_power_supply()
  bobmods.lib.recipe.remove_ingredient("spidertron", "fusion-reactor-equipment")
  bobmods.lib.tech.remove_prerequisite("spidertron", "fusion-reactor-equipment")
  if bobmods.lib.tech.has_recipe_unlock("nuclear-power", "uranium-fuel-cell") then
    bobmods.lib.tech.add_prerequisite("spidertron", "nuclear-power")
  else
    bobmods.lib.tech.add_prerequisite("spidertron", "uranium-processing")
  end
end

local function replace_spidertron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.replace_ingredient("spidertron", "fusion-reactor-equipment", "rtg")
    bobmods.lib.tech.replace_prerequisite("spidertron", "fusion-reactor-equipment", "rtg")
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.replace_ingredient("spidertron", "fusion-reactor-equipment", "vehicle-fusion-reactor-1")
    bobmods.lib.tech.replace_prerequisite(
      "spidertron",
      "fusion-reactor-equipment",
      "vehicle-fusion-reactor-equipment-1"
    )
  end
end

local function add_logistic_spidertron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "rtg", amount = 2 })
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "vehicle-fusion-reactor-1", amount = 2 })
  else
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "fusion-reactor-equipment", amount = 2 })
  end
end

local function add_heavy_spidertron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "rtg", amount = 3 })
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "rtg")
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "vehicle-fusion-reactor-1", amount = 3 })
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "vehicle-fusion-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "fusion-reactor-equipment", amount = 3 })
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "fusion-reactor-equipment")
  end
end

if settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "all" then
  data.raw["spider-vehicle"]["antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_burner_energy_source()
  remove_spidertron_power_supply()
  data.raw["spider-vehicle"]["heavy-spidertron"].energy_source = spidertron_burner_energy_source()
elseif settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "nothighest" then
  data.raw["spider-vehicle"]["antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_burner_energy_source()
  remove_spidertron_power_supply()
  add_heavy_spidertron_power_supply()
elseif settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "default" then
  data.raw["spider-vehicle"]["antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["logistic-spidertron"].energy_source = spidertron_burner_energy_source()
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
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-leg-segment")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-knee")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-foot")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-hip")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-leg")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-frame")
  bobmods.lib.tech.add_recipe_unlock("walking-vehicle", "mech-brain")
  bobmods.lib.tech.add_recipe_unlock("tankotron", "mech-armor-plate")
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "low-density-structure")

  bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "mech-leg", amount = 6 })
  bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "mech-frame", amount = 1 })
  bobmods.lib.recipe.set_energy_required("antron", 4)

  bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "mech-leg", amount = 6 })
  bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "mech-armor-plate", amount = 5 })
  bobmods.lib.recipe.set_energy_required("tankotron", 5)

  bobmods.lib.recipe.remove_ingredient("spidertron", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "mech-leg", amount = 8 })
  bobmods.lib.recipe.remove_ingredient("spidertron", "low-density-structure")
  bobmods.lib.recipe.remove_ingredient("spidertron", "rocket-control-unit")
  bobmods.lib.recipe.remove_ingredient("spidertron", "effectivity-module-3")
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "mech-armor-plate", amount = 10 })
  bobmods.lib.recipe.set_energy_required("spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("spidertron", "walking-vehicle", "tankotron")

  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "mech-leg", amount = 8 })
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "mech-armor-plate", amount = 5 })
  bobmods.lib.recipe.set_energy_required("logistic-spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("logistic-spidertron", "walking-vehicle", "tankotron")

  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "mech-leg", amount = 8 })
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "mech-frame", amount = 1 })
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "mech-armor-plate", amount = 20 })
  bobmods.lib.recipe.set_energy_required("heavy-spidertron", 6)

  if data.raw.item.rubber then
    bobmods.lib.recipe.add_ingredient("mech-foot", { type = "item", name = "rubber", amount = 1 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "bob-wood-processing")
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("mech-leg-segment", "pipe", "titanium-pipe")
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("mech-hip", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("mech-knee", "iron-gear-wheel", "titanium-gear-wheel")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("mech-hip", { type = "item", name = "titanium-bearing", amount = 4 })
    bobmods.lib.recipe.add_ingredient("mech-knee", { type = "item", name = "titanium-bearing", amount = 2 })
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("mech-leg-segment", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "nitinol-processing")
  end

  if data.raw.item["insulated-cable"] then
    bobmods.lib.recipe.replace_ingredient("mech-leg", "copper-cable", "insulated-cable")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("mech-armor-plate", "steel-plate", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("tankotron", "tungsten-alloy-processing")
  end

  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "solder", amount = 120 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "advanced-processing-unit", amount = 20 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "advanced-electronics-3")
  else
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "effectivity-module-3", amount = 6 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "effectivity-module-3")
  end

  if data.raw.tool["module-case"] or data.raw.item["module-case"] then
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "module-case", amount = 1 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "modules")
  elseif data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "aluminium-plate", amount = 10 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "aluminium-processing")
  else
    bobmods.lib.recipe.add_ingredient("mech-brain", { type = "item", name = "steel-plate", amount = 10 })
  end
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.remove_ingredient("spidertron", "effectivity-module-3")
    bobmods.lib.tech.remove_prerequisite("spidertron", "effectivity-module-3")
    bobmods.lib.recipe.add_ingredient("spidertron", { type = "item", name = "advanced-processing-unit", amount = 10 })

    bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "advanced-processing-unit", amount = 8 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "advanced-electronics-3")
    bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "advanced-processing-unit", amount = 8 })
    bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "advanced-processing-unit", amount = 10 })
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "advanced-processing-unit", amount = 16 })
  else
    bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "effectivity-module-3", amount = 2 })
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "effectivity-module-3")
    bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "effectivity-module-3", amount = 2 })
    bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "effectivity-module-3", amount = 3 })
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "effectivity-module-3", amount = 4 })
  end

  bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "exoskeleton-equipment", amount = 3 })
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("antron", { type = "item", name = "low-density-structure", amount = 100 })
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "low-density-structure")

  bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "exoskeleton-equipment", amount = 3 })
  bobmods.lib.recipe.add_ingredient("tankotron", { type = "item", name = "low-density-structure", amount = 120 })

  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "exoskeleton-equipment", amount = 4 })
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "rocket-control-unit", amount = 18 })
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", { type = "item", name = "low-density-structure", amount = 100 })
  bobmods.lib.tech.add_prerequisite("logistic-spidertron", "rocket-control-unit")

  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "exoskeleton-equipment", amount = 4 })
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "rocket-control-unit", amount = 20 })
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", { type = "item", name = "low-density-structure", amount = 200 })
end

if data.raw.item["titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("logistic-spidertron", "steel-chest", "titanium-chest")
end

if data.raw["equipment-category"]["spidertron"] and data.raw["equipment-category"]["vehicle"] then
  data.raw["equipment-grid"]["logistic-spidertron-equipment-grid"].equipment_categories = { "spidertron", "vehicle" }
  if data.raw["equipment-category"]["armoured-vehicle"] then
    data.raw["equipment-grid"]["antron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
    data.raw["equipment-grid"]["tankotron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
    data.raw["equipment-grid"]["heavy-spidertron-equipment-grid"].equipment_categories =
      { "spidertron", "vehicle", "armoured-vehicle" }
  end
end
