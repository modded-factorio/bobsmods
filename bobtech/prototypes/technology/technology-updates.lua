bobmods.lib.tech.remove_science_pack("logistics-3", "production-science-pack")
bobmods.lib.tech.replace_prerequisite("logistics-3", "production-science-pack", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("logistics-3", "logistics-2")

if bobmods.tech.advanced_logistic_science then
  bobmods.lib.tech.remove_science_pack("logistic-system", "utility-science-pack")
  bobmods.lib.tech.remove_prerequisite("logistic-system", "utility-science-pack")
  bobmods.lib.tech.add_science_pack("logistic-system", "bob-advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("logistic-system", "bob-advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack(
    "braking-force-3",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "braking-force-4",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "braking-force-5",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "braking-force-6",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "braking-force-7",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "braking-force-3",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )

  if data.raw.technology["elevated-rail"] then
    bobmods.lib.tech.replace_science_pack(
      "elevated-rail",
      "production-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_prerequisite(
      "elevated-rail",
      "production-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.add_prerequisite("elevated-rail", "railway")
  end

  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-4",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-5",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-6",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-7",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "inserter-capacity-bonus-4",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-3",
    "utility-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.remove_prerequisite("worker-robots-speed-3", "utility-science-pack")
  bobmods.lib.tech.add_prerequisite("worker-robots-speed-3", "bob-advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-4",
    "utility-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-5",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.remove_prerequisite("worker-robots-speed-5", "production-science-pack")
  bobmods.lib.tech.add_prerequisite("worker-robots-speed-5", "utility-science-pack")
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-6",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "worker-robots-speed-3",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "worker-robots-storage-2",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-storage-3",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "worker-robots-storage-2",
    "production-science-pack",
    "bob-advanced-logistic-science-pack"
  )

  local combined_roboports = true
  if mods["boblogistics"] and settings.startup["bobmods-logistics-disableroboports"].value == true then
    combined_roboports = false
  end

  if mods["bobequipment"] then
    if combined_roboports == true then
      bobmods.lib.tech.replace_science_pack(
        "bob-personal-roboport-mk3-equipment",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
      bobmods.lib.tech.replace_prerequisite(
        "bob-personal-roboport-mk3-equipment",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
      bobmods.lib.tech.replace_science_pack(
        "bob-personal-roboport-mk4-equipment",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
    else
      bobmods.lib.tech.replace_prerequisite(
        "bob-personal-roboport-modular-equipment-3",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
    end

    bobmods.lib.tech.replace_science_pack(
      "bob-personal-roboport-modular-equipment-3",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "bob-personal-roboport-modular-equipment-4",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
  else
    bobmods.lib.tech.replace_prerequisite(
      "personal-roboport-mk2-equipment",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-mk2-equipment",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "processing-unit")
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "low-density-structure")
  end
  if mods["bobvehicleequipment"] then
    if combined_roboports == true then
      bobmods.lib.tech.replace_science_pack(
        "bob-vehicle-roboport-equipment-3",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
      bobmods.lib.tech.replace_prerequisite(
        "bob-vehicle-roboport-equipment-3",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
      bobmods.lib.tech.replace_science_pack(
        "bob-vehicle-roboport-equipment-4",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
    else
      bobmods.lib.tech.replace_prerequisite(
        "bob-vehicle-roboport-modular-equipment-3",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
    end

    bobmods.lib.tech.replace_science_pack(
      "bob-vehicle-roboport-modular-equipment-3",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "bob-vehicle-roboport-modular-equipment-4",
      "utility-science-pack",
      "bob-advanced-logistic-science-pack"
    )
  end
  if mods["bobwarfare"] then
    bobmods.lib.tech.replace_science_pack("destroyer", "utility-science-pack", "bob-advanced-logistic-science-pack")
    bobmods.lib.tech.replace_prerequisite("destroyer", "military-4", "bob-advanced-logistic-science-pack")
    if settings.startup["bobmods-warfare-robotupdate"].value == true then
      bobmods.lib.tech.replace_science_pack(
        "bob-laser-robot",
        "utility-science-pack",
        "bob-advanced-logistic-science-pack"
      )
    end
  end
else
  bobmods.lib.tech.hide("bob-advanced-logistic-science-pack")
end

if data.raw.item["bob-bronze-alloy"] then
  bobmods.lib.tech.add_prerequisite("chemical-science-pack", "bob-alloy-processing")
end
bobmods.lib.tech.replace_prerequisite("production-science-pack", "productivity-module", "automation-2")
bobmods.lib.tech.remove_prerequisite("production-science-pack", "railway")
if data.raw.technology["bob-electrolyser-3"] then
  bobmods.lib.tech.add_prerequisite("production-science-pack", "bob-electrolyser-3")
elseif data.raw.technology["bob-chemical-plant-2"] then
  bobmods.lib.tech.add_prerequisite("production-science-pack", "bob-chemical-plant-2")
end

bobmods.lib.tech.replace_prerequisite("utility-science-pack", "robotics", "electric-engine")
if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "bob-battery-2")
else
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "battery")
end
if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "bob-ceramics")
end

if
  settings.startup["bobmods-logistics-inserteroverhaul"]
  and settings.startup["bobmods-logistics-inserteroverhaul"].value == true
then
  bobmods.lib.tech.add_prerequisite("bob-advanced-research", "bob-bulk-inserter-2")
  bobmods.lib.tech.add_prerequisite("bob-advanced-logistic-science-pack", "bob-express-inserter")
else
  bobmods.lib.tech.add_prerequisite("bob-advanced-research", "bulk-inserter")
  bobmods.lib.tech.add_prerequisite("bob-advanced-logistic-science-pack", "fast-inserter")
end

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.tech.add_recipe_unlock("bob-lab", "lab")
  bobmods.lib.tech.add_prerequisite("logistic-science-pack", "bob-lab")
  bobmods.lib.tech.add_prerequisite("electronics", "bob-electricity")
  bobmods.lib.tech.remove_recipe_unlock("electronics", "copper-cable")
  bobmods.lib.tech.remove_recipe_unlock("electronics", "lab")
  bobmods.lib.tech.remove_recipe_unlock("electronics", "small-electric-pole")
  data.raw.technology.electronics.research_trigger = nil
  data.raw.technology.electronics.unit = {
    count = 20,
    time = 10,
    ingredients = {
      { "automation-science-pack", 1 },
    },
  }
  bobmods.lib.tech.remove_prerequisite("automation-science-pack", "electronics")
  bobmods.lib.tech.add_prerequisite("electronics", "automation-science-pack")
  data.raw.technology["automation-science-pack"].research_trigger = {
    type = "craft-item",
    item = "bob-burner-lab",
  }

  if mods["bobgreenhouse"] then
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "bob-electricity")
  end
  if mods["bobplates"] then
    data.raw.recipe["bob-burner-lab"].enabled = false
    bobmods.lib.tech.add_prerequisite("automation-science-pack", "bob-burner-lab")
    bobmods.lib.recipe.add_ingredient("bob-burner-lab", { type = "item", name = "bob-glass", amount = 5 })
    bobmods.lib.tech.remove_prerequisite("bob-gas-canisters", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-fluid-barrel-processing", "logistic-science-pack")
  end

  bobmods.lib.tech.add_prerequisite("automation", "electronics")
  bobmods.lib.tech.add_prerequisite("fast-inserter", "electronics")
  bobmods.lib.tech.remove_prerequisite("lamp", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("lamp", "electronics")
  bobmods.lib.tech.remove_prerequisite("repair-pack", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("repair-pack", "electronics")
  bobmods.lib.tech.add_prerequisite("logistics", "electronics")
  bobmods.lib.tech.add_prerequisite("radar", "electronics")
  bobmods.lib.tech.remove_prerequisite("electric-mining-drill", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("electric-mining-drill", "electronics")
  if
    mods["bobmining"]
    and settings.startup["bobmods-mining-waterminers"].value == true
    and data.raw["resource-category"]["water"]
  then
    bobmods.lib.tech.add_prerequisite("bob-water-miner-1", "electronics")
    bobmods.lib.tech.remove_prerequisite("bob-water-miner-2", "logistic-science-pack")
  end
  if mods["bobplates"] then
    bobmods.lib.tech.add_prerequisite("bob-electrolysis-1", "electronics")
    bobmods.lib.tech.add_prerequisite("bob-air-compressor-1", "electronics")
    bobmods.lib.tech.add_prerequisite("bob-water-bore-1", "electronics")
  end
  if mods["bobelectronics"] then
    bobmods.lib.tech.remove_prerequisite("automation-2", "electronics")
    if mods["bobpower"] then
      bobmods.lib.tech.remove_prerequisite("bob-fluid-generator-1", "electronics")
    end
    if mods["bobmining"] then
      bobmods.lib.tech.remove_prerequisite("bob-water-miner-2", "electronics")
    end
    if mods["bobassembly"] then
      bobmods.lib.tech.remove_prerequisite("bob-electrolyser-2", "electronics")
    end
    if data.raw.technology["bob-chemical-plant"] then
      bobmods.lib.tech.remove_prerequisite("bob-chemical-plant", "electronics")
    end
  else
  end

  bobmods.lib.tech.add_science_pack("steel-processing", "logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("steel-processing", "logistic-science-pack")
  if data.raw.technology["bob-alloy-processing"] then
    bobmods.lib.tech.add_prerequisite("steel-processing", "bob-alloy-processing")
  end
  bobmods.lib.tech.remove_prerequisite("advanced-material-processing", "logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("automation-2", "logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("electric-energy-distribution-1", "logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("engine", "logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("military-2", "logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("solar-energy", "logistic-science-pack")
  bobmods.lib.tech.add_science_pack("heavy-armor", "logistic-science-pack", 1)
  if data.raw.technology["bob-chemical-plant"] then
    bobmods.lib.tech.remove_prerequisite("bob-chemical-plant", "logistic-science-pack")
  end
  if mods["bobassembly"] then
    bobmods.lib.tech.remove_prerequisite("bob-electrolyser-2", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-distillery-2", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-distillery-2", "bob-alloy-processing")
  end
  if mods["boblogistics"] then
    bobmods.lib.tech.remove_prerequisite("bob-repair-pack-2", "logistic-science-pack")
  end
  if data.raw.technology["bob-drills-2"] then
    bobmods.lib.tech.remove_prerequisite("bob-drills-2", "logistic-science-pack")
  end
  if data.raw.technology["bob-area-drills-1"] then
    bobmods.lib.tech.remove_prerequisite("bob-area-drills-1", "logistic-science-pack")
  end

  bobmods.lib.tech.remove_recipe_unlock("steam-power", "steam-engine")
  data.raw.technology["steam-power"].localised_description = { "technology-description.bob-steam-power-alt" }

  if mods["bobpower"] then
    bobmods.lib.recipe.enabled("bob-burner-generator", false)
    data.raw.technology["bob-steam-engine-1"].icon = "__bobpower__/graphics/icons/technology/steam-engine.png"
    if data.raw.technology["bob-steam-engine-2"] then
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-2", "bob-steam-engine-1")
    end
    bobmods.lib.tech.remove_prerequisite("bob-steam-engine-2", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-boiler-2", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-fluid-generator-1", "logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-heat-pipe-1", "logistic-science-pack")
  end

  data.raw.technology["stone-wall"].prerequisites = {}
  data.raw.technology["stone-wall"].unit = nil
  data.raw.technology["stone-wall"].research_trigger = {
    type = "craft-item",
    item = "stone-brick",
    count = 25,
  }
end
