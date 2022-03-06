if settings.startup["bobmods-mining-miningdrills"].value == true then

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-1", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["cobalt-steel-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "steel-plate", "cobalt-steel-alloy")
  bobmods.lib.tech.add_prerequisite("bob-drills-2", "cobalt-processing")
else
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-drills-2", "invar-processing")
  else
    if data.raw.item["brass-alloy"] then
      bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "steel-plate", "brass-alloy")
      bobmods.lib.tech.add_prerequisite("bob-drills-2", "zinc-processing")
    end
  end
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "iron-gear-wheel", "brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-drills-2", "zinc-processing")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "iron-gear-wheel", "steel-gear-wheel")
  end
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-drills-3", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-drills-3", "tungsten-processing")
  end
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-drills-3", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-drills-3", "tungsten-processing")
  end
end



if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-drills-4", "advanced-electronics-3")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "steel-plate", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-drills-4", "tungsten-alloy-processing")
else
  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-drills-4", "tungsten-alloy-processing")
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-drills-4", "nitinol-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-drills-4", "tungsten-processing")
  end
end

end