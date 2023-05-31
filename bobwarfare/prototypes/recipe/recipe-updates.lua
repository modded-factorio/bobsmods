if data.raw.fluid["sulfuric-nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("nitroglycerin", "sulfuric-acid", "sulfuric-nitric-acid")
  bobmods.lib.tech.add_recipe_unlock("nitroglycerin-processing", "sulfuric-nitric-acid")
  bobmods.lib.tech.add_prerequisite("nitroglycerin-processing", "nitrogen-processing")
end

if data.raw.fluid["nitric-acid"] then
  bobmods.lib.recipe.replace_ingredient("gun-cotton", "sulfuric-acid", "nitric-acid")
end

if data.raw.item["gunmetal-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bullet-casing", "copper-plate", "gunmetal-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-shell-casing", "copper-plate", "gunmetal-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "zinc-processing")
elseif data.raw.item["brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bullet-casing", "copper-plate", "brass-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-shell-casing", "copper-plate", "brass-alloy")
  bobmods.lib.tech.add_prerequisite("bob-bullets", "zinc-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-shells", "zinc-processing")
end

if data.raw.item["lead-plate"] then
  bobmods.lib.recipe.replace_ingredient("bullet-projectile", "iron-plate", "lead-plate")
  bobmods.lib.recipe.replace_ingredient("shot", "iron-plate", "lead-plate")
end

if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("rocket-engine", "steel-plate", "tungsten-plate")
  bobmods.lib.recipe.add_ingredient("rocket-engine", "tungsten-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-rocket", "tungsten-processing")
end

if data.raw.fluid["liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("rocket-body", "solid-fuel", "liquid-fuel")
  data.raw.recipe["rocket-body"].category = "crafting-with-fluid"
  bobmods.lib.recipe.replace_ingredient("fire-capsule", "light-oil", "liquid-fuel")
end

if data.raw.item["glass"] then
  bobmods.lib.recipe.add_ingredient("sniper-rifle", { "glass", 2 })
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery", { "glass", 1 })
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("radar-2", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("rifle", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("sniper-rifle", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("laser-rifle", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-2", "cobalt-processing")
elseif data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-3", { "steel-bearing", 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-3", { "steel-bearing", 10 })
end

if data.raw.item["cobalt-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-2", { "cobalt-steel-bearing", 20 })
elseif data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-2", { "steel-bearing", 20 })
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("heavy-armor-2", "iron-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-armor-making-3", "invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "iron-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-turrets-3", "invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-2", "iron-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-2", "invar-processing")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-3", "invar-processing")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "invar-processing")
end

if data.raw.item["cobalt-steel-alloy"] then
  bobmods.lib.recipe.replace_ingredient("heavy-armor-2", "steel-plate", "cobalt-steel-alloy")
  bobmods.lib.tech.add_prerequisite("bob-armor-making-3", "cobalt-processing")
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("radar-3", "iron-gear-wheel", "brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("radars-3", "zinc-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-3", "iron-gear-wheel", "brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-turrets-3", "zinc-processing")
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-body", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-rocket", "aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("radar-3", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("radars-3", "aluminium-processing")
  bobmods.lib.recipe.replace_ingredient("rifle", "copper-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("military-3", "aluminium-processing")
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-emerald", "battery", "lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-amethyst", "battery", "lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-4", "battery", "lithium-ion-battery")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-4", "battery", "lithium-ion-battery")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "advanced-circuit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "advanced-circuit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("radar-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("radars-5", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "advanced-electronics-3")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-5", "advanced-electronics-3")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("heavy-armor-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-armor-making-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("radar-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("radars-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-turrets-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-tank-2", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-tanks-2", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-4", "titanium-processing")
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("radar-4", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-4", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-tank-2", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-4", { "titanium-bearing", 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-4", { "titanium-bearing", 10 })
  bobmods.lib.recipe.add_ingredient("bob-tank-2", { "titanium-bearing", 15 })
end

if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("heavy-armor-3", "plastic-bar", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-armor-making-4", "ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "plastic-bar", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "plastic-bar", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "ceramics")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-2", "concrete", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "ceramics")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-diamond", "battery", "silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-topaz", "battery", "silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "battery-3")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-5", "battery-3")
end

if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "steel-plate", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "tungsten-alloy-processing")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "steel-plate", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "tungsten-alloy-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "concrete", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "tungsten-alloy-processing")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "plastic-bar", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("radar-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("radars-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-turrets-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-sniper-turret-3", "plastic-bar", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-sniper-turrets-3", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-laser-turret-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-artillery-turret-3", "nitinol-processing")

  bobmods.lib.recipe.replace_ingredient("bob-plasma-turret-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-plasma-turrets-5", "nitinol-processing")
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("radar-5", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-gun-turret-5", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-tanks-3", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("bob-tank-3", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-artillery-turret-3", "iron-gear-wheel", "nitinol-gear-wheel")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("radar-5", { "nitinol-bearing", 5 })
  bobmods.lib.recipe.add_ingredient("bob-gun-turret-5", { "nitinol-bearing", 10 })
  bobmods.lib.recipe.add_ingredient("bob-sniper-turret-3", { "nitinol-bearing", 20 })
  bobmods.lib.recipe.add_ingredient("bob-tank-3", { "nitinol-bearing", 15 })
end

if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-ruby", { "ruby-5", 1 })
  bobmods.lib.recipe.replace_ingredient("laser-rifle-battery-ruby", "laser-rifle-battery", "laser-rifle-battery-case")
  bobmods.lib.tech.add_prerequisite("bob-laser-rifle-ammo-1", "gem-processing-3")
end

if data.raw.item["sapphire-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-sapphire", { "sapphire-5", 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-sapphire",
    "laser-rifle-battery-ruby",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-2", { "sapphire-5", 1 })
  bobmods.lib.tech.add_prerequisite("bob-laser-turrets-2", "gem-processing-3")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-emerald", { "emerald-5", 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-emerald",
    "laser-rifle-battery-sapphire",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-3", { "emerald-5", 1 })
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-amethyst", { "amethyst-5", 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-amethyst",
    "laser-rifle-battery-emerald",
    "laser-rifle-battery-case"
  )
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-topaz", { "topaz-5", 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-topaz",
    "laser-rifle-battery-amethyst",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-4", { "topaz-5", 1 })
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("laser-rifle-battery-diamond", { "diamond-5", 1 })
  bobmods.lib.recipe.replace_ingredient(
    "laser-rifle-battery-diamond",
    "laser-rifle-battery-topaz",
    "laser-rifle-battery-case"
  )
  bobmods.lib.recipe.add_ingredient("bob-laser-turret-5", { "diamond-5", 1 })
end

if data.raw.module["effectivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "effectivity-module-3", "effectivity-module-4")
end

if data.raw.module["speed-module-4"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk3", "speed-module-3", "speed-module-4")
end

if data.raw.module["effectivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "effectivity-module-3", "effectivity-module-6")
end

if data.raw.module["speed-module-6"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk4", "speed-module-3", "speed-module-6")
end

if data.raw.module["effectivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "effectivity-module-3", "effectivity-module-8")
end

if data.raw.module["speed-module-8"] then
  bobmods.lib.recipe.replace_ingredient("bob-power-armor-mk5", "speed-module-3", "speed-module-8")
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-1", { "alien-artifact", 20 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-2", { "alien-artifact", 30 })
end

if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk3", { "alien-artifact-orange", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk3", { "alien-artifact-blue", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-3", { "alien-artifact-orange", 10 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-3", { "alien-artifact-blue", 10 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk3", { "alien-artifact", 70 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-3", { "alien-artifact", 40 })
else
  bobmods.lib.recipe.add_ingredient("bob-power-armor-mk3", { "processing-unit", 70 })
end

if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk4", { "alien-artifact-yellow", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk4", { "alien-artifact-purple", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-4", { "alien-artifact-yellow", 10 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-4", { "alien-artifact-purple", 10 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk4", { "alien-artifact", 90 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-4", { "alien-artifact", 50 })
else
  bobmods.lib.recipe.add_ingredient("bob-power-armor-mk4", { "processing-unit", 90 })
end

if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk5", { "alien-artifact-red", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk5", { "alien-artifact-green", 25 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-5", { "alien-artifact-red", 10 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-5", { "alien-artifact-green", 10 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("bob-power-armor-mk5", { "alien-artifact", 120 })
  bobmods.lib.recipe.add_new_ingredient("bob-plasma-turret-5", { "alien-artifact", 60 })
else
  bobmods.lib.recipe.add_ingredient("bob-power-armor-mk5", { "processing-unit", 120 })
end

if data.raw.item["alien-blue-alloy"] then
  bobmods.lib.recipe.replace_ingredient("ap-bullet-projectile", "steel-plate", "alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-ap-shell", "steel-plate", "alien-blue-alloy")
  bobmods.lib.recipe.replace_ingredient("piercing-rocket-warhead", "iron-plate", "alien-blue-alloy")
elseif data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("shotgun-ap-shell", "steel-plate", "tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("ap-bullet-projectile", "steel-plate", "tungsten-plate")
  bobmods.lib.recipe.replace_ingredient("piercing-rocket-warhead", "iron-plate", "tungsten-plate")
end

if data.raw.item["alien-orange-alloy"] then
  bobmods.lib.recipe.replace_ingredient("electric-bullet-projectile", "steel-plate", "alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("shotgun-electric-shell", "copper-plate", "alien-orange-alloy")
  bobmods.lib.recipe.replace_ingredient("electric-rocket-warhead", "copper-plate", "alien-orange-alloy")
end

if data.raw.fluid["alien-acid"] then
  bobmods.lib.recipe.replace_ingredient("acid-bullet-projectile", "sulfuric-acid", "alien-acid")
  bobmods.lib.recipe.replace_ingredient("shotgun-acid-shell", "sulfuric-acid", "alien-acid")
  bobmods.lib.recipe.replace_ingredient("acid-rocket-warhead", "sulfuric-acid", "alien-acid")
end

if data.raw.fluid["alien-explosive"] then
  bobmods.lib.recipe.replace_ingredient("he-bullet-projectile", "explosives", "alien-explosive")
  data.raw.recipe["he-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("shotgun-explosive-shell", "explosives", "alien-explosive")
  data.raw.recipe["shotgun-explosive-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("explosive-rocket-warhead", "explosives", "alien-explosive")
  data.raw.recipe["explosive-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("explosive-artillery-shell", "explosives", "alien-explosive")
  bobmods.lib.recipe.add_new_ingredient("explosive-artillery-shell", { "explosives", 3 })
  data.raw.recipe["explosive-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-explosive-artillery-shells", "alien-yellow-research")
end

if data.raw.fluid["alien-poison"] then
  bobmods.lib.recipe.replace_ingredient("poison-bullet-projectile", "coal", "alien-poison")
  data.raw.recipe["poison-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("shotgun-poison-shell", "coal", "alien-poison")
  data.raw.recipe["shotgun-poison-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("poison-rocket-warhead", "coal", "alien-poison")
  data.raw.recipe["poison-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("poison-artillery-shell", "coal", "alien-poison")
  data.raw.recipe["poison-artillery-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-poison-artillery-shells", "alien-green-research")
end

if data.raw.fluid["alien-fire"] then
  bobmods.lib.recipe.remove_ingredient("flame-bullet-projectile", "light-oil")
  bobmods.lib.recipe.remove_ingredient("flame-bullet-projectile", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient("flame-bullet-projectile", { "alien-fire", 10 })
  data.raw.recipe["flame-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("shotgun-flame-shell", "light-oil")
  bobmods.lib.recipe.remove_ingredient("shotgun-flame-shell", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient("shotgun-flame-shell", { "alien-fire", 10 })
  data.raw.recipe["shotgun-flame-shell"].category = "crafting-with-fluid"

  bobmods.lib.recipe.remove_ingredient("flame-rocket-warhead", "light-oil")
  bobmods.lib.recipe.remove_ingredient("flame-rocket-warhead", "heavy-oil")
  bobmods.lib.recipe.add_new_ingredient("flame-rocket-warhead", { "alien-fire", 20 })
  data.raw.recipe["flame-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.recipe.replace_ingredient("fire-artillery-shell", "light-oil", "alien-fire")
  bobmods.lib.tech.add_prerequisite("bob-fire-artillery-shells", "alien-red-research")
elseif data.raw.fluid["liquid-fuel"] then
  bobmods.lib.recipe.replace_ingredient("fire-artillery-shell", "light-oil", "liquid-fuel")
end

if data.raw.item["distractor-robot"] then
  bobmods.lib.recipe.remove_ingredient("distractor-artillery-shell", "distractor-capsule")
  bobmods.lib.recipe.add_ingredient("distractor-artillery-shell", { "distractor-robot", 15 })
end

if
  data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-red"]
  and data.raw.item["alien-artifact-green"]
then
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-orange", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-blue", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-yellow", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-purple", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-red", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact-green", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "copper-plate", 6 })

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-orange", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-blue", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-yellow", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-purple", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-red", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact-green", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-shell-casing", 6 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "cordite", 6 })

  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-orange", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-blue", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-yellow", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-purple", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-red", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact-green", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "steel-plate", 6 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "alien-artifact", 10 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "copper-plate", 6 })

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "alien-artifact", 10 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-shell-casing", 6 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "cordite", 6 })

  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "alien-artifact", 10 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "steel-plate", 6 })
else
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "electric-bullet-projectile", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "ap-bullet-projectile", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "he-bullet-projectile", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "acid-bullet-projectile", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "flame-bullet-projectile", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "poison-bullet-projectile", 1 })

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-electric-shell", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-ap-shell", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-explosive-shell", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-acid-shell", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-flame-shell", 1 })
  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "shotgun-poison-shell", 1 })

  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "electric-rocket-warhead", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "piercing-rocket-warhead", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "explosive-rocket-warhead", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "acid-rocket-warhead", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "flame-rocket-warhead", 1 })
  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "poison-rocket-warhead", 1 })
end

bobmods.lib.recipe.remove_ingredient("artillery-shell", "radar")
bobmods.lib.recipe.set_ingredient("artillery-shell", { "explosive-cannon-shell", 3 })

if data.raw.fluid.deuterium then
  bobmods.lib.recipe.add_new_ingredient("plasma-bullet-projectile", { "deuterium", 10 })
  data.raw.recipe["plasma-bullet-projectile"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient("shotgun-plasma-shell", { "deuterium", 10 })
  data.raw.recipe["shotgun-plasma-shell"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "deuterium-processing")

  bobmods.lib.recipe.add_new_ingredient("plasma-rocket-warhead", { "deuterium", 10 })
  data.raw.recipe["plasma-rocket-warhead"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "deuterium-processing")
end

bobmods.lib.recipe.enabled("radar", false)
