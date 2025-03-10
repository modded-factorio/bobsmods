if data.raw.fluid["bob-sulfuric-nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("bob-nitroglycerin", "sulfuric-acid", "bob-sulfuric-nitric-acid")
  bobmods.lib.tech.add_recipe_unlock("bob-nitroglycerin-processing", "bob-sulfuric-nitric-acid")
  bobmods.lib.tech.add_prerequisite("bob-nitroglycerin-processing", "bob-nitrogen-processing")
end

if bobmods.greenhouse then
  bobmods.lib.recipe.replace_ingredient("bob-gun-cotton", "plastic-bar", "wood")
end

if data.raw.fluid["bob-nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("bob-gun-cotton", "sulfuric-acid", "bob-nitric-acid")
end

if mods["bobplates"] then
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-1", { type = "fluid", name = "bob-nitrogen", amount = 200 })
  data.raw.recipe["bob-plasma-turret-1"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-1", "bob-nitrogen-processing")
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-2", { type = "fluid", name = "bob-hydrogen", amount = 100 })
  data.raw.recipe["bob-plasma-turret-2"].category = "crafting-with-fluid"
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-3", { type = "fluid", name = "bob-deuterium", amount = 30 })
  data.raw.recipe["bob-plasma-turret-3"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "bob-deuterium-processing")
end

if data.raw.item["bob-gunmetal-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-bullet-casing", "copper-plate", "bob-gunmetal-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-shell-casing", "copper-plate", "bob-gunmetal-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "bob-zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "bob-zinc-processing")
elseif data.raw.item["bob-brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-bullet-casing", "copper-plate", "bob-brass-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-shell-casing", "copper-plate", "bob-brass-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "bob-zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "bob-zinc-processing")
end

if data.raw.item["bob-lead-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-bullet-projectile", "iron-plate", "bob-lead-plate")
  bobmods.lib.recipe.replace_ingredient("bob-shot", "iron-plate", "bob-lead-plate")
end

if data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-rocket-engine", "steel-plate", "bob-tungsten-plate")
  if data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-rocket-engine", { type = "item", name = "bob-tungsten-pipe", amount = 2 })
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-rocket-engine",
      { type = "item", name = "bob-tungsten-gear-wheel", amount = 1 }
    )
  end
  bobmods.lib.tech.add_prerequisite("bob-rocket", "bob-tungsten-processing")

  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-2", { type = "item", name = "bob-tungsten-plate", amount = 50 })
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-2", "bob-tungsten-processing")
end

if data.raw.fluid["bob-liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("bob-rocket-body", "solid-fuel", "bob-liquid-fuel")
  data.raw.recipe["bob-rocket-body"].category = "crafting-with-fluid"
  bobmods.lib.recipe.replace_ingredient("bob-fire-capsule", "light-oil", "bob-liquid-fuel")
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient("bob-sniper-rifle", { type = "item", name = "bob-glass", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-laser-rifle-battery", { type = "item", name = "bob-glass", amount = 1 })
end

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-laser-rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-2", "bob-cobalt-processing")
elseif data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-radar-3", { type = "item", name = "bob-steel-bearing", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-3", { type = "item", name = "bob-steel-bearing", amount = 10 })
end

if data.raw.item["bob-cobalt-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-sniper-turret-2",
    { type = "item", name = "bob-cobalt-steel-bearing", amount = 20 }
  )
elseif data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-2", { type = "item", name = "bob-steel-bearing", amount = 20 })
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-turrets-3", "bob-invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-2", "bob-invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-3", "bob-invar-processing")

  bobmods.lib.recipe.replace_ingredient("tank", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("tank", "bob-invar-processing")

  if data.raw.item["bob-cobalt-steel-alloy"] then
    bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-1", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-1",
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 75 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-1", "bob-cobalt-processing")
    bobmods.lib.recipe.add_ingredient("bob-plasma-turret-1", { type = "item", name = "bob-invar-alloy", amount = 75 })
  else
    bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-1", "steel-plate", "bob-invar-alloy")
  end
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-1", "bob-invar-processing")
end

if data.raw.item["bob-brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-3", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-radar-3", "bob-zinc-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-3", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-turrets-3", "bob-zinc-processing")
  bobmods.lib.recipe.replace_ingredient("tank", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("tank", "bob-zinc-processing")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-rocket-body", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-rocket", "bob-aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-radar-3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-rifle", "copper-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("military-3", "bob-aluminium-processing")
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-3", "bob-battery-2")
  bobmods.lib.recipe.replace_ingredient("bob-laser-rifle-battery-emerald", "battery", "bob-lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-rifle-battery-amethyst", "battery", "bob-lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-3", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-3", "bob-battery-2")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-4", "battery", "bob-lithium-ion-battery")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-2", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-2", "bob-battery-2")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-5", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-radar-5", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "bob-advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-4", "processing-unit", "bob-advanced-processing-unit")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-radar-4", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-turrets-4", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-4", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-tank-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-tanks-2", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "bob-titanium-processing")

  bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-2", { type = "item", name = "bob-titanium-plate", amount = 75 })
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-2", "bob-titanium-processing")
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-4", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-4", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-tank-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-radar-4", { type = "item", name = "bob-titanium-bearing", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-4", { type = "item", name = "bob-titanium-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient("bob-tank-2", { type = "item", name = "bob-titanium-bearing", amount = 15 })
end

if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "plastic-bar", "bob-silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "concrete", "bob-silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "bob-ceramics")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-5", "bob-battery-3")
  bobmods.lib.recipe.replace_ingredient("bob-laser-rifle-battery-diamond", "battery", "bob-silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-rifle-battery-topaz", "battery", "bob-silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "bob-battery-3")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-3", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "bob-battery-3")
end

if data.raw.item["bob-copper-tungsten-alloy"] then
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "bob-tungsten-alloy-processing")
  bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "bob-copper-tungsten-alloy", amount = 75 }
  )
