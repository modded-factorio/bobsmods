--0.17.60 balance
bobmods.lib.tech.replace_prerequisite("lubricant", "advanced-oil-processing", "oil-processing")
bobmods.lib.tech.remove_science_pack("lubricant", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("electric-engine", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("robotics", "chemical-science-pack")

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-light-oil")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-heavy-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-light-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-heavy-oil")

if bobmods.greenhouse then
  bobmods.lib.tech.replace_prerequisite("bob-polishing", "plastics", "oil-processing")
end

if bobmods.electronics then
  bobmods.lib.tech.add_prerequisite("bob-air-compressor-1", "electronics")
  bobmods.lib.tech.add_prerequisite("bob-water-bore-1", "electronics")
end

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "chemical-plant")
bobmods.lib.tech.remove_prerequisite("sulfur-processing", "oil-processing")
bobmods.lib.tech.add_prerequisite("oil-processing", "sulfur-processing")
bobmods.lib.tech.add_prerequisite("sulfur-processing", "bob-chemical-processing-2")
bobmods.lib.tech.add_prerequisite("sulfur-processing", "bob-nickel-processing")
bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "sulfur")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sulfur-2")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sulfur-3")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sulfuric-acid-2")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sulfuric-acid-3")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sulfur-dioxide")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-hydrogen-sulfide")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-sodium-hydroxide-sink")

bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-oil-processing")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-liquid-fuel")
bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "bob-enriched-fuel")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "bob-petroleum-gas-cracking")
bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")

bobmods.lib.tech.add_recipe_unlock("plastics", "bob-synthetic-wood")

bobmods.lib.tech.add_recipe_unlock("steel-processing", "bob-steel-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "bob-steel-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "bob-steel-bearing")

bobmods.lib.tech.add_recipe_unlock("bob-nickel-processing", "bob-nickel-plate")

bobmods.lib.tech.add_recipe_unlock("bob-zinc-processing", "bob-zinc-plate")
bobmods.lib.tech.add_recipe_unlock("bob-zinc-processing", "bob-brass-alloy")
bobmods.lib.tech.add_recipe_unlock("bob-zinc-processing", "bob-gunmetal-alloy")
bobmods.lib.tech.add_recipe_unlock("bob-zinc-processing", "bob-brass-gear-wheel")

bobmods.lib.tech.add_recipe_unlock("bob-lead-processing", "bob-lead-oxide")
bobmods.lib.tech.add_recipe_unlock("bob-lead-processing", "bob-lead-oxide-2")
bobmods.lib.tech.add_recipe_unlock("bob-lead-processing", "bob-lead-plate-2")
bobmods.lib.tech.add_recipe_unlock("bob-lead-processing", "bob-silver-from-lead")
bobmods.lib.tech.add_prerequisite("bob-lead-processing", "bob-nickel-processing")

bobmods.lib.tech.add_recipe_unlock("bob-aluminium-processing", "bob-alumina")
bobmods.lib.tech.add_recipe_unlock("bob-aluminium-processing", "bob-aluminium-plate")

bobmods.lib.tech.add_recipe_unlock("bob-gold-processing", "bob-gold-plate")

bobmods.lib.tech.add_recipe_unlock("bob-silicon-processing", "bob-silicon-plate")
bobmods.lib.tech.add_recipe_unlock("bob-silicon-processing", "bob-silicon-wafer")
bobmods.lib.tech.add_recipe_unlock("bob-silicon-processing", "bob-silicon-powder")

bobmods.lib.tech.add_recipe_unlock("bob-titanium-processing", "bob-titanium-plate")

bobmods.lib.tech.add_recipe_unlock("bob-tungsten-processing", "bob-tungstic-acid")
bobmods.lib.tech.add_recipe_unlock("bob-tungsten-processing", "bob-tungsten-oxide")
bobmods.lib.tech.add_recipe_unlock("bob-tungsten-processing", "bob-powdered-tungsten")
bobmods.lib.tech.add_recipe_unlock("bob-tungsten-processing", "bob-tungsten-plate")

