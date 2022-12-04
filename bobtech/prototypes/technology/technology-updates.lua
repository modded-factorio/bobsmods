bobmods.lib.tech.remove_science_pack("logistics-3", "production-science-pack")
bobmods.lib.tech.replace_prerequisite("logistics-3", "production-science-pack", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("logistics-3", "logistics-2")

if bobmods.tech.advanced_logistic_science then
  bobmods.lib.tech.remove_science_pack("logistic-system", "utility-science-pack")
  bobmods.lib.tech.remove_prerequisite("logistic-system", "utility-science-pack")
  bobmods.lib.tech.add_science_pack("logistic-system", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("logistic-system", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("braking-force-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("braking-force-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("braking-force-5", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("braking-force-6", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("braking-force-7", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("braking-force-3", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-4",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-5",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-6",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-7",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "inserter-capacity-bonus-4",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-3",
    "utility-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-4",
    "utility-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-5",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-speed-6",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "worker-robots-speed-3",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "worker-robots-storage-2",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_science_pack(
    "worker-robots-storage-3",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "worker-robots-storage-2",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  if mods["bobequipment"] then
    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-mk3-equipment",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_prerequisite(
      "personal-roboport-mk3-equipment",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-mk4-equipment",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )

    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-modular-equipment-3",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-modular-equipment-4",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
  else
    bobmods.lib.tech.replace_prerequisite(
      "personal-roboport-mk2-equipment",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "personal-roboport-mk2-equipment",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "advanced-electronics-2")
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "low-density-structure")
  end
  if mods["bobvehicleequipment"] then
    bobmods.lib.tech.replace_science_pack(
      "vehicle-roboport-equipment-3",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_prerequisite(
      "vehicle-roboport-equipment-3",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "vehicle-roboport-equipment-4",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )

    bobmods.lib.tech.replace_science_pack(
      "vehicle-roboport-modular-equipment-3",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "vehicle-roboport-modular-equipment-4",
      "utility-science-pack",
      "advanced-logistic-science-pack"
    )
  end
  if mods["bobwarfare"] then
    bobmods.lib.tech.replace_science_pack("destroyer", "utility-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_prerequisite("destroyer", "military-4", "advanced-logistic-science-pack")
    if settings.startup["bobmods-warfare-robotupdate"].value == true then
      bobmods.lib.tech.replace_science_pack("bob-laser-robot", "utility-science-pack", "advanced-logistic-science-pack")
    end
  end
else
  bobmods.lib.tech.hide("advanced-logistic-science-pack")
end

if data.raw.item["bronze-alloy"] then
  bobmods.lib.tech.add_prerequisite("chemical-science-pack", "alloy-processing")
end
bobmods.lib.tech.replace_prerequisite("production-science-pack", "productivity-module", "automation-2")
bobmods.lib.tech.remove_prerequisite("production-science-pack", "railway")

bobmods.lib.tech.replace_prerequisite("utility-science-pack", "robotics", "electric-engine")
if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "battery-2")
else
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "battery")
end
if data.raw.item["silicon-nitride"] then
  bobmods.lib.tech.add_prerequisite("utility-science-pack", "ceramics")
end

if
  settings.startup["bobmods-logistics-inserteroverhaul"]
  and settings.startup["bobmods-logistics-inserteroverhaul"].value == true
then
  bobmods.lib.tech.add_prerequisite("advanced-research", "express-inserters")
  bobmods.lib.tech.add_prerequisite("advanced-logistic-science-pack", "express-inserters")
else
  bobmods.lib.tech.add_prerequisite("advanced-research", "fast-inserter")
  bobmods.lib.tech.add_prerequisite("advanced-logistic-science-pack", "fast-inserter")
end

if settings.startup["bobmods-burnerphase"].value == true then
  if mods["bobpower"] then
    bobmods.lib.tech.replace_science_pack("steam-power", "automation-science-pack", "steam-science-pack")
  end

  if data.raw.technology["logistics-0"] then
    bobmods.lib.tech.replace_science_pack("logistics-0", "automation-science-pack", "steam-science-pack")
  end
  bobmods.lib.tech.add_recipe_unlock("lab", "lab")
  bobmods.lib.tech.add_prerequisite("logistics", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("automation", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("optics", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("gun-turret", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("stone-wall", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("military", "automation-science-pack")
  bobmods.lib.tech.add_prerequisite("steel-processing", "automation-science-pack")

  bobmods.lib.tech.add_prerequisite("automation", "electricity")
  bobmods.lib.tech.add_prerequisite("optics", "electricity")
  if data.raw.technology["radars-1"] then
    bobmods.lib.tech.add_prerequisite("radars-1", "electricity")
  end

  bobmods.lib.tech.add_prerequisite("logistic-science-pack", "lab")
  if data.raw.technology["electrolysis-1"] then
    bobmods.lib.tech.add_prerequisite("electrolysis-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("electrolysis-1", "electricity")
    bobmods.lib.tech.add_prerequisite("electrolysis-1", "steam-power")
  end
  if data.raw.technology["alloy-processing"] then
    bobmods.lib.tech.add_prerequisite("alloy-processing", "automation-science-pack")
  end
  if data.raw.technology["chemical-processing-1"] then
    bobmods.lib.tech.add_prerequisite("chemical-processing-1", "automation-science-pack")
    if
      not (settings.startup["bobmods-plates-newsteel"] and settings.startup["bobmods-plates-newsteel"].value == true)
    then
      bobmods.lib.tech.add_prerequisite("steel-processing", "automation-science-pack")
    end
    bobmods.lib.tech.add_prerequisite("chemical-processing-1", "steam-power")
  end
  if data.raw.technology["air-compressor-1"] then
    bobmods.lib.tech.add_prerequisite("air-compressor-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("air-compressor-1", "electricity")
  end
  if data.raw.technology["water-bore-1"] then
    bobmods.lib.tech.add_prerequisite("water-bore-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("water-bore-1", "electricity")
  end
  if data.raw.technology["bob-greenhouse"] then
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "electricity")
    bobmods.lib.tech.add_prerequisite("bob-greenhouse", "steam-power")
  end
  if data.raw.technology["water-miner-1"] then
    bobmods.lib.tech.add_prerequisite("water-miner-1", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("water-miner-1", "electricity")
  end

  bobmods.lib.tech.add_recipe_unlock("steam-power", "boiler")
  bobmods.lib.tech.add_recipe_unlock("steam-power", "offshore-pump")
  if data.raw.recipe["steam-mining-drill"] then
    data.raw.recipe["steam-mining-drill"].enabled = false
    bobmods.lib.tech.add_recipe_unlock("steam-power", "steam-mining-drill")
  end
  if data.raw.recipe["steam-inserter"] then
    data.raw.recipe["steam-inserter"].enabled = false
    bobmods.lib.tech.add_recipe_unlock("steam-power", "steam-inserter")
  end

  if data.raw.technology["basic-automation"] then
    bobmods.lib.tech.add_prerequisite("automation", "basic-automation")
    bobmods.lib.tech.replace_science_pack("basic-automation", "automation-science-pack", "steam-science-pack")
    bobmods.lib.tech.remove_recipe_unlock("basic-automation", "steam-assembling-machine")

    data.raw.technology["basic-automation"].localised_name = { "technology-name.burner-automation" }
    data:extend({
      {
        type = "technology",
        name = "steam-automation",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "basic-automation",
          "steam-power",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "steam-assembling-machine",
          },
        },
        unit = {
          count = 10,
          ingredients = {
            { "steam-science-pack", 1 },
          },
          time = 5,
        },
        order = "a-b-1",
      },
    })
  end

  bobmods.lib.tech.add_recipe_unlock("electricity", "small-electric-pole")
  bobmods.lib.tech.add_recipe_unlock("electricity", "steam-engine")
  if data.raw.recipe["bob-burner-generator"] then
    bobmods.lib.recipe.enabled("bob-burner-generator", false)
    bobmods.lib.tech.add_recipe_unlock("electricity", "bob-burner-generator")
  end
  if data.raw.recipe["bob-burner-generator"] and data.raw.technology["bob-steam-engine-2"] then
    data:extend({
      {
        type = "technology",
        name = "bob-steam-engine-1",
        icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
        icon_size = 128,
        prerequisites = {
          "electricity",
          "steam-power",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "steam-engine",
          },
        },
        unit = {
          count = 20,
          ingredients = {
            { "steam-science-pack", 1 },
          },
          time = 10,
        },
        order = "[steam-engine]-1",
      },
    })
    bobmods.lib.tech.remove_prerequisite("bob-steam-engine-2", "steam-power")
    bobmods.lib.tech.remove_prerequisite("electricity", "steam-power")
    bobmods.lib.tech.remove_recipe_unlock("steam-power", "steam-engine")
    bobmods.lib.tech.remove_recipe_unlock("electricity", "steam-engine")

    bobmods.lib.tech.add_prerequisite("bob-steam-engine-2", "bob-steam-engine-1")
  elseif data.raw.technology["bob-steam-engine-2"] then
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-2", "electricity")
  end
end
