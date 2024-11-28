if not bobmods.lib.recipe then
  bobmods.lib.recipe = {}
end

local function quantity_convertion(amount, old, new)
  if bobmods.lib.item.get_type(old) == "fluid" and bobmods.lib.item.get_type(new) == "item" then
    amount = math.ceil(amount / 10)
  end
  if bobmods.lib.item.get_type(old) == "item" and bobmods.lib.item.get_type(new) == "fluid" then
    amount = amount * 10
  end
  return amount
end

local function get_old_quantity(ingredients, old)
  local amount = 0
  for i, ingredient in pairs(ingredients) do
    local item = bobmods.lib.item.ingredient_simple(ingredient)
    if item then
      if item.name == old then
        amount = item.amount + amount
      end
    else
      log("recipe contains an invalid ingredient")
    end
  end
  return amount
end

local function replace_ingredient(ingredients, old, new, new_type)
  local amount = get_old_quantity(ingredients, old)
  if amount > 0 then
    amount = quantity_convertion(amount, old, new)
    bobmods.lib.item.remove(ingredients, old)
    bobmods.lib.item.add(ingredients, { type = new_type, name = new, amount = amount })
    return true
  end
  return false
end

function bobmods.lib.recipe.replace_ingredient(recipe, old, new)
  if type(recipe) == "string" and type(old) == "string" and type(new) == "string" and data.raw.recipe[recipe] then
    local retval = false
    local new_type = bobmods.lib.item.get_type(new)

    if new_type and data.raw.recipe[recipe].ingredients then
      new_type = new_type == "fluid" and "fluid" or "item"
      if replace_ingredient(data.raw.recipe[recipe].ingredients, old, new, new_type) then
        retval = true
      end
    end

    return retval
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.item(old)
    bobmods.lib.error.item(new)
    return false
  end
end

function bobmods.lib.recipe.replace_ingredient_in_all(old, new)
  if type(old) == "string" and type(new) == "string" and bobmods.lib.item.get_type(new) then
    for i, recipe in pairs(data.raw.recipe) do
      bobmods.lib.recipe.replace_ingredient(recipe.name, old, new)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.item(old)
    bobmods.lib.error.item(new)
  end
end

function bobmods.lib.recipe.remove_ingredient(recipe, item)
  if type(recipe) == "string" and type(item) == "string" and data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].ingredients then
      bobmods.lib.item.remove(data.raw.recipe[recipe].ingredients, item)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.item(item)
  end
end

function bobmods.lib.recipe.clear_ingredients(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].ingredients then
      data.raw.recipe[recipe].ingredients = {}
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.recipe.add_new_ingredient(recipe, item_in)
  local item = bobmods.lib.item.ingredient(item_in)
  if
    type(recipe) == "string"
    and data.raw.recipe[recipe]
    and item
    and type(item) == "table"
    and bobmods.lib.item.get_type(item.name)
  then
    if data.raw.recipe[recipe].ingredients then
      bobmods.lib.item.add_new(data.raw.recipe[recipe].ingredients, item)
    end
  else
    if not (type(recipe) == "string" and data.raw.recipe[recipe]) then
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe)
    end
  end
end

function bobmods.lib.recipe.add_ingredient(recipe, item_in)
  local item = bobmods.lib.item.ingredient(item_in)
  if
    type(recipe) == "string"
    and data.raw.recipe[recipe]
    and item
    and type(item) == "table"
    and bobmods.lib.item.get_type(item.name)
  then
    if data.raw.recipe[recipe].ingredients then
      bobmods.lib.item.add(data.raw.recipe[recipe].ingredients, item)
    end
  else
    if not (type(recipe) == "string" and data.raw.recipe[recipe]) then
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe)
    end
  end
end

