if mods["boblogistics"] then
  -- Bob's Logistics mod removes blue science from Electric engine and Robotics

  bobmods.lib.tech.remove_science_pack("exoskeleton-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_prerequisite("exoskeleton-equipment", "advanced-electronics-2")

  bobmods.lib.tech.remove_prerequisite("personal-roboport-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("personal-roboport-equipment", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("personal-roboport-modular-equipment-1", "chemical-science-pack")
end

bobmods.lib.tech.remove_science_pack("personal-roboport-mk2-equipment", "utility-science-pack")
bobmods.lib.tech.replace_prerequisite(
  "personal-roboport-mk2-equipment",
  "utility-science-pack",
  "chemical-science-pack"
)
bobmods.lib.tech.set_science_pack_count("personal-roboport-mk2-equipment", 100)

if
  data.raw.tool["science-pack-gold"]
  and data.raw.tool["alien-science-pack-blue"]
  and data.raw.tool["alien-science-pack-orange"]
  and data.raw.tool["alien-science-pack-purple"]
  and data.raw.tool["alien-science-pack-yellow"]
  and data.raw.tool["alien-science-pack-green"]
  and data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["bob-energy-shield-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["bob-battery-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }

  data.raw.technology["bob-energy-shield-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-battery-equipment-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }

  data.raw.technology["bob-energy-shield-equipment-6"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack", 1 }, { "alien-science-pack-green", 1 }, {
      "alien-science-pack-red",
      1,
    } }
  data.raw.technology["bob-battery-equipment-6"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack", 1 }, { "alien-science-pack-green", 1 }, {
      "alien-science-pack-red",
      1,
    } }

  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-battery-equipment-4", "alien-research")
    bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "alien-research")
  end
end

if data.raw.technology["speed-module-4"] then
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "speed-module-4")
else
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "speed-module-3")
end

if data.raw.technology["effectivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "effectivity-module-4")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "effectivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "effectivity-module-3")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "effectivity-module-3")
end

if data.raw.technology["productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "productivity-module-4")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "productivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "productivity-module-3")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "productivity-module-3")
end

if data.raw.technology["speed-module-6"] then
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "speed-module-6")
end

if data.raw.technology["effectivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-5", "effectivity-module-6")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "effectivity-module-6")
end

if data.raw.technology["productivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "productivity-module-6")
end

if data.raw.technology["speed-module-8"] then
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "speed-module-8")
end

if data.raw.technology["effectivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-6", "effectivity-module-8")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "effectivity-module-8")
end

if data.raw.technology["productivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "productivity-module-8")
end
