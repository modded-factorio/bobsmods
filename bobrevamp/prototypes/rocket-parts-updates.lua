-- Rocket silo overhaul

bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "steel-plate", amount = 500 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "concrete", amount = 200 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "pipe", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "processing-unit", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "electric-engine-unit", amount = 100 })

if data.raw.item["bob-titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "pipe", "bob-titanium-pipe")
end
if not mods["space-age"] and data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "steel-plate", "bob-nitinol-alloy")
elseif data.raw.item["bob-titanium-plate"] then
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("cargo-landing-pad", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("space-platform-starter-pack", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("space-platform-foundation", "steel-plate", "bob-titanium-plate")
end

bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "low-density-structure", amount = 50 })
bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "bob-heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "bob-heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "electric-engine-unit", amount = 40 })

if not mods["space-age"] and data.raw.item["bob-tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "bob-tungsten-pipe", amount = 30 })
elseif data.raw.item["bob-titanium-pipe"] then
  bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "bob-titanium-pipe", amount = 10 })
end

bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-heat-shield")
bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "bob-heat-shield-tile", amount = 10 })
if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("bob-heat-shield-tile", "steel-plate", "bob-silicon-nitride")
  bobmods.lib.tech.replace_prerequisite("bob-heat-shield", "steel-processing", "bob-ceramics")
end
if mods["space-age"] then
  bobmods.lib.tech.remove_science_pack("bob-heat-shield", "production-science-pack")
  bobmods.lib.tech.remove_prerequisite("bob-heat-shield", "production-science-pack")
  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-shield-tile", "plastic-bar", "bob-invar-alloy")
    bobmods.lib.tech.replace_prerequisite("bob-heat-shield", "plastics", "bob-invar-processing")
  end
elseif data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-heat-shield-tile", "plastic-bar", "tungsten-carbide")
  bobmods.lib.tech.replace_prerequisite("bob-heat-shield", "plastics", "bob-tungsten-processing")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "bob-titanium-processing")
end
if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "copper-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "bob-aluminium-processing")
end
bobmods.lib.tech.remove_prerequisite("low-density-structure", "advanced-material-processing")

if data.raw.recipe["satellite"] then
  if data.raw.item["bob-rtg"] then
    bobmods.lib.recipe.set_ingredient("satellite", { type = "item", name = "accumulator", amount = 50 })
    bobmods.lib.recipe.remove_ingredient("satellite", "solar-panel")
    bobmods.lib.tech.remove_prerequisite("rocket-silo", "solar-energy")
    bobmods.lib.recipe.add_ingredient("satellite", { type = "item", name = "bob-rtg", amount = 10 })
    bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-rtg")
  elseif data.raw.item["bob-solar-panel-3"] then
    bobmods.lib.recipe.replace_ingredient("satellite", "solar-panel", "bob-solar-panel-3")
    bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-solar-energy-3")
    bobmods.lib.tech.remove_prerequisite("rocket-silo", "solar-energy")
  end

  if data.raw.item["bob-battery-3"] then
    bobmods.lib.recipe.replace_ingredient("satellite", "accumulator", "bob-battery-3")
    bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-battery-3")
    bobmods.lib.tech.remove_prerequisite("rocket-silo", "electric-energy-accumulators")
  end

  if data.raw.item["bob-radar-5"] then
    bobmods.lib.recipe.replace_ingredient("satellite", "radar", "bob-radar-5")
    bobmods.lib.tech.replace_prerequisite("rocket-silo", "radar", "bob-radar-5")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("satellite", "processing-unit", "bob-advanced-processing-unit")
  end
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-heat-shield-tile",
    "cargo-landing-pad",
    "low-density-structure",
    "rocket-silo",
  })
  if mods["space-age"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "space-platform-foundation",
      "space-platform-starter-pack",
    })
  else
    bobmods.lib.recipe.update_recycling_recipe("satellite")
  end
end
