if settings.startup["bobmods-logistics-trains"].value == true then
  if mods["bobplates"] then
    bobmods.lib.recipe.remove_ingredient("cargo-wagon", "iron-plate")
    bobmods.lib.recipe.replace_ingredient("locomotive", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("cargo-wagon", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("fluid-wagon", "pipe", "bob-bronze-pipe")
    bobmods.lib.recipe.add_ingredient("locomotive", { type = "item", name = "bob-steel-bearing", amount = 16 })
    bobmods.lib.recipe.add_ingredient("cargo-wagon", { type = "item", name = "bob-steel-bearing", amount = 8 })
    bobmods.lib.recipe.replace_ingredient("fluid-wagon", "iron-gear-wheel", "bob-steel-bearing")

    bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "pipe", "bob-aluminium-pipe")
    bobmods.lib.recipe.add_ingredient(
      "bob-locomotive-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 16 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-cargo-wagon-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 8 }
    )
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "iron-gear-wheel", "bob-cobalt-steel-bearing")
    bobmods.lib.tech.add_prerequisite("bob-railway-2", "bob-cobalt-processing")
    bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-2", "bob-cobalt-processing")

    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon", "pipe", "bob-aluminium-pipe")
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 16 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 8 }
    )
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon", "iron-gear-wheel", "bob-cobalt-steel-bearing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway", "bob-cobalt-processing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon", "bob-cobalt-processing")

    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive",
      { type = "item", name = "bob-gunmetal-alloy", amount = 15 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon",
      { type = "item", name = "bob-gunmetal-alloy", amount = 15 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-fluid-wagon",
      { type = "item", name = "bob-gunmetal-alloy", amount = 15 }
    )
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway", "bob-zinc-processing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon", "bob-zinc-processing")

    bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "pipe", "bob-titanium-pipe")
    bobmods.lib.recipe.add_ingredient("bob-locomotive-3", { type = "item", name = "bob-titanium-bearing", amount = 16 })
    bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-3", { type = "item", name = "bob-titanium-bearing", amount = 8 })
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "iron-gear-wheel", "bob-titanium-bearing")
    bobmods.lib.tech.add_prerequisite("bob-railway-3", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-3", "bob-titanium-processing")

    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "pipe", "bob-titanium-pipe")
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive-2",
      { type = "item", name = "bob-titanium-bearing", amount = 16 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon-2",
      { type = "item", name = "bob-titanium-bearing", amount = 8 }
    )
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "iron-gear-wheel", "bob-titanium-bearing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "bob-titanium-processing")

    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive-2",
      { type = "item", name = "bob-silicon-nitride", amount = 15 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon-2",
      { type = "item", name = "bob-silicon-nitride", amount = 15 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-fluid-wagon-2",
      { type = "item", name = "bob-silicon-nitride", amount = 15 }
    )
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "bob-ceramics")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "bob-ceramics")
  end
end