function bobmods.lib.recipe.add_ingredients(recipe, ingredients)
  if type(recipe) == "string" and data.raw.recipe[recipe] and type(ingredients) == "table" then
    for i, ingredient in pairs(ingredients) do
      bobmods.lib.recipe.add_ingredient(recipe, ingredient)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.recipe.set_ingredient(recipe, item_in)
  local item = bobmods.lib.item.ingredient(item_in)
  if
    type(recipe) == "string"
    and data.raw.recipe[recipe]
    and item
    and type(item) == "table"
    and bobmods.lib.item.get_type(item.name)
  then
    if data.raw.recipe[recipe].ingredients then
      bobmods.lib.item.set(data.raw.recipe[recipe].ingredients, item)
    end
  else
    if not (type(recipe) == "string" and data.raw.recipe[recipe]) then
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe)
    end
  end
end

function bobmods.lib.recipe.set_ingredients(recipe, ingredients)
  if type(recipe) == "string" and data.raw.recipe[recipe] and type(ingredients) == "table" then
    bobmods.lib.recipe.clear_ingredients(recipe)
    bobmods.lib.recipe.add_ingredients(recipe, ingredients)
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.recipe.add_result(recipe, item_in)
  local item = bobmods.lib.item.result(item_in)
  if
    type(recipe) == "string"
    and data.raw.recipe[recipe]
    and item
    and type(item) == "table"
    and bobmods.lib.item.get_type(item.name)
  then
    if data.raw.recipe[recipe].results then
      bobmods.lib.item.add(data.raw.recipe[recipe].results, item)
    end
  else
    if not (type(recipe) == "string" and data.raw.recipe[recipe]) then
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe)
    end
  end
end

function bobmods.lib.recipe.set_result(recipe, item_in)
  local item = bobmods.lib.item.result(item_in)
  if
    type(recipe) == "string"
    and data.raw.recipe[recipe]
    and item
    and type(item) == "table"
    and bobmods.lib.item.get_type(item.name)
  then
    if data.raw.recipe[recipe].results then
      bobmods.lib.item.set(data.raw.recipe[recipe].results, item)
    end
  else
    if not (type(recipe) == "string" and data.raw.recipe[recipe]) then
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe)
    end
  end
end

function bobmods.lib.recipe.remove_result(recipe, item)
  if type(recipe) == "string" and type(item) == "string" and data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].results then
      bobmods.lib.item.remove(data.raw.recipe[recipe].results, item)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.item(item)
  end
end

function bobmods.lib.recipe.enabled(recipe, bool)
  if type(recipe) == "string" and type(bool) == "boolean" and data.raw.recipe[recipe] then
    data.raw.recipe[recipe].enabled = bool or false
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
    if not (type(bool) == "boolean") then
      log("Variable Bool is missing or not of type Boolean")
    end
  end
end

function bobmods.lib.recipe.hide(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    local prototype = data.raw.recipe[recipe]
    prototype.hidden = true
    prototype.enabled = false
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.recipe.set_energy_required(recipe, time)
  if type(recipe) == "string" and type(time) == "number" and data.raw.recipe[recipe] then
    data.raw.recipe[recipe].energy_required = time
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
    if not (type(time) == "number") then
      log("Variable Time is missing or not of type Number")
    end
  end
end

local function duplicate_ingredient_check(recipe_name, ingredients)
  local new_ingredients = {}
  local items = {}
  local rebuild = false
  for i, ingredient in ipairs(ingredients) do
    local item = bobmods.lib.item.ingredient(ingredient)
    if item then -- duplicate value
      if items[item.name] then
        rebuild = true
        log("Duplicate item " .. item.name .. " found on recipe " .. recipe_name .. ".")
      else
        items[item.name] = true
        bobmods.lib.item.add(new_ingredients, ingredient)
      end
    else --invalid value
      rebuild = true
      log("Invalid item found on recipe " .. recipe_name .. ".")
    end
  end
  if rebuild == true then
    return new_ingredients
  end
end

local function duplicate_ingredient_check_full(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].ingredients then
      local ingredients = duplicate_ingredient_check(recipe, data.raw.recipe[recipe].ingredients)
      if ingredients then
        data.raw.recipe[recipe].ingredients = ingredients
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.recipe.ingredients_cleanup()
  log("Running recipe ingredients cleanup...")
  for recipe_name, recipe in pairs(data.raw.recipe) do
    duplicate_ingredient_check_full(recipe_name)
  end
end

function bobmods.lib.recipe.set_subgroup(recipe_name, subgroup)
  if type(recipe_name) == "string" and type(subgroup) == "string" then
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
      recipe.subgroup = subgroup
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe_name)
  end
