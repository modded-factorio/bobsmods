if settings.startup["bobmods-assembly-oilrefineries"].value == true then
  data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "bob-oil-refinery-2"

  if mods["bobplates"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.add_ingredient("oil-refinery", { type = "item", name = "bob-steel-bearing", amount = 5 })

    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "steel-plate", "bob-zinc-plate")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "stone-brick", "bob-nickel-plate")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.add_ingredient(
      "bob-oil-refinery-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-zinc-processing")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-nickel-processing")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-cobalt-processing")

    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "stone-brick", "bob-brass-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.add_ingredient(
      "bob-oil-refinery-3",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "bob-brass-processing")

    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "steel-plate", "tungsten-plate")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "stone-brick", "bob-copper-tungsten-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.recipe.add_ingredient("bob-oil-refinery-4", { type = "item", name = "bob-nitinol-bearing", amount = 5 })
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-tungsten-processing")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-nitinol-processing")

    if mods["boblogistics"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery", "pipe", "bob-steel-pipe")
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "pipe", "bob-aluminium-pipe")
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "pipe", "bob-titanium-pipe")
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "pipe", "bob-tungsten-pipe")
      bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-aluminium-processing")
    end
  end

  if mods["bobplates"] or mods["bobelectronics"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-advanced-processing-unit")
  end
end
