if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine", "normal", {
      "cobalt-steel-bearing",
      10
    })
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine", "expensive", {
      "cobalt-steel-bearing",
      20
    })
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-1",
      "cobalt-processing"
    )
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine", "normal", {
        "steel-bearing",
        10
      })
      bobmods.lib.recipe.add_difficulty_ingredient(
        "steam-turbine",
        "expensive",
        {"steel-bearing", 20}
      )
    end
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine",
      "iron-gear-wheel",
      "cobalt-steel-gear-wheel"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-1",
      "cobalt-processing"
    )
  else
    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine",
        "iron-gear-wheel",
        "brass-gear-wheel"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-1",
        "zinc-processing"
      )
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient(
          "steam-turbine",
          "iron-gear-wheel",
          "steel-gear-wheel"
        )
      end
    end
  end

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine",
      "copper-plate",
      "aluminium-plate"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-1",
      "aluminium-processing"
    )
  else
    if data.raw.item["invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine",
        "copper-plate",
        "invar-alloy"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-1",
        "invar-processing"
      )
    end
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine",
      "electronic-circuit",
      "advanced-circuit"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-1",
      "advanced-electronics"
    )
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-2", "normal", {
      "titanium-bearing",
      15
    })
    bobmods.lib.recipe.add_difficulty_ingredient(
      "steam-turbine-2",
      "expensive",
      {"titanium-bearing", 30}
    )
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_difficulty_ingredient(
        "steam-turbine-2",
        "normal",
        {"steel-bearing", 15}
      )
      bobmods.lib.recipe.add_difficulty_ingredient(
        "steam-turbine-2",
        "expensive",
        {"steel-bearing", 30}
      )
    else
      bobmods.lib.recipe.add_ingredient("steam-turbine-2", {
        "iron-gear-wheel",
        25
      })
    end
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-2",
      "iron-gear-wheel",
      "titanium-gear-wheel"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-2",
      "titanium-processing"
    )
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine-2",
        "iron-gear-wheel",
        "tungsten-gear-wheel"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-2",
        "tungsten-processing"
      )
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient(
          "steam-turbine-2",
          "iron-gear-wheel",
          "steel-gear-wheel"
        )
      end
    end
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-2",
      "steel-plate",
      "titanium-plate"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-2",
      "titanium-processing"
    )
  else
    if data.raw.item["tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine-2",
        "steel-plate",
        "tungsten-plate"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-2",
        "tungsten-processing"
      )
    end
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-2", {"titanium-pipe", 5})
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-2",
      "advanced-circuit",
      "processing-unit"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-2",
      "advanced-electronics-2"
    )
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-3", "normal", {
      "nitinol-bearing",
      15
    })
    bobmods.lib.recipe.add_difficulty_ingredient(
      "steam-turbine-3",
      "expensive",
      {"nitinol-bearing", 30}
    )
  else
    if data.raw.item["titanium-bearing"] then
      bobmods.lib.recipe.add_difficulty_ingredient(
        "steam-turbine-3",
        "normal",
        {"titanium-bearing", 15}
      )
      bobmods.lib.recipe.add_difficulty_ingredient(
        "steam-turbine-3",
        "expensive",
        {"titanium-bearing", 30}
      )
    else
      bobmods.lib.recipe.add_ingredient("steam-turbine-3", {
        "iron-gear-wheel",
        25
      })
    end
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-3",
      "iron-gear-wheel",
      "nitinol-gear-wheel"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-3",
      "nitinol-processing"
    )
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine-3",
        "iron-gear-wheel",
        "tungsten-gear-wheel"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-3",
        "tungsten-processing"
      )
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient(
          "steam-turbine-3",
          "iron-gear-wheel",
          "steel-gear-wheel"
        )
      end
    end
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-3",
      "steel-plate",
      "nitinol-alloy"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-3",
      "nitinol-processing"
    )
  else
    if data.raw.item["tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient(
        "steam-turbine-3",
        "steel-plate",
        "tungsten-plate"
      )
      bobmods.lib.tech.add_prerequisite(
        "bob-steam-turbine-3",
        "tungsten-processing"
      )
    end
  end

  if data.raw.item["nitinol-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", {"nitinol-pipe", 5})
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", {"tungsten-pipe", 5})
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "steam-turbine-3",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-3",
      "advanced-electronics-3"
    )
  else
    bobmods.lib.tech.add_prerequisite(
      "bob-steam-turbine-3",
      "advanced-electronics-2"
    )
  end
end