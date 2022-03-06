if settings.startup["bobmods-power-steam"].value == true then

if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-2", {"steel-pipe", 4})
end


if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("boiler-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-boiler-3", "invar-processing")
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-3", {"brass-pipe", 4})
  bobmods.lib.tech.add_prerequisite("bob-boiler-3", "zinc-processing")
end


if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("boiler-4", "steel-plate", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("bob-boiler-4", "tungsten-processing")
end

if data.raw.item["ceramic-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-4", {"ceramic-pipe", 4})
  bobmods.lib.tech.add_prerequisite("bob-boiler-4", "ceramics")
end


if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("boiler-5", "steel-plate", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("bob-boiler-5", "tungsten-alloy-processing")
end

if data.raw.item["copper-tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-5", {"copper-tungsten-pipe", 4})
elseif data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-5", {"tungsten-pipe", 4})
end

end
