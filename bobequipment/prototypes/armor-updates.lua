--Remember when making any change to power armor to duplicate the edits in Bob's Warfare mod

if not mods["bobwarfare"] then
  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "iron-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "bob-invar-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "advanced-circuit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "advanced-circuit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-titanium-plate"] then
    if mods["bobrevamp"] then
      bobmods.lib.recipe.remove_ingredient("power-armor-mk2", "low-density-structure")
      bobmods.lib.tech.remove_prerequisite("power-armor-mk2", "low-density-structure")
      if data.raw.item["bob-cobalt-steel-alloy"] then
        bobmods.lib.recipe.add_ingredient(
          "power-armor-mk2",
          { type = "item", name = "bob-cobalt-steel-alloy", amount = 50 }
        )
        bobmods.lib.tech.add_prerequisite("power-armor-mk2", "bob-cobalt-processing")
      else
        bobmods.lib.recipe.add_ingredient("power-armor-mk2", { type = "item", name = "steel-plate", amount = 60 })
      end
      bobmods.lib.recipe.remove_ingredient("bob-power-armor-mk4", "steel-plate")
      bobmods.lib.recipe.add_ingredient(
        "bob-power-armor-mk4",
        { type = "item", name = "low-density-structure", amount = 5 }
      )
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "low-density-structure")
    else
      bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "steel-plate", "bob-titanium-plate")
      bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-titanium-processing")
    end
  end

  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "plastic-bar", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-ceramics")
  end
  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "steel-plate", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "plastic-bar", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-nitinol-processing")
  end

  if data.raw.item["bob-alien-artifact-orange"] and data.raw.item["bob-alien-artifact-blue"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk3",
      { type = "item", name = "bob-alien-artifact-orange", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk3",
      { type = "item", name = "bob-alien-artifact-blue", amount = 25 }
    )
  elseif data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk3",
      { type = "item", name = "bob-alien-artifact", amount = 70 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk3", { type = "item", name = "processing-unit", amount = 70 })
  end
  if data.raw.item["bob-alien-artifact-yellow"] and data.raw.item["bob-alien-artifact-purple"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk4",
      { type = "item", name = "bob-alien-artifact-yellow", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk4",
      { type = "item", name = "bob-alien-artifact-purple", amount = 25 }
    )
  elseif data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk4",
      { type = "item", name = "bob-alien-artifact", amount = 90 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk4", { type = "item", name = "processing-unit", amount = 90 })
  end
  if data.raw.item["bob-alien-artifact-red"] and data.raw.item["bob-alien-artifact-green"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk5",
      { type = "item", name = "bob-alien-artifact-red", amount = 25 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk5",
      { type = "item", name = "bob-alien-artifact-green", amount = 25 }
    )
  elseif data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-power-armor-mk5",
      { type = "item", name = "bob-alien-artifact", amount = 120 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk5", { type = "item", name = "processing-unit", amount = 120 })
  end

  bobmods.lib.recipe.replace_ingredient("modular-armor", "advanced-circuit", "electronic-circuit")

  bobmods.lib.recipe.replace_ingredient("power-armor", "processing-unit", "advanced-circuit")
  bobmods.lib.recipe.add_new_ingredient("power-armor", { type = "item", name = "modular-armor", amount = 1 })
  -- By default, electric engines are Blue Science
  if (not mods["bobplates"]) and not mods["boblogistics"] then
    bobmods.lib.recipe.remove_ingredient("power-armor", "electric-engine-unit")
  end

  bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "processing-unit", "advanced-circuit")
  bobmods.lib.recipe.add_new_ingredient("power-armor-mk2", { type = "item", name = "power-armor", amount = 1 })

  if
    data.raw.tool["bob-science-pack-gold"]
    and data.raw.tool["bob-alien-science-pack-blue"]
    and data.raw.tool["bob-alien-science-pack-orange"]
    and data.raw.tool["bob-alien-science-pack-purple"]
    and data.raw.tool["bob-alien-science-pack-yellow"]
    and data.raw.tool["bob-alien-science-pack-green"]
    and data.raw.tool["bob-alien-science-pack-red"]
  then
    data.raw.technology["bob-power-armor-3"].unit.ingredients = {
      { "bob-science-pack-gold", 1 },
      { "bob-alien-science-pack", 1 },
      { "bob-alien-science-pack-blue", 1 },
      { "bob-alien-science-pack-orange", 1 },
    }
    data.raw.technology["bob-power-armor-4"].unit.ingredients = {
      { "bob-science-pack-gold", 1 },
      { "bob-alien-science-pack", 1 },
      { "bob-alien-science-pack-purple", 1 },
      { "bob-alien-science-pack-yellow", 1 },
    }
    data.raw.technology["bob-power-armor-5"].unit.ingredients = {
      { "bob-science-pack-gold", 1 },
      { "bob-alien-science-pack", 1 },
      { "bob-alien-science-pack-green", 1 },
      { "bob-alien-science-pack-red", 1 },
      { "space-science-pack", 1 },
    }
  end

  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "bob-alien-research")
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

  -- By default, electric engines are Blue Science
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
