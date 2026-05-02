bobmods.lib.recipe.set_ingredients("roboport", {
  { type = "item", name = "steel-plate", amount = 15 },
  { type = "item", name = "bob-roboport-antenna-1", amount = 5 },
  { type = "item", name = "bob-roboport-chargepad-1", amount = 4 },
  { type = "item", name = "bob-roboport-door-1", amount = 1 },
})

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-2", "steel-plate", "bob-aluminium-plate")
  if data.raw.recipe["bob-roboport-2"] then
    bobmods.lib.recipe.replace_ingredient("bob-roboport-2", "steel-plate", "bob-aluminium-plate")
  end
  bobmods.lib.recipe.replace_ingredient("bob-robochest-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-logistic-zone-expander-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-large-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-2", "bob-aluminium-processing")
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-2", "steel-plate", "bob-invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-2", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-2", "bob-invar-processing")
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-2", "copper-cable", "bob-tinned-copper-cable")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-2", { type = "item", name = "bob-steel-bearing", amount = 20 })
else
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-2", { type = "item", name = "iron-gear-wheel", amount = 20 })
end

if data.raw.item["bob-brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-2", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-2", "bob-zinc-processing")
elseif data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-nickel-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-3", "steel-plate", "bob-nickel-plate")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "bob-nickel-processing")
end

if data.raw.item["bob-insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-3", "copper-cable", "bob-insulated-cable")
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-3", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "bob-battery-2")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-3", "steel-plate", "bob-titanium-plate")
  if data.raw.recipe["bob-roboport-3"] then
    bobmods.lib.recipe.replace_ingredient("bob-roboport-3", "steel-plate", "bob-titanium-plate")
  end
  bobmods.lib.recipe.replace_ingredient("bob-robochest-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-logistic-zone-expander-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-large-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "bob-titanium-processing")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-roboport-door-3",
    { type = "item", name = "bob-titanium-bearing", amount = 20 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-3", { type = "item", name = "iron-gear-wheel", amount = 20 })
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-3", { type = "fluid", name = "lubricant", amount = 10 })
  data.raw.recipe["bob-roboport-door-3"].category = "crafting-with-fluid"
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-nickel-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-4", "steel-plate", "bob-nickel-plate")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-4", "copper-plate", "bob-gold-plate")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "bob-gold-processing")
end

if data.raw.item["bob-gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-4", "copper-cable", "bob-gilded-copper-cable")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-antenna-4", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-4", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "bob-advanced-processing-unit")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-4", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "bob-battery-3")
else
  if data.raw.item["bob-lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-4", "battery", "bob-lithium-ion-battery")
  end
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-chargepad-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-4", "steel-plate", "bob-nitinol-alloy")
  if data.raw.recipe["bob-roboport-4"] then
    bobmods.lib.recipe.replace_ingredient("bob-roboport-4", "steel-plate", "bob-nitinol-alloy")
  end
  bobmods.lib.recipe.replace_ingredient("bob-robochest-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-logistic-zone-expander-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-robo-charge-port-large-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "bob-nitinol-processing")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-4", { type = "item", name = "bob-nitinol-bearing", amount = 20 })
else
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-4", { type = "item", name = "iron-gear-wheel", amount = 30 })
  bobmods.lib.recipe.add_ingredient("bob-roboport-door-4", { type = "fluid", name = "lubricant", amount = 15 })
  data.raw.recipe["bob-roboport-door-4"].category = "crafting-with-fluid"
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-roboport-door-4", "iron-gear-wheel", "bob-nitinol-gear-wheel")
end