end

if data.raw.item["bob-tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "steel-plate", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-tungsten-alloy-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "concrete", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "bob-tungsten-alloy-processing")
end

if data.raw.item["bob-heat-shield-tile"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-plasma-turret-4",
    { type = "item", name = "bob-heat-shield-tile", amount = 15 }
  )
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-radar-5", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-turrets-5", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "plastic-bar", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-3", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "bob-nitinol-processing")

  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "bob-nitinol-processing")
  bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-3", { type = "item", name = "bob-nitinol-alloy", amount = 75 })
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-radar-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-radar-5", { type = "item", name = "bob-nitinol-bearing", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-5", { type = "item", name = "bob-nitinol-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-3", { type = "item", name = "bob-nitinol-bearing", amount = 20 })
  bobmods.lib.recipe.add_ingredient("bob-tank-3", { type = "item", name = "bob-nitinol-bearing", amount = 15 })
end

if data.raw.item["bob-ruby-5"] then
  bobmods.lib.recipe.add_ingredient("bob-laser-rifle-battery-ruby", { type = "item", name = "bob-ruby-5", amount = 1 })
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-ruby",
    "bob-laser-rifle-battery",
    "bob-laser-rifle-battery-case"
  )
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-1", "bob-gem-processing-3")
end

if data.raw.item["bob-sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-laser-rifle-battery-sapphire",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-sapphire",
    "bob-laser-rifle-battery-ruby",
    "bob-laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-2", { type = "item", name = "bob-sapphire-5", amount = 1 })
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-2", "bob-gem-processing-3")
end

