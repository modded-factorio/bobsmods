if settings.startup["bobmods-assembly-centrifuge"].value == true then
  if mods["bobplates"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("centrifuge", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("uranium-processing", "bob-cobalt-processing")

    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "refined-concrete", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-2", "bob-ceramics")

    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-2", "bob-brass-processing")

    bobmods.lib.recipe.add_ingredient("bob-centrifuge-2", { type = "item", name = "bob-titanium-bearing", amount = 50 })
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-2", "bob-titanium-processing")

    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-nitinol-processing")

    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "refined-concrete", "tungsten-carbide")
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-tungsten-processing")

    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-advanced-processing-unit")

    bobmods.lib.recipe.add_ingredient("bob-centrifuge-3", { type = "item", name = "bob-nitinol-bearing", amount = 50 })
  elseif mods["bobelectronics"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-advanced-processing-unit")
  end
end