bobmods.lib.tech.add_recipe_unlock("bob-invar-processing", "bob-invar-alloy")

bobmods.lib.tech.add_recipe_unlock("bob-nitinol-processing", "bob-nitinol-alloy")

bobmods.lib.tech.add_recipe_unlock("bob-tungsten-alloy-processing", "bob-copper-tungsten-alloy")
bobmods.lib.tech.add_recipe_unlock("bob-tungsten-alloy-processing", "bob-tungsten-carbide")
bobmods.lib.tech.add_recipe_unlock("bob-tungsten-alloy-processing", "bob-tungsten-carbide-2")

bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-oxide")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-oxide-from-copper")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-plate")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-steel-alloy")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-steel-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-steel-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("bob-cobalt-processing", "bob-cobalt-steel-bearing")

bobmods.lib.tech.add_recipe_unlock("bob-lithium-processing", "bob-lithium")
bobmods.lib.tech.add_recipe_unlock("bob-lithium-processing", "bob-lithium-chloride")
bobmods.lib.tech.add_recipe_unlock("bob-lithium-processing", "bob-lithium-water-electrolysis")

bobmods.lib.tech.add_recipe_unlock("bob-titanium-processing", "bob-titanium-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("bob-titanium-processing", "bob-titanium-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("bob-titanium-processing", "bob-titanium-bearing")
bobmods.lib.tech.add_prerequisite("bob-titanium-processing", "lubricant")

bobmods.lib.tech.add_recipe_unlock("bob-tungsten-processing", "bob-tungsten-gear-wheel")

bobmods.lib.tech.add_recipe_unlock("bob-nitinol-processing", "bob-nitinol-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("bob-nitinol-processing", "bob-nitinol-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("bob-nitinol-processing", "bob-nitinol-bearing")

if data.raw.technology["bob-alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-alien-blue-research", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-alien-orange-research", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-alien-purple-research", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-alien-yellow-research", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-alien-green-research", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-alien-red-research", "bob-alien-research")
end

if
  data.raw.tool["bob-science-pack-gold"]
  and data.raw.tool["bob-alien-science-pack-blue"]
  and data.raw.tool["bob-alien-science-pack-orange"]
  and data.raw.tool["bob-alien-science-pack-purple"]
  and data.raw.tool["bob-alien-science-pack-yellow"]
  and data.raw.tool["bob-alien-science-pack-green"]
  and data.raw.tool["bob-alien-science-pack-red"]
then
  data.raw.technology["bob-alien-blue-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-blue", 1 } }
  data.raw.technology["bob-alien-orange-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-orange", 1 } }
  data.raw.technology["bob-alien-purple-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-purple", 1 } }
  data.raw.technology["bob-alien-yellow-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-yellow", 1 } }
  data.raw.technology["bob-alien-green-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-green", 1 } }
  data.raw.technology["bob-alien-red-research"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-red", 1 } }
end

bobmods.lib.tech.remove_science_pack("nuclear-fuel-reprocessing", "production-science-pack")
bobmods.lib.tech.remove_prerequisite("nuclear-fuel-reprocessing", "production-science-pack")

bobmods.lib.tech.add_prerequisite("engine", "automation")

if settings.startup["bobmods-plates-groundwater"].value == true then
  bobmods.lib.tech.add_recipe_unlock("bob-water-bore-1", "bob-lithia-water")
  bobmods.lib.tech.add_recipe_unlock("bob-water-bore-1", "bob-ground-water")
  if settings.startup["bobmods-plates-purewater"].value == true then
    bobmods.lib.tech.add_recipe_unlock("bob-water-bore-1", "bob-pure-water-pump")
  end
end

if mods["Nuclear Fuel"] then
  bobmods.lib.tech.replace_prerequisite(
    "bobingabout-enrichment-process",
    "kovarex-enrichment-process",
    "production-science-pack"
  )
end
