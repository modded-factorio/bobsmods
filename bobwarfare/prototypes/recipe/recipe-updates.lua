if data.raw.fluid["sulfuric-nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("nitroglycerin", "sulfuric-acid", "sulfuric-nitric-acid")
  bobmods.lib.tech.add_recipe_unlock("nitroglycerin-processing", "sulfuric-nitric-acid")
  bobmods.lib.tech.add_prerequisite("nitroglycerin-processing", "bob-nitrogen-processing")
end

if data.raw.fluid["bob-nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("gun-cotton", "sulfuric-acid", "bob-nitric-acid")
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
  bobmods.lib.recipe.replace_ingredient("bullet-casing", "copper-plate", "bob-gunmetal-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-shell-casing", "copper-plate", "bob-gunmetal-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "bob-zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "bob-zinc-processing")
elseif data.raw.item["bob-brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bullet-casing", "copper-plate", "bob-brass-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-shell-casing", "copper-plate", "bob-brass-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "bob-zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "bob-zinc-processing")
end

if data.raw.item["bob-lead-plate"] then
  bobmods.lib.recipe.replace_ingredient("bullet-projectile", "iron-plate", "bob-lead-plate")
  bobmods.lib.recipe.replace_ingredient("shot", "iron-plate", "bob-lead-plate")
end

if data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("rocket-engine", "steel-plate", "bob-tungsten-plate")
  if data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("rocket-engine", { type = "item", name = "tungsten-pipe", amount = 2 })
  else
    bobmods.lib.recipe.add_ingredient("rocket-engine", { type = "item", name = "bob-tungsten-gear-wheel", amount = 1 })
  end
  bobmods.lib.tech.add_prerequisite("bob-rocket", "bob-tungsten-processing")

  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-2", { type = "item", name = "bob-tungsten-plate", amount = 50 })
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-2", "bob-tungsten-processing")
end

if data.raw.fluid["bob-liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("rocket-body", "solid-fuel", "bob-liquid-fuel")
  data.raw.recipe["rocket-body"].category = "crafting-with-fluid"
  bobmods.lib.recipe.replace_ingredient("fire-capsule", "light-oil", "bob-liquid-fuel")
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient("sniper-rifle", { type = "item", name = "bob-glass", amount = 2 })
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery", { type = "item", name = "bob-glass", amount = 1 })
end

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("radar-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("sniper-rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("laser-rifle", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-2", "bob-cobalt-processing")
elseif data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-3", { type = "item", name = "bob-steel-bearing", amount = 5 })
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
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "iron-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "bob-invar-processing")
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
  bobmods.lib.recipe.replace_ingredient("radar-3", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("radars-3", "bob-zinc-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-3", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-turrets-3", "bob-zinc-processing")
  bobmods.lib.recipe.replace_ingredient("tank", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("tank", "bob-zinc-processing")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "bob-aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-body", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-rocket", "bob-aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("radar-3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("rifle", "copper-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("military-3", "bob-aluminium-processing")
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-3", "bob-battery-2")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-emerald", "battery", "bob-lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-amethyst", "battery", "bob-lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-3", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-3", "bob-battery-2")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-4", "battery", "bob-lithium-ion-battery")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-2", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-2", "bob-battery-2")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "advanced-circuit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "advanced-circuit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("radar-5", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("radars-5", "bob-advanced-processing-unit")
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
  if mods["bobrevamp"] then
    bobmods.lib.recipe.remove_ingredient("power-armor-mk2", "low-density-structure")
    bobmods.lib.tech.remove_prerequisite("power-armor-mk2", "low-density-structure")
    if data.raw.item["cobalt-steel-alloy"] then
      bobmods.lib.recipe.add_ingredient(
        "power-armor-mk2",
        { type = "item", name = "bob-cobalt-steel-alloy", amount = 50 }
      )
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
  bobmods.lib.recipe.replace_ingredient("radar-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("radars-4", "bob-titanium-processing")
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
  bobmods.lib.recipe.replace_ingredient("radar-4", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-4", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-tank-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-4", { type = "item", name = "bob-titanium-bearing", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-4", { type = "item", name = "bob-titanium-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient("bob-tank-2", { type = "item", name = "bob-titanium-bearing", amount = 15 })
end

if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "plastic-bar", "bob-silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "bob-ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "plastic-bar", "bob-silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "concrete", "bob-silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "bob-ceramics")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-5", "bob-battery-3")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-diamond", "battery", "bob-silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-topaz", "battery", "bob-silver-zinc-battery")
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
  if data.raw.item["mech-armor-plate"] then
    bobmods.lib.recipe.remove_ingredient("bob-power-armor-mk5", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bob-power-armor-mk5", { type = "item", name = "mech-armor-plate", amount = 5 })
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "tankotron")
  else
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "steel-plate", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-tungsten-alloy-processing")
  end
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "steel-plate", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-tungsten-alloy-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "concrete", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "bob-tungsten-alloy-processing")
end

if data.raw.item["heat-shield-tile"] then
  bobmods.lib.recipe.add_ingredient("bob-plasma-turret-4", { type = "item", name = "heat-shield-tile", amount = 15 })
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "plastic-bar", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("radar-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("radars-5", "bob-nitinol-processing")
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
  bobmods.lib.recipe.replace_ingredient("radar-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-5", { type = "item", name = "bob-nitinol-bearing", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-5", { type = "item", name = "bob-nitinol-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-3", { type = "item", name = "bob-nitinol-bearing", amount = 20 })
  bobmods.lib.recipe.add_ingredient("bob-tank-3", { type = "item", name = "bob-nitinol-bearing", amount = 15 })
end

if data.raw.item["bob-ruby-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-ruby", { type = "item", name = "bob-ruby-5", amount = 1 })
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-ruby", "laser-rifle-battery", "laser-rifle-battery-case")
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-1", "bob-gem-processing-3")
end

if data.raw.item["bob-sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "laser-rifle-battery-sapphire",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-sapphire",
    "laser-rifle-battery-ruby",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-2", { type = "item", name = "bob-sapphire-5", amount = 1 })
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-2", "bob-gem-processing-3")
end

if data.raw.item["bob-emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "laser-rifle-battery-emerald",
    { type = "item", name = "bob-emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-emerald",
    "laser-rifle-battery-sapphire",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-3", { type = "item", name = "bob-emerald-5", amount = 1 })
end

if data.raw.item["bob-amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "laser-rifle-battery-amethyst",
    { type = "item", name = "bob-amethyst-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-amethyst",
    "laser-rifle-battery-emerald",
    "laser-rifle-battery-case"
  )
end

if data.raw.item["bob-topaz-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-topaz", { type = "item", name = "tbob-opaz-5", amount = 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-topaz",
    "laser-rifle-battery-amethyst",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-4", { type = "item", name = "bob-topaz-5", amount = 1 })
end

if data.raw.item["bob-diamond-5"] then
  bobmods.lib.recipe.add_ingredient(
    "laser-rifle-battery-diamond",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-diamond",
    "laser-rifle-battery-topaz",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-5", { type = "item", name = "bob-diamond-5", amount = 1 })
end

if mods["bobmodules"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "efficiency-module-2", "efficiency-module-3")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "speed-module-2", "speed-module-3")

  if data.raw.module["bob-efficiency-module-4"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "efficiency-module-3", "bob-efficiency-module-4")
  end

  if data.raw.module["bob-speed-module-4"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "speed-module-3", "bob-speed-module-4")
  end

  if data.raw.module["bob-efficiency-module-5"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "efficiency-module-3", "bob-efficiency-module-5")
    bobmods.lib.recipe.remove_ingredient("bob-plasma-turret-4", "efficiency-module-3")
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-efficiency-module-5", amount = 1 }
    )
    bobmods.lib.tech.remove_prerequisite("bob-plasma-turrets-4", "efficiency-module-3")
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-efficiency-module-5")
  end

  if data.raw.module["bob-speed-module-5"] then
    bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "speed-module-3", "bob-speed-module-5")
  end

  if data.raw.module["bob-quality-module-5"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "bob-quality-module-5", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "bob-quality-module-5")
  end
else
  bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "speed-module-2", "speed-module")
  bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "efficiency-module-2", "efficiency-module")
  if data.raw.module["quality-module-3"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "quality-module-3", amount = 3 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "quality-module-3")
  end
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-1", { type = "item", name = "alien-artifact", amount = 100 })
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
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-2",
    { type = "item", name = "alien-artifact-orange", amount = 60 }
  )
  if data.raw.item["alien-orange-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "alien-orange-alloy", amount = 60 }
    )
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "alien-orange-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "alien-artifact-orange", amount = 80 }
    )
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk3", { type = "item", name = "alien-artifact", amount = 70 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-2", { type = "item", name = "alien-artifact", amount = 150 })
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
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "alien-artifact-yellow", amount = 60 }
  )
  if data.raw.fluid["alien-explosive"] then
    bobmods.lib.recipe.add_ingredient("bob-plasma-turret-4", { type = "fluid", name = "alien-explosive", amount = 750 })
    data.raw.recipe["bob-plasma-turret-4"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "alien-yellow-research")
  else
    bobmods.lib.recipe.add_new_ingredient(
      "bob-plasma-turret-4",
      { type = "item", name = "alien-artifact-yellow", amount = 150 }
    )
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk4", { type = "item", name = "alien-artifact", amount = 90 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-3", { type = "item", name = "alien-artifact", amount = 200 })
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
  bobmods.lib.recipe.add_new_ingredient(
    "bob-plasma-turret-3",
    { type = "item", name = "alien-artifact-red", amount = 60 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk5", { type = "item", name = "alien-artifact", amount = 120 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-4", { type = "item", name = "alien-artifact", amount = 250 })
else
  bobmods.lib.recipe.add_ingredient("bob-power-armor-mk5", { type = "item", name = "processing-unit", amount = 120 })
end

if data.raw.item["bob-alien-blue-alloy"] then
  bobmods.lib.recipe.replace_ingredient("ap-bullet-projectile", "steel-plate", "bob-alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-ap-shell", "steel-plate", "bob-alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("piercing-rocket-warhead", "iron-plate", "bob-alien-blue-alloy")
elseif data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("shotgun-ap-shell", "steel-plate", "bob-tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("ap-bullet-projectile", "steel-plate", "bob-tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("piercing-rocket-warhead", "iron-plate", "bob-tungsten-plate")
end

if data.raw.item["bob-alien-orange-alloy"] then
  bobmods.lib.recipe.replace_ingredient("electric-bullet-projectile", "steel-plate", "bob-alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-electric-shell", "copper-plate", "bob-alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("electric-rocket-warhead", "copper-plate", "bob-alien-orange-alloy")
elseif data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("electric-bullet-projectile", "steel-plate", "bob-gold-plate")
  bobmods.lib.recipe.replace_ingredient("shotgun-electric-shell", "copper-plate", "bob-gold-plate")
  bobmods.lib.recipe.replace_ingredient("electric-rocket-warhead", "copper-plate", "bob-gold-plate")
end

if data.raw.fluid["bob-alien-acid"] then
  bobmods.lib.recipe.replace_ingredient("acid-bullet-projectile", "sulfuric-acid", "bob-alien-acid")
  bobmods.lib.recipe.replace_ingredient("shotgun-acid-shell", "sulfuric-acid", "bob-alien-acid")
  bobmods.lib.recipe.replace_ingredient("acid-rocket-warhead", "sulfuric-acid", "bob-alien-acid")
end

if data.raw.fluid["bob-alien-explosive"] then
  bobmods.lib.recipe.replace_ingredient("he-bullet-projectile", "explosives", "bob-alien-explosive")
  data.raw.recipe["he-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("shotgun-explosive-shell", "explosives", "bob-alien-explosive")
  data.raw.recipe["shotgun-explosive-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("explosive-rocket-warhead", "explosives", "bob-alien-explosive")
  data.raw.recipe["explosive-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("explosive-artillery-shell", "explosives", "bob-alien-explosive")
  bobmods.lib.recipe.add_new_ingredient("explosive-artillery-shell", { type = "item", name = "explosives", amount = 3 })
  data.raw.recipe["explosive-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-explosive-artillery-shells", "bob-alien-yellow-research")
end

if data.raw.fluid["bob-alien-poison"] then
  bobmods.lib.recipe.replace_ingredient("poison-bullet-projectile", "coal", "bob-alien-poison")
  data.raw.recipe["poison-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("shotgun-poison-shell", "coal", "bob-alien-poison")
  data.raw.recipe["shotgun-poison-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("poison-rocket-warhead", "coal", "bob-alien-poison")
  data.raw.recipe["poison-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("poison-artillery-shell", "coal", "bob-alien-poison")
  data.raw.recipe["poison-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-poison-artillery-shells", "bob-alien-green-research")
end

if data.raw.fluid["bob-alien-fire"] then
  bobmods.lib.recipe.remove_ingredient("flame-bullet-projectile", "light-oil")
  bobmods.lib.recipe.remove_ingredient("flame-bullet-projectile", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient(
    "flame-bullet-projectile",
    { type = "fluid", name = "bob-alien-fire", amount = 10 }
  )
  data.raw.recipe["flame-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("shotgun-flame-shell", "light-oil")
  bobmods.lib.recipe.remove_ingredient("shotgun-flame-shell", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient("shotgun-flame-shell", { type = "fluid", name = "bob-alien-fire", amount = 10 })
  data.raw.recipe["shotgun-flame-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("flame-rocket-warhead", "light-oil")
  bobmods.lib.recipe.remove_ingredient("flame-rocket-warhead", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient(
    "flame-rocket-warhead",
    { type = "fluid", name = "bob-alien-fire", amount = 20 }
  )
  data.raw.recipe["flame-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("fire-artillery-shell", "light-oil", "bob-alien-fire")
  bobmods.lib.tech.add_prerequisite("bob-fire-artillery-shells", "bob-alien-red-research")
elseif data.raw.fluid["bob-liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("fire-artillery-shell", "light-oil", "bob-liquid-fuel")
end

if data.raw.item["distractor-robot"] then
  bobmods.lib.recipe.remove_ingredient("distractor-artillery-shell", "distractor-capsule")
  bobmods.lib.recipe.add_ingredient(
    "distractor-artillery-shell",
    { type = "item", name = "distractor-robot", amount = 15 }
  )
end

if
  data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-red"]
  and data.raw.item["alien-artifact-green"]
then
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "copper-plate", amount = 6 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-shell-casing", amount = 6 }
  )
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { type = "item", name = "cordite", amount = 6 })

  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-orange", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-blue", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-yellow", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-purple", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-red", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact-green", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { type = "item", name = "steel-plate", amount = 6 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "copper-plate", amount = 6 }
  )

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { type = "item", name = "alien-artifact", amount = 10 })
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-shell-casing", amount = 6 }
  )
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { type = "item", name = "cordite", amount = 6 })

  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { type = "item", name = "steel-plate", amount = 6 })
else
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "electric-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "ap-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "he-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "acid-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "flame-bullet-projectile", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "item", name = "poison-bullet-projectile", amount = 1 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-electric-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-ap-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-explosive-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-acid-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-flame-shell", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "shotgun-plasma-shell",
    { type = "item", name = "shotgun-poison-shell", amount = 1 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "electric-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "piercing-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "explosive-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "acid-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "flame-rocket-warhead", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "item", name = "poison-rocket-warhead", amount = 1 }
  )
end

bobmods.lib.recipe.remove_ingredient("artillery-shell", "radar")
bobmods.lib.recipe.set_ingredient("artillery-shell", { type = "item", name = "explosive-cannon-shell", amount = 3 })

if data.raw.fluid["bob-deuterium"] then
  bobmods.lib.recipe.add_new_ingredient(
    "plasma-bullet-projectile",
    { type = "fluid", name = "bob-deuterium", amount = 10 }
  )
  data.raw.recipe["plasma-bullet-projectile"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { type = "fluid", name = "bob-deuterium", amount = 10 })
  data.raw.recipe["shotgun-plasma-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient(
    "plasma-rocket-warhead",
    { type = "fluid", name = "bob-deuterium", amount = 10 }
  )
  data.raw.recipe["plasma-rocket-warhead"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-deuterium-processing")
end

-- Armor
bobmods.lib.recipe.replace_ingredient("modular-armor", "advanced-circuit", "electronic-circuit")

bobmods.lib.recipe.replace_ingredient("power-armor", "processing-unit", "advanced-circuit")
bobmods.lib.recipe.add_new_ingredient("power-armor", { type = "item", name = "modular-armor", amount = 1 })
-- By default, electric engines are Blue Science
if (not mods["bobplates"]) and not mods["boblogistics"] then
  bobmods.lib.recipe.remove_ingredient("power-armor", "electric-engine-unit")
end

bobmods.lib.recipe.replace_ingredient("power-armor-mk2", "processing-unit", "advanced-circuit")
bobmods.lib.recipe.add_new_ingredient("power-armor-mk2", { type = "item", name = "power-armor", amount = 1 })
