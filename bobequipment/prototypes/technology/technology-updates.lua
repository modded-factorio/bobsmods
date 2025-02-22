if mods["boblogistics"] or mods["bobplates"] then
  -- Bob's Logistics mod and Bob's MCI mod remove blue science from Electric engine and Robotics

  bobmods.lib.tech.remove_science_pack("exoskeleton-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_prerequisite("exoskeleton-equipment", "processing-unit")
end

if mods["boblogistics"] then
  -- Bob's Logistics mod removes blue science from Electric engine

  bobmods.lib.tech.remove_prerequisite("personal-roboport-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("personal-roboport-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-personal-roboport-modular-equipment-1", "chemical-science-pack")
end

bobmods.lib.tech.remove_science_pack("personal-roboport-mk2-equipment", "utility-science-pack")
bobmods.lib.tech.replace_prerequisite(
  "personal-roboport-mk2-equipment",
  "utility-science-pack",
  "chemical-science-pack"
)
bobmods.lib.tech.set_science_pack_count("personal-roboport-mk2-equipment", 100)

if
  data.raw.tool["bob-science-pack-gold"]
  and data.raw.tool["bob-alien-science-pack-blue"]
  and data.raw.tool["bob-alien-science-pack-orange"]
  and data.raw.tool["bob-alien-science-pack-purple"]
  and data.raw.tool["bob-alien-science-pack-yellow"]
  and data.raw.tool["bob-alien-science-pack-green"]
  and data.raw.tool["bob-alien-science-pack-red"]
then
  data.raw.technology["bob-energy-shield-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
  }
  data.raw.technology["bob-battery-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
  }
  bobmods.lib.tech.remove_prerequisite("bob-battery-equipment-4", "production-science-pack")
  data.raw.technology["bob-energy-shield-equipment-5"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-battery-equipment-5"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-fission-reactor-equipment-3"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-green", 1 },
  }

  data.raw.technology["bob-energy-shield-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
    { "space-science-pack", 1 },
  }
  data.raw.technology["bob-battery-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
  }
  bobmods.lib.tech.remove_prerequisite("bob-battery-equipment-6", "utility-science-pack")
  data.raw.technology["bob-fission-reactor-equipment-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-red", 1 },
    { "space-science-pack", 1 },
  }
  data.raw.technology["bob-personal-laser-defense-equipment-6"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "bob-alien-science-pack-green", 1 },
  }
  if data.raw.technology["bob-solar-panel-equipment-5"] then
    data.raw.technology["bob-solar-panel-equipment-5"].unit.ingredients = {
      { "bob-science-pack-gold", 1 },
      { "bob-alien-science-pack", 1 },
      { "bob-alien-science-pack-orange", 1 },
      { "bob-alien-science-pack-purple", 1 },
    }
  end
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-battery-equipment-4", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-fission-reactor-equipment-3", "bob-alien-research")
  end
else
  if data.raw.technology["bob-productivity-module-5"] then
    bobmods.lib.tech.add_science_pack("bob-energy-shield-equipment-6", "space-science-pack", 1)
  end
end

if data.raw.technology["bob-productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-5", "bob-productivity-module-4")
end

if data.raw.technology["bob-productivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-6", "bob-productivity-module-5")
end
