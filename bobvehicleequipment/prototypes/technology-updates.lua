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
  data.raw.technology["vehicle-laser-defense-equipment-6"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
    { "alien-science-pack-green", 1, },
  }
  data.raw.technology["vehicle-big-turret-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-yellow", 1 },
    { "alien-science-pack-orange", 1 },
  }

  data.raw.technology["vehicle-fission-cell-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-red", 1 },
  }

  data.raw.technology["vehicle-fission-reactor-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-red", 1 },
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
    { "alien-science-pack-red", 1, },
  }

  if data.raw.technology["vehicle-solar-panel-equipment-5"] then
    data.raw.technology["vehicle-solar-panel-equipment-5"].unit.ingredients = {
      { "science-pack-gold", 1 },
      { "alien-science-pack", 1 },
      { "alien-science-pack-orange", 1 },
      { "alien-science-pack-purple", 1, },
    }
  end
  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-4", "alien-research")
  end
end

if data.raw.technology["bob-efficiency-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-5", "bob-efficiency-module-4")
end

if data.raw.technology["bob-productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-5", "bob-productivity-module-4")
end

if data.raw.technology["bob-efficiency-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-6", "bob-efficiency-module-5")
  bobmods.lib.tech.add_science_pack("vehicle-shield-equipment-6", "space-science-pack", 1)
end

if data.raw.technology["bob-productivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-6", "bob-productivity-module-5")
end

if mods["boblogistics"] then
  -- Bob's Logistics mod removes blue science from Electric engine and Robotics

  bobmods.lib.tech.remove_science_pack("vehicle-roboport-equipment-1", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("vehicle-roboport-modular-equipment-1", "chemical-science-pack")
end