end

function bobmods.lib.recipe.set_category(recipe_name, category)
  if type(recipe_name) == "string" and type(category) == "string" then
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
      recipe.category = category
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe_name)
  end
end

function bobmods.lib.recipe.allow_productivity(recipe_name)
  if type(recipe_name) == "string" then
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
      recipe.allow_productivity = true
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe_name)
  end
end

function bobmods.lib.recipe.disallow_productivity(recipe_name)
  if type(recipe_name) == "string" then
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
      recipe.allow_productivity = false
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe_name)
  end
end

if feature_flags["quality"] then

  function bobmods.lib.recipe.update_recycling_recipe_single(recipe_name, replace_icon)
    if type(recipe_name) == "string" then
      local recipe_name2 = recipe_name .. "-recycling"
      local recipe1 = data.raw.recipe[recipe_name]
      local recipe2 = data.raw.recipe[recipe_name2]
      if recipe1 then
        if recipe2 then
          local new_time = recipe1.energy_required or 0.5
          recipe2.energy_required = new_time / 16
          recipe2.results = {}
          for i, outputs in pairs(recipe1.ingredients) do
            if recipe1.ingredients[i].type == "item" then
              recipe2.results[i] = { type = "item", name = recipe1.ingredients[i].name, amount = recipe1.ingredients[i].amount / 4, extra_count_fraction = recipe1.ingredients[i].amount % 4 / 4 }
            end
          end

          --Tries to find replacement icon if item of same name exists. If not, icon replacement will have do be done manually if desired.
          if replace_icon == true then
            local recipe_icon = recipe2.icons[2].icon
            local recipe_icon_size = recipe2.icons[2].icon_size or 64
            if data.raw.item[recipe_name] then
              if data.raw.item[recipe_name].icon then
                recipe_icon = data.raw.item[recipe_name].icon
                recipe_icon_size = data.raw.item[recipe_name].icon_size or 64
              elseif data.raw.item[recipe_name].icons then
                recipe_icon = data.raw.item[recipe_name].icons[1].icon
                recipe_icon_size = data.raw.item[recipe_name].icons[1].icon_size or 64
              end
            end
            recipe2.icons[2].icon = recipe_icon
            recipe2.icons[2].icon_size = recipe_icon_size
            recipe2.icons[2].scale = 0.4 / ( recipe_icon_size / 64  )
          end
  
        else
          log(debug.traceback())
          log("Recycling recipe " .. recipe_name2 .. " not found")
        end
      else
        log(debug.traceback())
        bobmods.lib.error.recipe(recipe_name)
      end
    else
      log(debug.traceback())
      bobmods.lib.error.recipe(recipe_name)
    end
  end

  function bobmods.lib.recipe.update_recycling_recipe(recipe_name)
    if type(recipe_name) == "string" then
      bobmods.lib.recipe.update_recycling_recipe_single(recipe_name, true)
    end
    if type(recipe_name) == "table" then
      for i, single_recipe in pairs(recipe_name) do
        bobmods.lib.recipe.update_recycling_recipe_single(single_recipe, true)
      end
    end
  end

else

  function bobmods.lib.recipe.update_recycling_recipe_single()
    log(debug.traceback())
    log("Improper function call. Cannot update recycling without Quality mod.")
  end

  function bobmods.lib.recipe.update_recycling_recipe()
    log(debug.traceback())
    log("Improper function call. Cannot update recycling without Quality mod.")
  end

end