if data.raw.item["bob-emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-laser-rifle-battery-emerald",
    { type = "item", name = "bob-emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-emerald",
    "bob-laser-rifle-battery-sapphire",
    "bob-laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-3", { type = "item", name = "bob-emerald-5", amount = 1 })
end

if data.raw.item["bob-amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-laser-rifle-battery-amethyst",
    { type = "item", name = "bob-amethyst-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-amethyst",
    "bob-laser-rifle-battery-emerald",
    "bob-laser-rifle-battery-case"
  )
end

if data.raw.item["bob-topaz-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-laser-rifle-battery-topaz",
    { type = "item", name = "tbob-opaz-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-topaz",
    "bob-laser-rifle-battery-amethyst",
    "bob-laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-4", { type = "item", name = "bob-topaz-5", amount = 1 })
end

if data.raw.item["bob-diamond-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-laser-rifle-battery-diamond",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-laser-rifle-battery-diamond",
    "bob-laser-rifle-battery-topaz",
    "bob-laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-5", { type = "item", name = "bob-diamond-5", amount = 1 })
end

if mods["bobmodules"] then
  if data.raw.module["bob-efficiency-module-5"] then
    bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-4", "efficiency-module-3")
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-efficiency-module-5", amount = 1 }
    )
    bobmods.lib.tech.remove_prerequisite("bob-plasma-turrets-4", "efficiency-module-3")
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-efficiency-module-5")
  end

  if data.raw.module["bob-quality-module-5"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-quality-module-5", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-quality-module-5")
  end
else
  if data.raw.module["quality-module-3"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "quality-module-3", amount = 3 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "quality-module-3")
  end
end

if data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-1",
    { type = "item", name = "bob-alien-artifact", amount = 100 }
  )
end

if data.raw.item["bob-alien-artifact-orange"] and data.raw.item["bob-alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-2",
    { type = "item", name = "bob-alien-artifact-orange", amount = 60 }
  )
  if data.raw.item["bob-alien-orange-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-alien-orange-alloy", amount = 60 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-alien-orange-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-alien-artifact-orange", amount = 80 }
    )
  end
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-2",
    { type = "item", name = "bob-alien-artifact", amount = 150 }
  )
end

if data.raw.item["bob-alien-artifact-yellow"] and data.raw.item["bob-alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 60 }
  )
  if data.raw.fluid["bob-alien-explosive"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-4",
      { type = "fluid", name = "bob-alien-explosive", amount = 750 }
    )
    data.raw.recipe["bob-plasma-turret-4"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-alien-yellow-research")
  else
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-alien-artifact-yellow", amount = 150 }
    )
  end
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "bob-alien-artifact", amount = 200 }
  )
end

if data.raw.item["bob-alien-artifact-red"] and data.raw.item["bob-alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "bob-alien-artifact-red", amount = 60 }
  )
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-4",
    { type = "item", name = "bob-alien-artifact", amount = 250 }
  )
end

if data.raw.item["bob-alien-blue-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-ap-bullet-projectile", "steel-plate", "bob-alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-ap-shell", "steel-plate", "bob-alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-piercing-rocket-warhead", "iron-plate", "bob-alien-blue-alloy")
elseif data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-ap-shell", "steel-plate", "bob-tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("bob-ap-bullet-projectile", "steel-plate", "bob-tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("bob-piercing-rocket-warhead", "iron-plate", "bob-tungsten-plate")
end

if data.raw.item["bob-alien-orange-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-electric-bullet-projectile", "steel-plate", "bob-alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-electric-shell", "copper-plate", "bob-alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-electric-rocket-warhead", "copper-plate", "bob-alien-orange-alloy")
elseif data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-electric-bullet-projectile", "steel-plate", "bob-gold-plate")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-electric-shell", "copper-plate", "bob-gold-plate")
  bobmods.lib.recipe.replace_ingredient("bob-electric-rocket-warhead", "copper-plate", "bob-gold-plate")
end

if data.raw.fluid["bob-alien-acid"] then
  bobmods.lib.recipe.replace_ingredient("bob-acid-bullet-projectile", "sulfuric-acid", "bob-alien-acid")
  bobmods.lib.recipe.replace_ingredient("bob-shotgun-acid-shell", "sulfuric-acid", "bob-alien-acid")
  bobmods.lib.recipe.replace_ingredient("bob-acid-rocket-warhead", "sulfuric-acid", "bob-alien-acid")
end

if data.raw.fluid["bob-alien-explosive"] then
  bobmods.lib.recipe.replace_ingredient("bob-he-bullet-projectile", "explosives", "bob-alien-explosive")
  data.raw.recipe["bob-he-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-shotgun-explosive-shell", "explosives", "bob-alien-explosive")
  data.raw.recipe["bob-shotgun-explosive-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-explosive-rocket-warhead", "explosives", "bob-alien-explosive")
  data.raw.recipe["bob-explosive-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-explosive-artillery-shell", "explosives", "bob-alien-explosive")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-explosive-artillery-shell",
    { type = "item", name = "explosives", amount = 3 }
  )
  data.raw.recipe["bob-explosive-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-explosive-artillery-shells", "bob-alien-yellow-research")
end

