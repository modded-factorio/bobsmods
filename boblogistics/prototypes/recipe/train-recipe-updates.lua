if settings.startup["bobmods-logistics-trains"].value == true then
  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-railway-2", "bob-invar-processing")
    bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-2", "bob-invar-processing")
  end

  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-locomotive-2", { type = "item", name = "bob-steel-bearing", amount = 16 })
    bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-2", { type = "item", name = "bob-steel-bearing", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-2", { type = "item", name = "bob-steel-bearing", amount = 8 })
  else
    bobmods.lib.recipe.add_ingredient("bob-locomotive-2", { type = "item", name = "iron-gear-wheel", amount = 10 })
    bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-2", { type = "item", name = "iron-gear-wheel", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-2", { type = "item", name = "iron-gear-wheel", amount = 8 })
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-railway-3", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-3", "bob-titanium-processing")

    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-locomotive-3", { type = "item", name = "bob-titanium-bearing", amount = 16 })
    bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-3", { type = "item", name = "bob-titanium-bearing", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-3", { type = "item", name = "bob-titanium-bearing", amount = 8 })

    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive-2",
      { type = "item", name = "bob-titanium-bearing", amount = 16 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon-2",
      { type = "item", name = "bob-titanium-bearing", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-fluid-wagon-2",
      { type = "item", name = "bob-titanium-bearing", amount = 8 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-locomotive-3", { type = "item", name = "iron-gear-wheel", amount = 10 })
    bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-3", { type = "item", name = "iron-gear-wheel", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-3", { type = "item", name = "iron-gear-wheel", amount = 8 })

    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-locomotive-2",
      { type = "item", name = "iron-gear-wheel", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-cargo-wagon-2",
      { type = "item", name = "iron-gear-wheel", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-armoured-fluid-wagon-2",
      { type = "item", name = "iron-gear-wheel", amount = 8 }
    )
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "iron-gear-wheel", "bob-titanium-gear-wheel")

    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "bob-tungsten-alloy-processing")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "bob-tungsten-alloy-processing")
    if data.raw.item["bob-silicon-nitride"] then
      bobmods.lib.recipe.remove_ingredient("bob-armoured-locomotive-2", "steel-plate")
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-locomotive-2",
        { type = "item", name = "bob-tungsten-carbide", amount = 15 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-locomotive-2",
        { type = "item", name = "bob-silicon-nitride", amount = 15 }
      )

      bobmods.lib.recipe.remove_ingredient("bob-armoured-cargo-wagon-2", "steel-plate")
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-cargo-wagon-2",
        { type = "item", name = "bob-tungsten-carbide", amount = 15 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-cargo-wagon-2",
        { type = "item", name = "bob-silicon-nitride", amount = 15 }
      )

      bobmods.lib.recipe.remove_ingredient("bob-armoured-fluid-wagon-2", "steel-plate")
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-fluid-wagon-2",
        { type = "item", name = "bob-tungsten-carbide", amount = 15 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-armoured-fluid-wagon-2",
        { type = "item", name = "bob-silicon-nitride", amount = 15 }
      )

      bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "bob-ceramics")
      bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "bob-ceramics")
    else
      bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "steel-plate", "bob-tungsten-carbide")
      bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "steel-plate", "bob-tungsten-carbide")
      bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "steel-plate", "bob-tungsten-carbide")
    end
  else
    if data.raw.item["bob-silicon-nitride"] then
      bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "steel-plate", "bob-silicon-nitride")
      bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "steel-plate", "bob-silicon-nitride")
      bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "steel-plate", "bob-silicon-nitride")
      bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "bob-ceramics")
      bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "bob-ceramics")
    end
  end
end
