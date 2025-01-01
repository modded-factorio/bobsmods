bobmods.lib.tech.add_recipe_unlock("fluid-handling", "bob-storage-tank-all-corners")

-- 0.17.60 balancing
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-oil-processing")
bobmods.lib.tech.remove_science_pack("robotics", "chemical-science-pack")
bobmods.lib.tech.remove_prerequisite("robotics", "advanced-oil-processing")
bobmods.lib.tech.remove_prerequisite("robotics", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("construction-robotics", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("logistic-robotics", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("worker-robots-speed-1", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("worker-robots-speed-2", "bob-robots-1")
bobmods.lib.tech.add_prerequisite("worker-robots-storage-1", "bob-robots-1")
if not mods["bobequipment"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-equipment", "chemical-science-pack")
end

bobmods.lib.tech.replace_prerequisite("lubricant", "advanced-oil-processing", "oil-processing")
bobmods.lib.tech.remove_science_pack("lubricant", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("electric-engine", "chemical-science-pack")

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-light-oil")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-heavy-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-light-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-heavy-oil")

if bobmods.tech and bobmods.tech.advanced_logistic_science then
  bobmods.lib.tech.replace_science_pack("logistics-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("logistics-4", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.add_science_pack("logistics-5", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("logistics-5", "production-science-pack")

  bobmods.lib.tech.replace_science_pack("bulk-inserter-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("bulk-inserter-2", "production-science-pack", "advanced-logistic-science-pack")

  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.replace_science_pack("bob-robotics-3", "utility-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_prerequisite("bob-robotics-3", "utility-science-pack", "advanced-logistic-science-pack")
  end
  if data.raw.technology["bob-robotics-4"] then
    bobmods.lib.tech.replace_science_pack("bob-robotics-4", "utility-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.remove_prerequisite("bob-robotics-4", "utility-science-pack")
  end

  bobmods.lib.tech.add_science_pack("bob-fluid-handling-4", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "advanced-logistic-science-pack")

  bobmods.lib.tech.add_science_pack("bob-armoured-railway-2", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "advanced-logistic-science-pack")

  bobmods.lib.tech.add_science_pack("bob-armoured-fluid-wagon-2", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("bob-robots-2", "utility-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("bob-robots-2", "utility-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("bob-robots-3", "utility-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.add_science_pack("bob-robots-4", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("bob-robots-4", "utility-science-pack")

  bobmods.lib.tech.replace_science_pack("bob-robo-modular-3", "utility-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("bob-robo-modular-3", "utility-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("bob-robo-modular-4", "utility-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("bob-robo-modular-4", "utility-science-pack")

  bobmods.lib.tech.add_science_pack("logistic-system-2", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_science_pack("logistic-system-3", "advanced-logistic-science-pack", 1)

  bobmods.lib.tech.replace_science_pack(
    "inserter-stack-size-bonus-3",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "inserter-stack-size-bonus-3",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "inserter-stack-size-bonus-4",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack(
    "inserter-capacity-bonus-8",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )
  bobmods.lib.tech.replace_prerequisite(
    "inserter-capacity-bonus-8",
    "production-science-pack",
    "advanced-logistic-science-pack"
  )

  bobmods.lib.tech.replace_science_pack("toolbelt-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("toolbelt-3", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("toolbelt-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("toolbelt-5", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.add_science_pack("bob-infinite-worker-robots-storage-4", "advanced-logistic-science-pack", 1)
  bobmods.lib.tech.add_science_pack(
    "bob-infinite-character-logistic-trash-slots-1",
    "advanced-logistic-science-pack",
    1
  )

  --balance
  --may have been replaced by tech mod
  bobmods.lib.tech.remove_science_pack("inserter-capacity-bonus-4", "advanced-logistic-science-pack")
  bobmods.lib.tech.remove_prerequisite("inserter-capacity-bonus-4", "advanced-logistic-science-pack")

  if data.raw.technology["more-inserters-2"] then
    bobmods.lib.tech.replace_science_pack(
      "more-inserters-2",
      "production-science-pack",
      "advanced-logistic-science-pack"
    )
  end
end

--balance
bobmods.lib.tech.remove_science_pack("logistics-3", "production-science-pack")
if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  bobmods.lib.tech.remove_prerequisite("logistics-3", "lubricant")
end
bobmods.lib.tech.add_prerequisite("logistics-3", "logistics-2")
bobmods.lib.tech.replace_prerequisite("logistics-3", "production-science-pack", "chemical-science-pack")

if data.raw.technology["long-inserters-2"] then
  bobmods.lib.tech.replace_prerequisite("long-inserters-2", "chemical-science-pack", "logistics-3")
end
if data.raw.technology["more-inserters-2"] then
  bobmods.lib.tech.replace_prerequisite("more-inserters-2", "logistics-3", "logistics-4")
end

bobmods.lib.tech.remove_science_pack("inserter-capacity-bonus-4", "production-science-pack")
bobmods.lib.tech.remove_science_pack("logistic-system", "utility-science-pack")
bobmods.lib.tech.replace_prerequisite("logistic-system", "utility-science-pack", "chemical-science-pack")

bobmods.lib.tech.set_science_pack_count("logistic-system", 100)
bobmods.lib.tech.set_science_pack_count("fluid-wagon", 50)

bobmods.lib.tech.remove_recipe_unlock("automation", "long-handed-inserter")

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("fast-inserter", "fast-inserter")
  bobmods.lib.tech.remove_recipe_unlock("bulk-inserter", "bulk-inserter")

  bobmods.lib.tech.add_recipe_unlock("fast-inserter", "long-handed-inserter")
  bobmods.lib.tech.add_prerequisite("logistics-2", "electronics")

  bobmods.lib.tech.add_recipe_unlock("bulk-inserter", "red-bulk-inserter")

  bobmods.lib.tech.add_recipe_unlock("express-inserters", "fast-inserter")

  bobmods.lib.tech.add_recipe_unlock("turbo-inserter", "turbo-inserter")

  bobmods.lib.tech.add_recipe_unlock("ultimate-inserter", "express-inserter")

  bobmods.lib.tech.add_science_pack("fast-inserter", "logistic-science-pack", 1)
  if bobmods.tech and bobmods.tech.advanced_logistic_science then
    bobmods.lib.tech.replace_science_pack("turbo-inserter", "production-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.add_science_pack("ultimate-inserter", "advanced-logistic-science-pack", 1)
    bobmods.lib.tech.replace_science_pack(
      "bulk-inserter-3",
      "production-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.add_science_pack("bulk-inserter-4", "advanced-logistic-science-pack", 1)
  end
  bobmods.lib.tech.set_science_pack_count("logistics-2", 70)
  bobmods.lib.tech.set_science_pack_count("logistics-3", 150)
  bobmods.lib.tech.set_science_pack_count("logistics-4", 250)
  bobmods.lib.tech.set_science_pack_count("logistics-5", 300)
else
  bobmods.lib.tech.add_recipe_unlock("long-inserters-1", "long-handed-inserter")
  bobmods.lib.tech.set_science_pack_count("logistics-2", 120)
  bobmods.lib.tech.set_science_pack_count("logistics-3", 250)
end

if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  bobmods.lib.tech.add_prerequisite("logistics", "logistics-0")
  bobmods.lib.tech.add_recipe_unlock("logistics", "transport-belt")
end

if data.raw.technology["bob-robotics-2"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-1", "bob-robotics-2")
  if data.raw.technology["aluminium-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-2", "aluminium-processing")
  end
else
  if data.raw.technology["aluminium-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-robots-1", "aluminium-processing")
  end
end

if data.raw.technology["bob-robotics-3"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "bob-robotics-3")
  bobmods.lib.tech.add_prerequisite("bob-robotics-3", "processing-unit")
  if data.raw.technology["titanium-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-3", "titanium-processing")
  end
else
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "processing-unit")
  if data.raw.technology["titanium-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-robots-2", "titanium-processing")
  end
end

bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "processing-unit")

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-3", "battery-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-2", "battery-2")
  end
end

if data.raw.technology["bob-robotics-4"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "bob-robotics-4")
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "advanced-processing-unit")
  end
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "ceramics")
  end
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "advanced-processing-unit")
  end
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "ceramics")
  end
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  if data.raw.technology["bob-robotics-4"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "battery-3")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "battery-3")
  end
end

bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "roboport")
bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "roboport")

if settings.startup["bobmods-logistics-robotparts"].value == true then
  bobmods.lib.tech.add_recipe_unlock("robotics", "bob-robot-brain")
  bobmods.lib.tech.add_recipe_unlock("robotics", "bob-robot-tool")

  bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "bob-robot-brain-2")
  bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "bob-robot-tool-2")

  bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "bob-robot-brain-3")
  bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "bob-robot-tool-3")

  bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "bob-robot-brain-4")
  bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "bob-robot-tool-4")
end

bobmods.lib.tech.add_recipe_unlock("steam-power", "copper-pipe")
bobmods.lib.tech.add_recipe_unlock("steam-power", "copper-pipe-to-ground")

bobmods.lib.tech.add_recipe_unlock("steam-power", "stone-pipe")
bobmods.lib.tech.add_recipe_unlock("steam-power", "stone-pipe-to-ground")

bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-pipe")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-pipe-to-ground")

bobmods.lib.tech.add_recipe_unlock("plastics", "plastic-pipe")
bobmods.lib.tech.add_recipe_unlock("plastics", "plastic-pipe-to-ground")

if data.raw.technology["alloy-processing"] then
  bobmods.lib.tech.add_recipe_unlock("alloy-processing", "bronze-pipe")
  bobmods.lib.tech.add_recipe_unlock("alloy-processing", "bronze-pipe-to-ground")
end

if data.raw.technology["zinc-processing"] then
  bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-pipe")
  bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-pipe-to-ground")
  bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-chest")
end

if data.raw.technology["titanium-processing"] then
  bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-pipe")
  bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-pipe-to-ground")
  bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-chest")
end

if data.raw.technology["tungsten-processing"] then
  bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-pipe")
  bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-pipe-to-ground")
end

if data.raw.technology["ceramics"] then
  bobmods.lib.tech.add_recipe_unlock("ceramics", "ceramic-pipe")
  bobmods.lib.tech.add_recipe_unlock("ceramics", "ceramic-pipe-to-ground")
end

if data.raw.technology["tungsten-alloy-processing"] then
  bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "copper-tungsten-pipe")
  bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "copper-tungsten-pipe-to-ground")
end

if data.raw.technology["nitinol-processing"] then
  bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-pipe")
  bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-pipe-to-ground")
end

local function remove_inserter_stack_size_bonus(technology)
  if data.raw.technology[technology] and data.raw.technology[technology].effects then
    for i, effect in pairs(data.raw.technology[technology].effects) do
      if effect.type == "inserter-stack-size-bonus" then
        table.remove(data.raw.technology[technology].effects, i)
      end
    end
  end
end

remove_inserter_stack_size_bonus("inserter-capacity-bonus-2")
remove_inserter_stack_size_bonus("inserter-capacity-bonus-7")

for i = 1, 7 do
  if data.raw.technology["inserter-capacity-bonus-" .. i] then
    data.raw.technology["inserter-capacity-bonus-" .. i].icons = {
      {
        icon = "__boblogistics__/graphics/icons/technology/green-inserter.png",
        icon_size = 128,
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-capacity.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    }
    data.raw.technology["inserter-capacity-bonus-" .. i].icon_size = 128
  end
end

if settings.startup["bobmods-logistics-disableroboports"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "roboport")
  bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "roboport")
  bobmods.lib.tech.remove_recipe_unlock("bob-robo-modular-1", "roboport")
  bobmods.lib.tech.remove_recipe_unlock("bob-robo-modular-2", "bob-roboport-2")
  bobmods.lib.tech.remove_recipe_unlock("bob-robo-modular-3", "bob-roboport-3")
  bobmods.lib.tech.remove_recipe_unlock("bob-robo-modular-4", "bob-roboport-4")
end

-- Chest ballancing.
bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "passive-provider-chest")
bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "storage-chest")
bobmods.lib.tech.add_prerequisite("logistic-system", "construction-robotics")

-- Old DyTech compatibillity bullshit
if data.raw.technology["lava-smelting-05"] then
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-05", "tungsten-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-05", "tungsten-pipe-to-ground")
end

if data.raw.technology["lava-smelting-06"] then
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "bronze-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "bronze-pipe-to-ground")

  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "brass-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "brass-pipe-to-ground")
end
