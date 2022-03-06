table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "poison",     decrease = 15, percent = 80 })
table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "plasma",     decrease = 0,  percent = 90 })
table.insert(data.raw["spider-vehicle"]["spidertron"].resistances, { type = "bob-pierce", decrease = 0,  percent = 50 })

bobmods.lib.recipe.remove_ingredient("spidertron", "raw-fish")
bobmods.lib.recipe.remove_ingredient("spidertron", "radar")
bobmods.lib.tech.remove_prerequisite("spidertron", "effectivity-module-3")
bobmods.lib.tech.remove_prerequisite("spidertron", "exoskeleton-equipment")

bobmods.lib.tech.add_prerequisite("spidertron", "walking-vehicle")

if data.raw.technology["logistics-4"] then
  bobmods.lib.tech.replace_prerequisite("logistic-spidertron", "logistics-3", "logistics-4")
end
if data.raw.tool["advanced-logistic-science-pack"] then
  bobmods.lib.tech.replace_science_pack("logistic-spidertron", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.add_prerequisite("logistic-spidertron", "advanced-logistic-science-pack")
end



local function spidertron_burner_energy_source()
  return
  {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 1,
    smoke =
    {
      {
        name = "car-smoke",
        deviation = {0.25, 0.25},
        frequency = 200,
        position = {0, -1.5},
        starting_frame = 0,
        starting_frame_deviation = 60
      }
    }
  }
end

local function spidertron_nuclear_energy_source()
  return
  {
    type = "burner",
    fuel_category = "nuclear",
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    light_flicker =
    {
      color = {0,0,0},
      minimum_intensity = 0.7,
      maximum_intensity = 0.95
    }
  }
end

local function add_antron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("antron", {"rtg", 1})
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "rtg")
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("antron", {"vehicle-fusion-reactor-1", 1})
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "vehicle-fusion-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient("antron", {"fusion-reactor-equipment", 1})
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "fusion-reactor-equipment")
  end
end

local function add_tankotron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("tankotron", {"rtg", 2})
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("tankotron", {"vehicle-fusion-reactor-1", 2})
  else
    bobmods.lib.recipe.add_ingredient("tankotron", {"fusion-reactor-equipment", 2})
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
    bobmods.lib.tech.replace_prerequisite("spidertron", "fusion-reactor-equipment", "vehicle-fusion-reactor-equipment-1")
  end
end

local function add_logistic_spidertron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"rtg", 2})
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"vehicle-fusion-reactor-1", 2})
  else
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"fusion-reactor-equipment", 2})
  end
end

local function add_heavy_spidertron_power_supply()
  if data.raw.item.rtg then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"rtg", 3})
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "rtg")
  elseif data.raw.item["vehicle-fusion-reactor-1"] then
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"vehicle-fusion-reactor-1", 3})
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "vehicle-fusion-reactor-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"fusion-reactor-equipment", 3})
    bobmods.lib.tech.add_prerequisite("heavy-spidertron", "fusion-reactor-equipment")
  end
end


if settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "all" then
  data.raw["spider-vehicle"]["antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_nuclear_energy_source()
  remove_spidertron_power_supply()
  data.raw["spider-vehicle"]["heavy-spidertron"].energy_source = spidertron_nuclear_energy_source()
elseif settings.startup["bobmods-warfare-spidertron-needsfuel"].value == "nothighest" then
  data.raw["spider-vehicle"]["antron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["tankotron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["logistic-spidertron"].energy_source = spidertron_burner_energy_source()
  data.raw["spider-vehicle"]["spidertron"].energy_source = spidertron_nuclear_energy_source()
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


  bobmods.lib.recipe.add_ingredient("antron", {"mech-leg", 6})
  bobmods.lib.recipe.add_ingredient("antron", {"mech-frame", 1})
  bobmods.lib.recipe.set_energy_required("antron", 4)

  bobmods.lib.recipe.add_ingredient("tankotron", {"mech-leg", 6})
  bobmods.lib.recipe.add_ingredient("tankotron", {"mech-frame", 1})
  bobmods.lib.recipe.add_ingredient("tankotron", {"mech-armor-plate", 5})
  bobmods.lib.recipe.set_energy_required("tankotron", 5)

  bobmods.lib.recipe.remove_ingredient("spidertron", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("spidertron", {"mech-leg", 8})
  bobmods.lib.recipe.remove_ingredient("spidertron", "low-density-structure")
  bobmods.lib.recipe.remove_ingredient("spidertron", "rocket-control-unit")
  bobmods.lib.recipe.remove_ingredient("spidertron", "effectivity-module-3")
  bobmods.lib.recipe.add_ingredient("spidertron", {"mech-frame", 1})
  bobmods.lib.recipe.add_ingredient("spidertron", {"mech-armor-plate", 10})
  bobmods.lib.recipe.set_energy_required("spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("spidertron", "walking-vehicle", "tankotron")

  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"mech-leg", 8})
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"mech-frame", 1})
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"mech-armor-plate", 5})
  bobmods.lib.recipe.set_energy_required("logistic-spidertron", 5)
  bobmods.lib.tech.replace_prerequisite("logistic-spidertron", "walking-vehicle", "tankotron")

  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"mech-leg", 8})
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"mech-frame", 1})
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"mech-armor-plate", 20})
  bobmods.lib.recipe.set_energy_required("heavy-spidertron", 6)



  if data.raw.item.rubber then
    bobmods.lib.recipe.add_ingredient("mech-foot", {"rubber", 1})
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("mech-leg-segment", "pipe", "titanium-pipe")
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("mech-hip", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("mech-knee", "iron-gear-wheel", "titanium-gear-wheel")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("mech-hip", {"titanium-bearing", 4})
    bobmods.lib.recipe.add_ingredient("mech-knee", {"titanium-bearing", 2})
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

  local function add_case()
    if data.raw.tool["module-case"] then
      bobmods.lib.recipe.add_ingredient("mech-brain", {"module-case", 2})
      bobmods.lib.tech.add_prerequisite("walking-vehicle", "modules")
    elseif data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.replace_ingredient("mech-brain", {"aluminium-plate", 10})
    else
      bobmods.lib.recipe.replace_ingredient("mech-brain", {"steel-plate", 10})
    end
  end

  if data.raw.item["basic-electronic-components"] and
    data.raw.item["electronic-components"] and 
    data.raw.item["intergrated-electronics"] and 
    data.raw.item["processing-electronics"]
  then
--    bobmods.lib.tech.replace_prerequisite("spidertron", "rocket-control-unit", "advanced-electronics-3")

    bobmods.lib.recipe.difficulty_split("mech-brain")
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"basic-electronic-components", 80})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"electronic-components", 100})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"intergrated-electronics", 100})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"processing-electronics", 120})

    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"basic-electronic-components", 120})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"electronic-components", 150})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"intergrated-electronics", 150})
    bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"processing-electronics", 200})

    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"solder", 120})
      bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"solder", 200})
    end
    if data.raw.item["multi-layer-circuit-board"] then
      bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "normal", {"multi-layer-circuit-board", 40})
      bobmods.lib.recipe.add_difficulty_ingredient("mech-brain", "expensive", {"multi-layer-circuit-board", 60})
    end
    add_case()
  else
    bobmods.lib.recipe.add_ingredient("mech-brain", {"rocket-control-unit", 16})
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("mech-brain", {"advanced-processing-unit", 10})
      add_case()
    else
      bobmods.lib.recipe.add_ingredient("mech-brain", {"effectivity-module-3", 2})
      bobmods.lib.tech.add_prerequisite("walking-vehicle", "effectivity-module-3")
    end
  end
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.remove_ingredient("spidertron", "effectivity-module-3")
    bobmods.lib.tech.remove_prerequisite("spidertron", "effectivity-module-3")
    bobmods.lib.recipe.add_ingredient("spidertron", {"advanced-processing-unit", 10})



    bobmods.lib.recipe.add_ingredient("antron", {"advanced-processing-unit", 8})
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "advanced-electronics-3")
    bobmods.lib.recipe.add_ingredient("tankotron", {"advanced-processing-unit", 8})
    bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"advanced-processing-unit", 10})
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"advanced-processing-unit", 16})
  else
    bobmods.lib.recipe.add_ingredient("antron", {"effectivity-module-3", 2})
    bobmods.lib.tech.add_prerequisite("walking-vehicle", "effectivity-module-3")
    bobmods.lib.recipe.add_ingredient("tankotron", {"effectivity-module-3", 2})
    bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"effectivity-module-3", 3})
    bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"effectivity-module-3", 4})
  end

  bobmods.lib.recipe.add_ingredient("antron", {"exoskeleton-equipment", 3})
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "exoskeleton-equipment")
  bobmods.lib.recipe.add_ingredient("antron", {"rocket-control-unit", 10})
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "rocket-control-unit")
  bobmods.lib.recipe.add_ingredient("antron", {"low-density-structure", 100})
  bobmods.lib.tech.add_prerequisite("walking-vehicle", "low-density-structure")

  bobmods.lib.recipe.add_ingredient("tankotron", {"exoskeleton-equipment", 3})
  bobmods.lib.recipe.add_ingredient("tankotron", {"rocket-control-unit", 10})
  bobmods.lib.recipe.add_ingredient("tankotron", {"low-density-structure", 120})

  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"exoskeleton-equipment", 4})
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"rocket-control-unit", 18})
  bobmods.lib.recipe.add_ingredient("logistic-spidertron", {"low-density-structure", 100})

  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"exoskeleton-equipment", 4})
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"rocket-control-unit", 20})
  bobmods.lib.recipe.add_ingredient("heavy-spidertron", {"low-density-structure", 200})
end

if data.raw.item["titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("logistic-spidertron", "steel-chest", "titanium-chest")
end

if
  data.raw["equipment-category"]["spidertron"] and
  data.raw["equipment-category"]["vehicle"]
then
  data.raw["equipment-grid"]["logistic-spidertron-equipment-grid"].equipment_categories = {"spidertron", "vehicle"}
  if data.raw["equipment-category"]["armoured-vehicle"] then
    data.raw["equipment-grid"]["antron-equipment-grid"].equipment_categories = {"spidertron", "vehicle", "armoured-vehicle"}
    data.raw["equipment-grid"]["tankotron-equipment-grid"].equipment_categories = {"spidertron", "vehicle", "armoured-vehicle"}
    data.raw["equipment-grid"]["heavy-spidertron-equipment-grid"].equipment_categories = {"spidertron", "vehicle", "armoured-vehicle"}
  end
end
