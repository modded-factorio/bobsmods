if settings.startup["bobmods-power-steam"].value == true then

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-2", "normal", {"steel-bearing", 5})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-2", "expensive", {"steel-bearing", 10})
else
  bobmods.lib.recipe.add_ingredient("steam-engine-2", {"iron-gear-wheel", 5})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-2", "pipe", "steel-pipe")
end



if data.raw.item["cobalt-steel-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-3", "normal", {"cobalt-steel-bearing", 5})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-3", "expensive", {"cobalt-steel-bearing", 10})
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "cobalt-processing")
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-3", "normal", {"steel-bearing", 5})
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-3", "expensive", {"steel-bearing", 10})
  else
    bobmods.lib.recipe.add_ingredient("steam-engine-3", {"iron-gear-wheel", 5})
  end
end

if data.raw.item["cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "cobalt-processing")
else
  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "zinc-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "steel-gear-wheel")
    end
  end
end

if data.raw.item["brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-3", "steel-plate", "brass-alloy")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "zinc-processing")
else
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-3", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "invar-processing")
  end
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-3", "pipe", "brass-pipe")
end



if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-4", "normal", {"titanium-bearing", 5})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-4", "expensive", {"titanium-bearing", 10})
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-4", "normal", {"steel-bearing", 5})
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-4", "expensive", {"steel-bearing", 10})
  else
    bobmods.lib.recipe.add_ingredient("steam-engine-4", {"iron-gear-wheel", 5})
  end
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-4", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-4", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "tungsten-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-engine-4", "iron-gear-wheel", "steel-gear-wheel")
    end
  end
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-4", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "tungsten-processing")
  end
end

if data.raw.item["titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-4", "pipe", "titanium-pipe")
end



if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-5", "normal", {"nitinol-bearing", 5})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-5", "expensive", {"nitinol-bearing", 10})
else
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-5", "normal", {"titanium-bearing", 5})
    bobmods.lib.recipe.add_difficulty_ingredient("steam-engine-5", "expensive", {"titanium-bearing", 10})
  else
    bobmods.lib.recipe.add_ingredient("steam-engine-5", {"iron-gear-wheel", 5})
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-5", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "nitinol-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-5", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "tungsten-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-engine-5", "iron-gear-wheel", "steel-gear-wheel")
    end
  end
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "nitinol-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-5", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "tungsten-processing")
  end
end

if data.raw.item["nitinol-pipe"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-5", "pipe", "nitinol-pipe")
elseif data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-5", "pipe", "tungsten-pipe")
end

end
