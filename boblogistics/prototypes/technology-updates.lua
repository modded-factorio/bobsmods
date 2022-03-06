bobmods.lib.tech.add_recipe_unlock("fluid-handling", "bob-overflow-valve")
bobmods.lib.tech.add_recipe_unlock("fluid-handling", "bob-topup-valve")
bobmods.lib.tech.add_recipe_unlock("fluid-handling", "bob-storage-tank-all-corners")


-- 0.17.60 balancing
bobmods.lib.tech.remove_science_pack("robotics", "chemical-science-pack")
bobmods.lib.tech.remove_prerequisite("robotics", "advanced-oil-processing")
bobmods.lib.tech.remove_science_pack("construction-robotics", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("logistic-robotics", "chemical-science-pack")

bobmods.lib.tech.add_prerequisite("construction-robotics", "advanced-electronics")
bobmods.lib.tech.add_prerequisite("logistic-robotics", "advanced-electronics")

bobmods.lib.tech.replace_prerequisite("lubricant", "advanced-oil-processing", "oil-processing")
bobmods.lib.tech.remove_science_pack("lubricant", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("electric-engine", "chemical-science-pack")


if data.raw.tool["advanced-logistic-science-pack"] then
  bobmods.lib.tech.replace_science_pack("logistics-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("logistics-5", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("stack-inserter-2", "production-science-pack", "advanced-logistic-science-pack")

  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.replace_science_pack("bob-robotics-3", "production-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_prerequisite("bob-robotics-3", "production-science-pack", "advanced-logistic-science-pack")
  end
  if data.raw.technology["bob-robotics-4"] then
    bobmods.lib.tech.replace_science_pack("bob-robotics-4", "production-science-pack", "advanced-logistic-science-pack")
  end

  bobmods.lib.tech.replace_science_pack("bob-fluid-handling-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-armoured-railway-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-armoured-fluid-wagon-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-robots-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-robots-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-robots-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-robo-modular-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-robo-modular-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("logistic-system-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("logistic-system-3", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("inserter-stack-size-bonus-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("inserter-stack-size-bonus-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("inserter-capacity-bonus-8", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("toolbelt-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("toolbelt-4", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("toolbelt-5", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_science_pack("bob-infinite-worker-robots-storage-1", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_science_pack("bob-infinite-character-logistic-trash-slots-1", "production-science-pack", "advanced-logistic-science-pack")

--balance
  bobmods.lib.tech.remove_science_pack("inserter-capacity-bonus-4", "advanced-logistic-science-pack") -- may have been replaced by tech mod
  bobmods.lib.tech.remove_science_pack("logistic-system", "advanced-logistic-science-pack") -- may have been replaced by tech mod
end

if data.raw.technology["advanced-logistic-science-pack"] then
  bobmods.lib.tech.replace_prerequisite("logistics-4", "logistics-3", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_prerequisite("stack-inserter-2", "production-science-pack", "advanced-logistic-science-pack")

  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.replace_prerequisite("bob-robotics-3", "production-science-pack", "advanced-logistic-science-pack")
  end

  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "advanced-logistic-science-pack")
  bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "advanced-logistic-science-pack")
  bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("bob-robots-2", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("bob-robo-modular-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("logistic-system-2", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_prerequisite("inserter-stack-size-bonus-3", "production-science-pack", "advanced-logistic-science-pack")
  bobmods.lib.tech.replace_prerequisite("inserter-capacity-bonus-8", "production-science-pack", "advanced-logistic-science-pack")

  bobmods.lib.tech.replace_prerequisite("toolbelt-3", "production-science-pack", "advanced-logistic-science-pack")

--ballance
  bobmods.lib.tech.remove_prerequisite("inserter-capacity-bonus-4", "advanced-logistic-science-pack") -- may have been replaced by tech mod
  bobmods.lib.tech.remove_prerequisite("logistic-system", "advanced-logistic-science-pack") -- may have been replaced by tech mod
end



--ballance
bobmods.lib.tech.remove_science_pack("logistics-3", "production-science-pack")
bobmods.lib.tech.remove_prerequisite("logistics-3", "lubricant")
bobmods.lib.tech.add_prerequisite("logistics-3", "logistics-2")
bobmods.lib.tech.replace_prerequisite("logistics-3", "production-science-pack", "chemical-science-pack")

bobmods.lib.tech.remove_science_pack("inserter-capacity-bonus-4", "production-science-pack")
bobmods.lib.tech.remove_science_pack("logistic-system", "utility-science-pack")
bobmods.lib.tech.replace_prerequisite("logistic-system", "utility-science-pack", "chemical-science-pack")

if data.raw.technology["logistic-system"] then
  data.raw.technology["logistic-system"].unit.count = 100
end

data.raw.technology["fluid-wagon"].unit.count = 50


bobmods.lib.tech.remove_recipe_unlock("automation", "long-handed-inserter")

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("fast-inserter", "fast-inserter")
  bobmods.lib.tech.remove_recipe_unlock("fast-inserter", "filter-inserter")
  bobmods.lib.tech.remove_recipe_unlock("stack-inserter", "stack-inserter")
  bobmods.lib.tech.remove_recipe_unlock("stack-inserter", "stack-filter-inserter")

  bobmods.lib.tech.add_recipe_unlock("electronics", "yellow-filter-inserter")

  bobmods.lib.tech.add_recipe_unlock("fast-inserter", "long-handed-inserter")
  bobmods.lib.tech.add_recipe_unlock("fast-inserter", "red-filter-inserter")
  bobmods.lib.tech.add_prerequisite("logistics-2", "electronics")

  bobmods.lib.tech.add_recipe_unlock("stack-inserter", "red-stack-inserter")
  bobmods.lib.tech.add_recipe_unlock("stack-inserter", "red-stack-filter-inserter")

  bobmods.lib.tech.add_recipe_unlock("express-inserters", "fast-inserter")
  bobmods.lib.tech.add_recipe_unlock("express-inserters", "filter-inserter")

  bobmods.lib.tech.add_recipe_unlock("turbo-inserter", "turbo-inserter")
  bobmods.lib.tech.add_recipe_unlock("turbo-inserter", "turbo-filter-inserter")

  bobmods.lib.tech.add_recipe_unlock("ultimate-inserter", "express-inserter")
  bobmods.lib.tech.add_recipe_unlock("ultimate-inserter", "express-filter-inserter")

  bobmods.lib.tech.add_science_pack("fast-inserter", "logistic-science-pack", 1)
  bobmods.lib.tech.add_science_pack("express-inserters", "chemical-science-pack", 1)
  if data.raw.tool["advanced-logistic-science-pack"] then
    bobmods.lib.tech.replace_science_pack("turbo-inserter", "production-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_science_pack("ultimate-inserter", "production-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_science_pack("stack-inserter-3", "production-science-pack", "advanced-logistic-science-pack")
    bobmods.lib.tech.replace_science_pack("stack-inserter-4", "production-science-pack", "advanced-logistic-science-pack")
  end
  data.raw.technology["logistics-2"].unit.count = 70
  data.raw.technology["logistics-3"].unit.count = 150
  data.raw.technology["logistics-4"].unit.count = 250
  data.raw.technology["logistics-5"].unit.count = 300
else
  bobmods.lib.tech.add_recipe_unlock("long-inserters-1", "long-handed-inserter")
  data.raw.technology["logistics-2"].unit.count = 120
  data.raw.technology["logistics-3"].unit.count = 250
end

if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  bobmods.lib.tech.add_prerequisite("logistics", "logistics-0")
  bobmods.lib.tech.add_recipe_unlock("logistics", "transport-belt")
end



if data.raw.technology["bob-robotics-2"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-1", "bob-robotics-2")
  bobmods.lib.tech.add_prerequisite("bob-robotics-2", "aluminium-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-1", "aluminium-processing")
end



if data.raw.technology["bob-robotics-3"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "bob-robotics-3")
  bobmods.lib.tech.add_prerequisite("bob-robotics-3", "advanced-electronics-2")
  bobmods.lib.tech.add_prerequisite("bob-robotics-3", "titanium-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "advanced-electronics-2")
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "titanium-processing")
end

bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "advanced-electronics-2")

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-3", "battery-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-2", "battery-2")
  end
end


if data.raw.technology["bob-robotics-4"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "bob-robotics-4")
  bobmods.lib.tech.add_prerequisite("bob-robotics-4", "advanced-electronics-3")
  bobmods.lib.tech.add_prerequisite("bob-robotics-4", "ceramics")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "advanced-electronics-3")
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "ceramics")
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  if data.raw.technology["bob-robotics-4"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "battery-3")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "battery-3")
  end
end


if settings.startup["bobmods-logistics-roboportrecipeupdate"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "roboport")
  bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "roboport")
end



bobmods.lib.tech.add_recipe_unlock("logistic-robotics", "robot-brain-logistic")
bobmods.lib.tech.add_recipe_unlock("logistic-robotics", "robot-tool-logistic")

bobmods.lib.tech.add_recipe_unlock("construction-robotics", "robot-brain-construction")
bobmods.lib.tech.add_recipe_unlock("construction-robotics", "robot-tool-construction")

bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-brain-logistic-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-tool-logistic-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-brain-construction-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-tool-construction-2")

bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-brain-logistic-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-tool-logistic-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-brain-construction-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-tool-construction-3")

bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-brain-logistic-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-tool-logistic-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-brain-construction-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-tool-construction-4")



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
        table.remove(data.raw.technology[technology].effects,i)
      end
    end
  end
end

remove_inserter_stack_size_bonus("inserter-capacity-bonus-2")
remove_inserter_stack_size_bonus("inserter-capacity-bonus-7")

for i = 1, 7 do
  data.raw.technology["inserter-capacity-bonus-" .. i].icon = "__boblogistics__/graphics/icons/technology/stack-inserter-capacity.png"
  data.raw.technology["inserter-capacity-bonus-" .. i].icon_size = 128
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
bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "logistic-chest-passive-provider")
bobmods.lib.tech.add_recipe_unlock("logistic-robotics", "logistic-chest-requester")
bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "logistic-chest-storage")
bobmods.lib.tech.remove_recipe_unlock("logistic-system", "logistic-chest-requester")



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