if data.raw.fluid["bob-alien-poison"] then
  bobmods.lib.recipe.replace_ingredient("bob-poison-bullet-projectile", "coal", "bob-alien-poison")
  data.raw.recipe["bob-poison-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-shotgun-poison-shell", "coal", "bob-alien-poison")
  data.raw.recipe["bob-shotgun-poison-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-poison-rocket-warhead", "coal", "bob-alien-poison")
  data.raw.recipe["bob-poison-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-poison-artillery-shell", "coal", "bob-alien-poison")
  data.raw.recipe["bob-poison-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-poison-artillery-shells", "bob-alien-green-research")
end

if data.raw.fluid["bob-alien-fire"] then
  bobmods.lib.recipe.remove_ingredient("bob-flame-bullet-projectile", "light-oil")
  bobmods.lib.recipe.remove_ingredient("bob-flame-bullet-projectile", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-flame-bullet-projectile",
    { type = "fluid", name = "bob-alien-fire", amount = 10 }
  )
  data.raw.recipe["bob-flame-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("bob-shotgun-flame-shell", "light-oil")
  bobmods.lib.recipe.remove_ingredient("bob-shotgun-flame-shell", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-flame-shell",
    { type = "fluid", name = "bob-alien-fire", amount = 10 }
  )
  data.raw.recipe["bob-shotgun-flame-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("bob-flame-rocket-warhead", "light-oil")
  bobmods.lib.recipe.remove_ingredient("bob-flame-rocket-warhead", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-flame-rocket-warhead",
    { type = "fluid", name = "bob-alien-fire", amount = 20 }
  )
  data.raw.recipe["bob-flame-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("bob-fire-artillery-shell", "light-oil", "bob-alien-fire")
  bobmods.lib.tech.add_prerequisite("bob-fire-artillery-shells", "bob-alien-red-research")
elseif data.raw.fluid["bob-liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("bob-fire-artillery-shell", "light-oil", "bob-liquid-fuel")
end

if data.raw.item["bob-distractor-robot"] then
  bobmods.lib.recipe.remove_ingredient("bob-distractor-artillery-shell", "distractor-capsule")
  bobmods.lib.recipe.add_ingredient(
    "bob-distractor-artillery-shell",
    { type = "item", name = "bob-distractor-robot", amount = 15 }
  )
end

if
  data.raw.item["bob-alien-artifact-orange"]
  and data.raw.item["bob-alien-artifact-blue"]
  and data.raw.item["bob-alien-artifact-yellow"]
  and data.raw.item["bob-alien-artifact-purple"]
  and data.raw.item["bob-alien-artifact-red"]
  and data.raw.item["bob-alien-artifact-green"]
then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "copper-plate", amount = 6 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-shell-casing", amount = 6 }
  )
  bobmods.lib.recipe.add_new_ingredient("bob-shotgun-plasma-shell", { type = "item", name = "bob-cordite", amount = 6 })

  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "steel-plate", amount = 6 }
  )
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "copper-plate", amount = 6 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-shell-casing", amount = 6 }
  )
  bobmods.lib.recipe.add_new_ingredient("bob-shotgun-plasma-shell", { type = "item", name = "bob-cordite", amount = 6 })

  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "steel-plate", amount = 6 }
  )
else
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-electric-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-ap-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-he-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-acid-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-flame-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "item", name = "bob-poison-bullet-projectile", amount = 1 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-electric-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-ap-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-explosive-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-acid-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-flame-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "item", name = "bob-shotgun-poison-shell", amount = 1 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-electric-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-piercing-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-explosive-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-acid-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-flame-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "item", name = "bob-poison-rocket-warhead", amount = 1 }
  )
end

bobmods.lib.recipe.remove_ingredient("artillery-shell", "radar")
bobmods.lib.recipe.set_ingredient("artillery-shell", { type = "item", name = "explosive-cannon-shell", amount = 3 })

if data.raw.fluid["bob-deuterium"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-bullet-projectile",
    { type = "fluid", name = "bob-deuterium", amount = 10 }
  )
  data.raw.recipe["bob-plasma-bullet-projectile"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-shotgun-plasma-shell",
    { type = "fluid", name = "bob-deuterium", amount = 10 }
  )
  data.raw.recipe["bob-shotgun-plasma-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-rocket-warhead",
    { type = "fluid", name = "bob-deuterium", amount = 10 }
  )
  data.raw.recipe["bob-plasma-rocket-warhead"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-deuterium-processing")
end
