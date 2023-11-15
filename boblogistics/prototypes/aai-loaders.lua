if mods["aai-loaders"] then
  local ingredients = {
    basic = { { type = "item", name = "basic-transport-belt", amount = 1 } },
    regular = { { type = "item", name = "transport-belt", amount = 1 } },
    fast = { { type = "item", name = "fast-transport-belt", amount = 1 } },
    express = { { type = "item", name = "express-transport-belt", amount = 1 } },
    turbo = { { type = "item", name = "turbo-transport-belt", amount = 1 } },
    ultimate = { { type = "item", name = "ultimate-transport-belt", amount = 1 } },
  }
  if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
    -- Inserters
    table.insert(ingredients.basic, { type = "item", name = "steam-inserter", amount = 2 })
    table.insert(ingredients.regular, { type = "item", name = "inserter", amount = 2 })
    table.insert(ingredients.fast, { type = "item", name = "red-stack-inserter", amount = 2 })
    table.insert(ingredients.express, { type = "item", name = "stack-inserter", amount = 2 })
    table.insert(ingredients.turbo, { type = "item", name = "turbo-stack-inserter", amount = 2 })
    table.insert(ingredients.ultimate, { type = "item", name = "express-stack-inserter", amount = 2 })
    -- Plates
    if mods["bobplates"] then
      table.insert(ingredients.basic, { type = "item", name = "iron-plate", amount = 2 })
      table.insert(ingredients.regular, { type = "item", name = "tin-plate", amount = 2 })
      table.insert(ingredients.fast, { type = "item", name = "bronze-alloy", amount = 2 })
      table.insert(ingredients.express, { type = "item", name = "aluminium-plate", amount = 2 })
      table.insert(ingredients.turbo, { type = "item", name = "titanium-plate", amount = 2 })
      table.insert(ingredients.ultimate, { type = "item", name = "nitinol-alloy", amount = 2 })
    else
      table.insert(ingredients.basic, { type = "item", name = "iron-plate", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "iron-plate", amount = 10 })
      table.insert(ingredients.fast, { type = "item", name = "steel-plate", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "steel-plate", amount = 10 })
      table.insert(ingredients.turbo, { type = "item", name = "steel-plate", amount = 15 })
      table.insert(ingredients.ultimate, { type = "item", name = "steel-plate", amount = 20 })
    end
  else
    -- Circuits
    if mods["bobelectronics"] then
      table.insert(ingredients.basic, { type = "item", name = "copper-cable", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "basic-circuit-board", amount = 5 })
      table.insert(ingredients.fast, { type = "item", name = "electronic-circuit", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "advanced-circuit", amount = 5 })
      table.insert(ingredients.turbo, { type = "item", name = "processing-unit", amount = 5 })
      table.insert(ingredients.ultimate, { type = "item", name = "advanced-processing-unit", amount = 5 })
    elseif mods["bobplates"] then
      table.insert(ingredients.basic, { type = "item", name = "copper-cable", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "electronic-circuit", amount = 5 })
      table.insert(ingredients.fast, { type = "item", name = "electronic-circuit", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "advanced-circuit", amount = 5 })
      table.insert(ingredients.turbo, { type = "item", name = "processing-unit", amount = 5 })
      table.insert(ingredients.ultimate, { type = "item", name = "advanced-processing-unit", amount = 5 })
    else
      table.insert(ingredients.basic, { type = "item", name = "copper-cable", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "electronic-circuit", amount = 5 })
      table.insert(ingredients.fast, { type = "item", name = "electronic-circuit", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "advanced-circuit", amount = 5 })
      table.insert(ingredients.turbo, { type = "item", name = "processing-unit", amount = 5 })
      table.insert(ingredients.ultimate, { type = "item", name = "processing-unit", amount = 5 })
    end
    -- Intermediates
    if mods["bobplates"] then
      table.insert(ingredients.basic, { type = "item", name = "iron-gear-wheel", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "steel-gear-wheel", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "steel-bearing", amount = 5 })
      table.insert(ingredients.fast, { type = "item", name = "brass-gear-wheel", amount = 5 })
      table.insert(ingredients.fast, { type = "item", name = "steel-bearing", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "cobalt-steel-gear-wheel", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "cobalt-steel-bearing", amount = 5 })
      table.insert(ingredients.turbo, { type = "item", name = "titanium-gear-wheel", amount = 5 })
      table.insert(ingredients.turbo, { type = "item", name = "titanium-bearing", amount = 5 })
      table.insert(ingredients.ultimate, { type = "item", name = "nitinol-gear-wheel", amount = 5 })
      table.insert(ingredients.ultimate, { type = "item", name = "nitinol-bearing", amount = 5 })
    else
      table.insert(ingredients.basic, { type = "item", name = "iron-gear-wheel", amount = 5 })
      table.insert(ingredients.basic, { type = "item", name = "iron-plate", amount = 5 })
      table.insert(ingredients.regular, { type = "item", name = "iron-gear-wheel", amount = 10 })
      table.insert(ingredients.regular, { type = "item", name = "iron-plate", amount = 10 })
      table.insert(ingredients.fast, { type = "item", name = "iron-gear-wheel", amount = 10 })
      table.insert(ingredients.fast, { type = "item", name = "steel-plate", amount = 5 })
      table.insert(ingredients.express, { type = "item", name = "iron-gear-wheel", amount = 10 })
      table.insert(ingredients.express, { type = "item", name = "steel-plate", amount = 10 })
      table.insert(ingredients.turbo, { type = "item", name = "iron-gear-wheel", amount = 15 })
      table.insert(ingredients.turbo, { type = "item", name = "steel-plate", amount = 15 })
      table.insert(ingredients.ultimate, { type = "item", name = "iron-gear-wheel", amount = 20 })
      table.insert(ingredients.ultimate, { type = "item", name = "steel-plate", amount = 20 })
    end
  end
  -- Lubricant
  table.insert(ingredients.express, { type = "fluid", name = "lubricant", amount = 50 })
  table.insert(ingredients.turbo, { type = "fluid", name = "lubricant", amount = 100 })
  table.insert(ingredients.ultimate, { type = "fluid", name = "lubricant", amount = 200 })
  -- Loader
  if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
    table.insert(ingredients.regular, { type = "item", name = "aai-basic-loader", amount = 1 })
    table.insert(ingredients.fast, { type = "item", name = "aai-loader", amount = 1 })
    table.insert(ingredients.express, { type = "item", name = "aai-fast-loader", amount = 1 })
    table.insert(ingredients.turbo, { type = "item", name = "aai-express-loader", amount = 1 })
    table.insert(ingredients.ultimate, { type = "item", name = "aai-turbo-loader", amount = 1 })
  end
  local unlubricated_ingredients = {}
  for tier, tier_ingredients in pairs(ingredients) do
    local new_ingredients = {}
    for _, ingredient in pairs(tier_ingredients) do
      local i = string.match(ingredient.name, "loader") and 1 or 10
      table.insert(new_ingredients, { type = ingredient.type, name = ingredient.name, amount = ingredient.amount * i })
    end
    unlubricated_ingredients[tier] = new_ingredients
  end
  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    AAILoaders.make_tier({
      name = "basic",
      transport_belt = "basic-transport-belt",
      color = { 255, 255, 255 },
      fluid = "steam",
      fluid_per_minute = 1,
      technology = {
        prerequisites = {
          "logistics-0",
        },
        unit = {
          count = 20,
          ingredients = {
            { "automation-science-pack", 1 },
          },
          time = 10,
        },
      },
      recipe = {
        crafting_category = "crafting",
        ingredients = ingredients.basic,
        energy_required = 2,
      },
      unlubricated_recipe = {
        crafting_category = "crafting-with-fluid",
        ingredients = unlubricated_ingredients.basic,
        energy_required = 10,
      },
      upgrade = "aai-loader",
      localise = false,
    })
    bobmods.lib.tech.add_prerequisite("aai-loader", "aai-basic-loader")
  end
  AAILoaders.make_tier({
    name = "turbo",
    transport_belt = "turbo-transport-belt",
    color = { 180, 89, 255 },
    fluid = "lubricant",
    fluid_per_minute = 0.25,
    technology = {
      prerequisites = {
        "logistics-4",
        "aai-express-loader",
        "utility-science-pack",
        data.raw.item["advanced-processing-unit"] and "advanced-electronics-3" or nil,
      },
      unit = {
        count = 450,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
    recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = ingredients.turbo,
      energy_required = 2,
    },
    unlubricated_recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = unlubricated_ingredients.turbo,
      energy_required = 10,
    },
    upgrade = "aai-ultimate-loader",
    localise = false,
  })
  AAILoaders.make_tier({
    name = "ultimate",
    transport_belt = "ultimate-transport-belt",
    color = { 46, 229, 92 },
    fluid = "lubricant",
    fluid_per_minute = 0.3,
    technology = {
      prerequisites = { "logistics-5", "aai-turbo-loader", "space-science-pack" },
      unit = {
        count = 450,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 60,
      },
    },
    recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = ingredients.ultimate,
      energy_required = 2,
    },
    unlubricated_recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = unlubricated_ingredients.ultimate,
      energy_required = 10,
    },
    localise = false,
  })
  local express_loader = data.raw["loader-1x1"]["aai-express-loader"]
  if express_loader then
    express_loader.next_upgrade = "aai-turbo-loader"
  end
  if settings.startup["bobmods-logistics-beltoverhaulspeed"].value == true then
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-loader", 2)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-fast-loader", 3)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-express-loader", 4)
    else
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-loader", 1)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-fast-loader", 2)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-express-loader", 3)
    end
  end

  -- Clear entity.order so they use item.order
  -- Set subgroup
  for index, loader_name in pairs({
    "aai-basic-loader",
    "aai-loader",
    "aai-fast-loader",
    "aai-express-loader",
    "aai-turbo-loader",
    "aai-ultimate-loader",
  }) do
    local item = data.raw.item[loader_name]
    if item then
      item.subgroup = "bob-logistic-tier-" .. (index - 1)
    end
    local entity = data.raw["loader-1x1"][loader_name]
    if entity then
      entity.order = nil
    end
  end

  -- Add prerequisites
  if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
    bobmods.lib.tech.add_prerequisite("aai-express-loader", "production-science-pack")
    bobmods.lib.tech.add_prerequisite("aai-fast-loader", "stack-inserter")
    bobmods.lib.tech.add_prerequisite("aai-express-loader", "stack-inserter-2")
    bobmods.lib.tech.add_prerequisite("aai-turbo-loader", "stack-inserter-3")
    bobmods.lib.tech.add_prerequisite("aai-ultimate-loader", "stack-inserter-4")
  end

  -- Update recipe of vanilla tier loaders
  local mode = settings.startup["aai-loaders-mode"].value
  if mode ~= "graphics-only" then
    if mode == "expensive" then
      ingredients = unlubricated_ingredients
    else
      bobmods.lib.tech.replace_prerequisite("aai-loader", "oil-processing", "lubricant")
    end

    for tier, recipe_name in pairs({
      regular = "aai-loader",
      fast = "aai-fast-loader",
      express = "aai-express-loader",
    }) do
      local recipe = data.raw.recipe[recipe_name]
      if recipe then
        bobmods.lib.recipe.set_ingredients(recipe_name, ingredients[tier])
      end
    end
  end
end
