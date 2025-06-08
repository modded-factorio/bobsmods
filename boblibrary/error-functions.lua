if not bobmods.lib.error then
  bobmods.lib.error = {}
end

function bobmods.lib.error.technology(technology, name, desc)
  if name == nil then
    name = "Technology"
  end
  if desc == nil then
    desc = name
  end
  if technology == nil then
    log(name .. " variable not passed")
  elseif type(technology) == "table" then
    log(name .. " variable is a table.")
  elseif not (type(technology) == "string") then
    log(name .. " variable not a string.")
  elseif not data.raw.technology[technology] then
    log(desc .. " " .. technology .. " does not exist.")
  end
end

function bobmods.lib.error.recipe(recipe, name, desc)
  if name == nil then
    name = "Recipe"
  end
  if desc == nil then
    desc = name
  end
  if recipe == nil then
    log(name .. " variable not passed")
  elseif type(recipe) == "table" then
    log(name .. " variable is a table.")
  elseif not (type(recipe) == "string") then
    log(name .. " variable not a string.")
  elseif not data.raw.recipe[recipe] then
    log(desc .. " " .. recipe .. " does not exist.")
  end
end

function bobmods.lib.error.resource(resource, name, desc)
  if name == nil then
    name = "Resource"
  end
  if desc == nil then
    desc = name
  end
  if resource == nil then
    log(name .. " variable not passed")
  elseif type(resource) == "table" then
    log(name .. " variable is a table.")
  elseif not (type(resource) == "string") then
    log(name .. " variable not a string.")
  elseif not data.raw.resource[resource] then
    log(desc .. " " .. resource .. " does not exist.")
  end
end

function bobmods.lib.error.item(item, name)
  if name == nil then
    name = "Item"
  end
  if item == nil then
    log(name .. " variable not passed")
  elseif type(item) == "table" then
    log(name .. " variable is a table.")
  elseif not (type(item) == "string") then
    log(name .. " variable not a string.")
  else
    local item_type = bobmods.lib.item.get_type(item)
    if not item_type then
      log(name .. " " .. item .. " not a valid item of any type.")
    end
  end
end

function bobmods.lib.error.item_of_type(item, item_type_in, name)
  if name == nil then
    name = "Item"
  end
  if item == nil then
    log(name .. " variable not passed")
  elseif type(item) == "table" then
    log(name .. " variable is a table.")
  elseif not (type(item) == "string") then
    log(name .. " variable not a string.")
  else
    local item_type = bobmods.lib.item.get_type(item)
    if not item_type then
      log(name .. " " .. item .. " does not exist.")
    elseif item_type ~= item_type_in then
      log(name .. " " .. item .. " is of type: " .. item_type .. ", expected: " .. item_type_in)
    end
  end
end

function bobmods.lib.error.ingredient(ingredient, name)
  if name == nil then
    name = "Ingredient"
  end
  if ingredient == nil then
    log(name .. " variable not passed")
  elseif not (type(ingredient == "table")) then
    log(name .. " variable not a table")
  elseif not (type(ingredient.name) == "string") then
    log(name .. ".name variable not a string.")
  elseif bobmods.lib.item.get_type(ingredient.name) == nil then
    log(name .. ".name not a valid item of any type.")
  end
  if not (type(ingredient.amount) == "number") then
    log(name .. ".amount variable not a number.")
  end
  if not (ingredient.type == "item" or ingredient.type == "fluid") then
    log(name .. ".type not a valid ingredient item type")
  end
end

function bobmods.lib.error.result(result, name)
  if name == nil then
    name = "Result"
  end
  if result == nil then
    log(name .. " variable not passed")
    return
  elseif not (type(result == "table")) then
    log(name .. " variable not a table")
  elseif not (type(result.name) == "string") then
    log(name .. ".name variable not a string.")
  elseif bobmods.lib.item.get_type(result.name) == nil then
    log(name .. ".name not a valid item of any type.")
  end
  if result.amount then
    if type(result.amount) == "number" then
      log(name .. ".amount variable not a number.")
    end
  elseif result.amount_min and result.amount_max then
    if not (type(result.amount_min) == "number") then
      log(name .. ".amount_min variable not a number.")
    end
    if not (type(result.amount_max) == "number") then
      log(name .. ".amount_max variable not a number.")
    end
  end
  if result.probability then
    if not (type(result.probability) == "number") then
      log(name .. ".probability not a number")
    end
  end
  if not (result.type == "item" or result.type == "fluid") then
    log(name .. ".type not a valid result item type")
  end
end
