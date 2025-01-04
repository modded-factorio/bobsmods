--Remember when making any change to power armor to duplicate the edits in Bob's Warfare mod

if not mods["bobwarfare"] then

  if mods["bobplates"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "iron-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "invar-processing")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "aluminium-processing")
    if mods ["bobrevamp"] then
      bobmods.lib.recipe.remove_ingredient("power-armor-mk2", "low-density-structure")
      bobmods.lib.tech.remove_prerequisite("power-armor-mk2", "low-density-structure")
      if data.raw.item["cobalt-steel-alloy"] then
        bobmods.lib.recipe.add_ingredient("power-armor-mk2", { type = "item", name = "cobalt-steel-alloy", amount = 50 })
        bobmods.lib.tech.add_prerequisite("power-armor-mk2", "cobalt-processing")
      else
        bobmods.lib.recipe.add_ingredient("power-armor-mk2", { type = "item", name = "steel-plate", amount = 60 })
      end
      bobmods.lib.recipe.remove_ingredient("bob-power-armor-mk4", "steel-plate")
      bobmods.lib.recipe.add_ingredient("bob-power-armor-mk4", { type = "item", name = "low-density-structure", amount = 5 })
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "low-density-structure")
    else
      bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "steel-plate", "bob-titanium-plate")
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "titanium-processing")
    end
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "plastic-bar", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "ceramics")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "plastic-bar", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "nitinol-processing")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "steel-plate", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "tungsten-alloy-processing")
  end

  bobmods.lib.recipe.add_new_ingredient("power-armor", { type = "item", name = "modular-armor", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("power-armor-mk2", { type = "item", name = "power-armor", amount = 1 })

  bobmods.lib.recipe.replace_ingredient("modular-armor", "advanced-circuit", "electronic-circuit")
  bobmods.lib.recipe.replace_ingredient("power-armor", "processing-unit", "advanced-circuit")bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "processing-unit", "advanced-circuit")
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "advanced-circuit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "advanced-circuit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "advanced-processing-unit")
  end

  if (not mods["bobplates"]) and not mods["boblogistics"] then
    bobmods.lib.recipe.remove_ingredient("power-armor", "electric-engine-unit")
  end

  if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk3",
      { type = "item", name = "alien-artifact-orange", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk3",
      { type = "item", name = "alien-artifact-blue", amount = 25 }
    )
  elseif data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk3", { type = "item", name = "alien-artifact", amount = 70 })
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk3", { type = "item", name = "processing-unit", amount = 70 })
  end
  if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk4",
      { type = "item", name = "alien-artifact-yellow", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk4",
      { type = "item", name = "alien-artifact-purple", amount = 25 }
    )
  elseif data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk4", { type = "item", name = "alien-artifact", amount = 90 })
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk4", { type = "item", name = "processing-unit", amount = 90 })
  end
  if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk5",
      { type = "item", name = "alien-artifact-red", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk5",
      { type = "item", name = "alien-artifact-green", amount = 25 }
    )
  elseif data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk5", { type = "item", name = "alien-artifact", amount = 120 })
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk5", { type = "item", name = "processing-unit", amount = 120 })
  end

  if
    data.raw.tool["science-pack-gold"]
    and data.raw.tool["alien-science-pack-blue"]
    and data.raw.tool["alien-science-pack-orange"]
    and data.raw.tool["alien-science-pack-purple"]
    and data.raw.tool["alien-science-pack-yellow"]
    and data.raw.tool["alien-science-pack-green"]
    and data.raw.tool["alien-science-pack-red"]
  then
    data.raw.technology["bob-power-armor-3"].unit.ingredients = {
      { "science-pack-gold", 1 },
      { "alien-science-pack", 1 },
      { "alien-science-pack-blue", 1 },
      { "alien-science-pack-orange", 1 },
    }
    data.raw.technology["bob-power-armor-4"].unit.ingredients = {
      { "science-pack-gold", 1 },
      { "alien-science-pack", 1 },
      { "alien-science-pack-purple", 1 },
      { "alien-science-pack-yellow", 1 },
    }
    data.raw.technology["bob-power-armor-5"].unit.ingredients = {
      { "science-pack-gold", 1 },
      { "alien-science-pack", 1 },
      { "alien-science-pack-green", 1 },
      { "alien-science-pack-red", 1, },
    }
  end

  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "alien-research")
  end

  if mods["bobmodules"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "efficiency-module-2", "efficiency-module-3")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "speed-module-2", "speed-module-3")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "efficiency-module-3", "bob-efficiency-module-4")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "speed-module-3", "bob-speed-module-4")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "efficiency-module-3", "bob-efficiency-module-5")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "speed-module-3", "bob-speed-module-5")

    bobmods.lib.tech.remove_prerequisite("bob-power-armor-3", "speed-module-2")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "speed-module-3")
    bobmods.lib.tech.remove_prerequisite("bob-power-armor-3", "efficiency-module-2")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "efficiency-module-3")
    if data.raw.technology["bob-speed-module-4"] then
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-speed-module-4")
    end

    if data.raw.technology["bob-efficiency-module-4"] then
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-efficiency-module-4")
    end

    if data.raw.technology["bob-speed-module-5"] then
      bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-speed-module-5")
    end

    if data.raw.technology["bob-efficiency-module-5"] then
      bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-efficiency-module-5")
    end
  else
    bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "speed-module-2", "speed-module")
    bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "efficiency-module-2", "efficiency-module")

    bobmods.lib.tech.replace_prerequisite("power-armor-mk2", "speed-module-2", "speed-module")
    bobmods.lib.tech.replace_prerequisite("power-armor-mk2", "efficiency-module-2", "efficiency-module")
  end

  bobmods.lib.tech.remove_prerequisite("modular-armor", "advanced-circuit")
  bobmods.lib.tech.add_prerequisite("modular-armor", "logistic-science-pack")

  bobmods.lib.tech.remove_science_pack("power-armor", "chemical-science-pack")
  bobmods.lib.tech.add_science_pack("power-armor", "military-science-pack", 1)
  bobmods.lib.tech.remove_prerequisite("power-armor", "processing-unit")
  bobmods.lib.tech.add_prerequisite("power-armor", "military-science-pack")
  bobmods.lib.tech.add_prerequisite("power-armor", "advanced-circuit")

  if (not mods["bobplates"]) and not mods["boblogistics"] then
    bobmods.lib.tech.remove_prerequisite("power-armor", "electric-engine")
    bobmods.lib.tech.add_prerequisite("power-armor-mk2", "electric-engine")
  end

  bobmods.lib.tech.remove_science_pack("power-armor-mk2", "utility-science-pack")
  bobmods.lib.tech.remove_prerequisite("power-armor-mk2", "military-4")
  bobmods.lib.tech.add_prerequisite("power-armor-mk2", "military-3")
  if mods["bobplates"] then
    if not mods["bobrevamp"] then
      bobmods.lib.tech.add_prerequisite("power-armor-mk2", "low-density-structure")
    end
  else
    bobmods.lib.tech.add_prerequisite("power-armor-mk2", "low-density-structure")
  end

  bobmods.lib.tech.replace_prerequisite("battery-mk2-equipment", "power-armor", "chemical-science-pack")
  bobmods.lib.tech.replace_prerequisite("discharge-defense-equipment", "power-armor", "processing-unit")

end