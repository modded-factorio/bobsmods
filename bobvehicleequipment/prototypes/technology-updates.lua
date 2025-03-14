if
  data.raw.tool["bob-science-pack-gold"]
  and data.raw.tool["bob-alien-science-pack"]
  and data.raw.tool["bob-alien-science-pack-blue"]
  and data.raw.tool["bob-alien-science-pack-orange"]
  and data.raw.tool["bob-alien-science-pack-purple"]
  and data.raw.tool["bob-alien-science-pack-yellow"]
  and data.raw.tool["bob-alien-science-pack-green"]
  and data.raw.tool["bob-alien-science-pack-red"]
then
  data.raw.technology["bob-vehicle-laser-defense-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "bob-alien-science-pack-green", 1 },
  }
  data.raw.technology["bob-vehicle-big-turret-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-vehicle-fission-cell-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-red", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-vehicle-fission-reactor-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-red", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-vehicle-shield-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
  }
  data.raw.technology["bob-vehicle-shield-equipment-5"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-vehicle-shield-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-green", 1 },
    {
      "bob-alien-science-pack-red",
      1,
    },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-vehicle-battery-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
  }
  data.raw.technology["bob-vehicle-battery-equipment-5"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-vehicle-battery-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
  }
  bobmods.lib.tech.remove_prerequisite("bob-vehicle-battery-equipment-6", "utility-science-pack")
  if data.raw.technology["bob-vehicle-solar-panel-equipment-5"] then
    data.raw.technology["bob-vehicle-solar-panel-equipment-5"].unit.ingredients = {
      { "bob-science-pack-gold", 1 },
      { "bob-alien-science-pack", 1 },
      { "bob-alien-science-pack-orange", 1 },
      { "bob-alien-science-pack-purple", 1 },
    }
  end
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-shield-equipment-4", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-battery-equipment-4", "bob-alien-research")
  end
else
  if data.raw.technology["bob-productivity-module-5"] then
    bobmods.lib.tech.add_science_pack("bob-vehicle-shield-equipment-6", "space-science-pack", 1)
  end
end

if data.raw.technology["bob-productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-vehicle-shield-equipment-5", "bob-productivity-module-4")
end

if data.raw.technology["bob-productivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("bob-vehicle-shield-equipment-6", "bob-productivity-module-5")
end

if mods["boblogistics"] then
  -- Bob's Logistics mod removes blue science from Electric engine and Robotics
  if data.raw.technology["bob-vehicle-roboport-equipment-1"] then
    bobmods.lib.tech.remove_science_pack("bob-vehicle-roboport-equipment-1", "chemical-science-pack")
  end
  bobmods.lib.tech.remove_science_pack("bob-vehicle-roboport-modular-equipment-1", "chemical-science-pack")
end

bobmods.lib.tech.remove_prerequisite("laser", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("laser", "battery")
if not mods["bobwarfare"] then
  bobmods.lib.tech.add_prerequisite("laser-turret", "chemical-science-pack")
end
