if
  data.raw.tool["science-pack-gold"]
  and data.raw.tool["alien-science-pack"]
  and data.raw.tool["alien-science-pack-blue"]
  and data.raw.tool["alien-science-pack-orange"]
  and data.raw.tool["alien-science-pack-purple"]
  and data.raw.tool["alien-science-pack-yellow"]
  and data.raw.tool["alien-science-pack-green"]
  and data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["vehicle-big-turret-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["vehicle-big-turret-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["vehicle-big-turret-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  data.raw.technology["vehicle-fission-cell-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["vehicle-fission-cell-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["vehicle-fission-cell-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  data.raw.technology["vehicle-fission-reactor-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["vehicle-fission-reactor-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["vehicle-fission-reactor-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  data.raw.technology["vehicle-shield-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["vehicle-shield-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["vehicle-shield-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  data.raw.technology["vehicle-battery-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["vehicle-battery-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["vehicle-battery-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-4", "alien-research")
  end
end

bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-2", "speed-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-2", "speed-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-2", "efficiency-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-2", "efficiency-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-2", "productivity-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-2", "productivity-module-2")

bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "speed-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "speed-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "efficiency-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "efficiency-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "productivity-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "productivity-module-3")

if data.raw.technology["efficiency-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "efficiency-module-4")
else
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "efficiency-module-3")
end

if data.raw.technology["productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "productivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "productivity-module-3")
end

if data.raw.technology["speed-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "speed-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "speed-module-5")
end

if data.raw.technology["efficiency-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "efficiency-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "efficiency-module-5")
end

if data.raw.technology["productivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "productivity-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "productivity-module-5")
end

if data.raw.technology["speed-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "speed-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "speed-module-6")
end

if data.raw.technology["efficiency-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-5", "efficiency-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "efficiency-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "efficiency-module-6")
end

if data.raw.technology["productivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "productivity-module-6")
end

if data.raw.technology["speed-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "speed-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "speed-module-8")
end

if data.raw.technology["efficiency-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-6", "efficiency-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "efficiency-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "efficiency-module-8")
end

if data.raw.technology["productivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "productivity-module-8")
end

if mods["boblogistics"] then
  -- Bob's Logistics mod removes blue science from Electric engine and Robotics

  bobmods.lib.tech.remove_science_pack("vehicle-roboport-equipment-1", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("vehicle-roboport-modular-equipment-1", "chemical-science-pack")
end
