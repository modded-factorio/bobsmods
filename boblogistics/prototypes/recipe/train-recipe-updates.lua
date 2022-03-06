if settings.startup["bobmods-logistics-trains"].value == true then

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "steel-plate", "invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "steel-plate", "invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-railway-2", "invar-processing")
  bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-2", "invar-processing")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-locomotive-2", {"steel-bearing", 16})
  bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-2", {"steel-bearing", 8})
  bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-2", {"steel-bearing", 8})
else
  bobmods.lib.recipe.add_ingredient("bob-locomotive-2", {"iron-gear-wheel", 10})
  bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-2", {"iron-gear-wheel", 8})
  bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-2", {"iron-gear-wheel", 8})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-locomotive-2", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-2", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-railway-3", "titanium-processing")
  bobmods.lib.tech.add_prerequisite("bob-fluid-wagon-3", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-armoured-railway", "titanium-processing")
  bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon", "titanium-processing")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-locomotive-3", {"titanium-bearing", 16})
  bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-3", {"titanium-bearing", 8})
  bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-3", {"titanium-bearing", 8})

  bobmods.lib.recipe.add_ingredient("bob-armoured-locomotive-2", {"titanium-bearing", 16})
  bobmods.lib.recipe.add_ingredient("bob-armoured-cargo-wagon-2", {"titanium-bearing", 8})
  bobmods.lib.recipe.add_ingredient("bob-armoured-fluid-wagon-2", {"titanium-bearing", 8})
else
  bobmods.lib.recipe.add_ingredient("bob-locomotive-3", {"iron-gear-wheel", 10})
  bobmods.lib.recipe.add_ingredient("bob-cargo-wagon-3", {"iron-gear-wheel", 8})
  bobmods.lib.recipe.add_ingredient("bob-fluid-wagon-3", {"iron-gear-wheel", 8})

  bobmods.lib.recipe.add_ingredient("bob-armoured-locomotive-2", {"iron-gear-wheel", 10})
  bobmods.lib.recipe.add_ingredient("bob-armoured-cargo-wagon-2", {"iron-gear-wheel", 8})
  bobmods.lib.recipe.add_ingredient("bob-armoured-fluid-wagon-2", {"iron-gear-wheel", 8})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-locomotive-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-fluid-wagon-3", "iron-gear-wheel", "titanium-gear-wheel")

  bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "iron-gear-wheel", "titanium-gear-wheel")
end


if data.raw.item["tungsten-carbide"] then
  bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "tungsten-alloy-processing")
  bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "tungsten-alloy-processing")
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.remove_ingredient("bob-armoured-locomotive-2", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bob-armoured-locomotive-2", {"tungsten-carbide", 15})
    bobmods.lib.recipe.add_ingredient("bob-armoured-locomotive-2", {"silicon-nitride", 15})

    bobmods.lib.recipe.remove_ingredient("bob-armoured-cargo-wagon-2", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bob-armoured-cargo-wagon-2", {"tungsten-carbide", 15})
    bobmods.lib.recipe.add_ingredient("bob-armoured-cargo-wagon-2", {"silicon-nitride", 15})

    bobmods.lib.recipe.remove_ingredient("bob-armoured-fluid-wagon-2", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bob-armoured-fluid-wagon-2", {"tungsten-carbide", 15})
    bobmods.lib.recipe.add_ingredient("bob-armoured-fluid-wagon-2", {"silicon-nitride", 15})

    bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "ceramics")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "ceramics")
  else
    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "steel-plate", "tungsten-carbide")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "steel-plate", "tungsten-carbide")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "steel-plate", "tungsten-carbide")
  end
else
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-armoured-locomotive-2", "steel-plate", "silicon-nitride")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon-2", "steel-plate", "silicon-nitride")
    bobmods.lib.recipe.replace_ingredient("bob-armoured-fluid-wagon-2", "steel-plate", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-armoured-railway-2", "ceramics")
    bobmods.lib.tech.add_prerequisite("bob-armoured-fluid-wagon-2", "ceramics")
  end
end

end
