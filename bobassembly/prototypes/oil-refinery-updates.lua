if settings.startup["bobmods-assembly-oilrefineries"].value == true then

data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "oil-refinery-2"


if data.raw.item["brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "steel-plate", "brass-alloy")
  bobmods.lib.tech.add_prerequisite("oil-processing-2", "zinc-processing")
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "stone-brick", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("oil-processing-2", "invar-processing")
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "iron-gear-wheel", "brass-gear-wheel")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("oil-refinery-2", {"steel-bearing", 5})
end

if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "pipe", "steel-pipe")
end




if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("oil-processing-3", "titanium-processing")
end

if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "stone-brick", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("oil-processing-3", "ceramics")
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "iron-gear-wheel", "titanium-gear-wheel")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("oil-refinery-3", {"titanium-bearing", 5})
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery-3", {"steel-bearing", 5})
  end
end

if data.raw.item["titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "pipe", "titanium-pipe")
else
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "pipe", "steel-pipe")
  end
end





if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("oil-processing-4", "nitinol-processing")
else
  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "steel-plate", "titanium-plate")
  end
end

if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "stone-brick", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("oil-processing-4", "tungsten-alloy-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "stone-brick", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "tungsten-processing")
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "iron-gear-wheel", "nitinol-gear-wheel")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("oil-refinery-4", {"nitinol-bearing", 5})
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery-4", {"steel-bearing", 5})
  end
end

if data.raw.item["nitinol-pipe"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "pipe", "nitinol-pipe")
elseif data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "pipe", "tungsten-pipe")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("oil-processing-4", "advanced-electronics-3")
end


end

