if not bobmods.lib.item then
  bobmods.lib.item = {}
end

function bobmods.lib.item.get_type(name) --returns actual item type
  local item_type = nil
  if type(name) == "string" then
    local item_types = {
      "ammo",
      "armor",
      "capsule",
      "fluid",
      "gun",
      "item",
      "mining-tool",
      "repair-tool",
      "module",
      "tool",
      "item-with-entity-data",
      "rail-planner",
      "item-with-label",
      "item-with-inventory",
      "blueprint-book",
      "item-with-tags",
      "selection-tool",
      "blueprint",
      "copy-paste-tool",
      "deconstruction-item",
      "upgrade-item",
      "spidertron-remote",
    }
    for i, type_name in pairs(item_types) do
      if data.raw[type_name][name] then
        item_type = type_name
      end
    end
  else
    log("Item name is not a string")
  end
  return item_type
end

function bobmods.lib.item.get_basic_type(name) --returns fluid for fluid, item for all other types.
  local item_type = bobmods.lib.item.get_type(name)
  if not (item_type == "fluid" or item_type == nil) then
    item_type = "item"
  end
  return item_type
end

function bobmods.lib.item.get_basic_type_simple(name) --assumes type is item, even if the item doesn't exist
  local item_type = "item"
  if data.raw.fluid[name] then
    item_type = "fluid"
  end
  return item_type
end

function bobmods.lib.item.ingredient_simple(inputs) --doesn't care if the item actually exists or not, returns if a valid ingredient structure can be determined.
  local item = {}

  if type(inputs) == "table" then
    if inputs.name and type(inputs.name) == "string" then
      item.name = inputs.name
    else
      log(debug.traceback())
      log("Unable to determine an ingredient name")
      return nil
    end

    if inputs.amount and type(inputs.amount) == "number" then
      item.amount = inputs.amount
    else
      item.amount = 1
    end

    if inputs.type then
      item.type = inputs.type
    else
      item.type = bobmods.lib.item.get_basic_type_simple(item.name)
    end

    if item.type == "item" then
      if type(item.amount) ~= "number" or item.amount < 1 then
        item.amount = 1
      else
        item.amount = math.floor(item.amount)
      end
    end
    if item.type == "fluid" then
      item.fluidbox_index = inputs.fluidbox_index
    end
    if inputs.catalyst_amount then
      item.catalyst_amount = inputs.catalyst_amount
    end
  elseif type(inputs) == "string" then
    item.name = inputs
    item.type = bobmods.lib.item.get_basic_type_simple(item.name)
    item.amount = 1
  end
  if
    type(item.name) == "string"
    and type(item.amount) == "number"
    and (item.type == "item" or item.type == "fluid")
  then
    return item
  else
    log(debug.traceback())
    bobmods.lib.error.ingredient(item)
    return nil
  end
end

function bobmods.lib.item.ingredient(inputs) --returns a valid ingredient only if the item exists.
  local item = bobmods.lib.item.ingredient_simple(inputs)
  if item then
    if bobmods.lib.item.get_type(item.name) then
      return item
    else
      log(debug.traceback())
      bobmods.lib.error.ingredient(item)
      return nil
    end
  else
    return nil
  end
end

function bobmods.lib.item.basic_item(inputs) --old name
  return bobmods.lib.item.ingredient(inputs)
end

--Same as ingredient, but has support for amount_min, amount_max and probability
function bobmods.lib.item.result_simple(inputs)
  local item = {}

  if type(inputs) == "table" then
    if inputs.name and type(inputs.name) == "string" then
      item.name = inputs.name
    else
      log(debug.traceback())
      log("Unable to determine a result name")
      return nil
    end

    if inputs.amount and type(inputs.amount) == "number" then
      item.amount = inputs.amount
    elseif inputs.amount_min and inputs.amount_max then
      item.amount_min = inputs.amount_min
      item.amount_max = inputs.amount_max
    else
      item.amount = 1
    end

    if inputs.probability then
      item.probability = inputs.probability
    end

    if inputs.type then
      item.type = inputs.type
    else
      item.type = bobmods.lib.item.get_basic_type_simple(item.name)
    end

    if item.type == "item" then
      if item.amount then
        if type(item.amount) ~= "number" or item.amount < 1 then
          item.amount = 1
        else
          item.amount = math.floor(item.amount)
        end
      end
      if item.amount_min then
        if type(item.amount_min) ~= "number" or item.amount_min < 1 then
          item.amount_min = 0
        else
          item.amount_min = math.floor(item.amount_min)
        end
      end
      if item.amount_max then
        if type(item.amount_max) ~= "number" or item.amount_max < 1 then
          item.amount_max = 1
        else
          item.amount_max = math.ceil(item.amount_max)
        end
      end
    end
    if item.type == "fluid" then
      item.fluidbox_index = inputs.fluidbox_index
    end
    if inputs.catalyst_amount then
      item.catalyst_amount = inputs.catalyst_amount
    end
  elseif type(inputs) == "string" then
    item.name = inputs
    item.type = bobmods.lib.item.get_basic_type_simple(item.name)
    item.amount = 1
  end

  if
    type(item.name) == "string"
    and (type(item.amount) == "number" or (type(item.amount_min) == "number" and type(item.amount_max) == "number"))
    and (item.probability == nil or type(item.probability) == "number")
    and (item.type == "item" or item.type == "fluid")
  then
    return item
  else
    log(debug.traceback())
    bobmods.lib.error.result(item)
    return nil
  end
end

function bobmods.lib.item.result(inputs) --returns a valid result only if the item exists.
  local item = bobmods.lib.item.result_simple(inputs)
  if item then
    if bobmods.lib.item.get_type(item.name) then
      return item
    else
      log(debug.traceback())
      bobmods.lib.error.result(item)
      return nil
    end
  else
    return nil
  end
end

function bobmods.lib.item.item(inputs) -- old name
  return bobmods.lib.item.result(inputs)
end

function bobmods.lib.item.combine(item1_in, item2_in)
  local item = {}
  local item1 = bobmods.lib.item.result(item1_in)
  local item2 = bobmods.lib.item.result(item2_in)

  if item1 and item2 then
    item.name = item1.name
    item.type = item1.type

    if item1.amount and item2.amount then
      item.amount = item1.amount + item2.amount
    elseif item1.amount_min and item1.amount_max and item2.amount_min and item2.amount_max then
      item.amount_min = item1.amount_min + item2.amount_min
      item.amount_max = item1.amount_max + item2.amount_max
    elseif item1.amount_min and item1.amount_max and item2.amount then
      item.amount_min = item1.amount_min + item2.amount
      item.amount_max = item1.amount_max + item2.amount
    elseif item1.amount and item2.amount_min and item2.amount_max then
      item.amount_min = item1.amount + item2.amount_min
      item.amount_max = item1.amount + item2.amount_max
    end

    if item1.probability and item2.probability then
      item.probability = (item1.probability + item2.probability) / 2
    elseif item1.probability then
      item.probability = (item1.probability + 1) / 2
    elseif item2.probability then
      item.probability = (item2.probability + 1) / 2
    end

    if item1.catalyst_amount and item2.catalyst_amount then
      item.catalyst_amount = item1.catalyst_amount + item2.catalyst_amount
    elseif item1.catalyst_amount then
      item.catalyst_amount = item1.catalyst_amount
    elseif item2.catalyst_amount then
      item.catalyst_amount = item2.catalyst_amount
    end

    item.fluidbox_index = item1.fluidbox_index or item2.fluidbox_index

    return item
  else
    return nil
  end
end

function bobmods.lib.item.add(list, item_in) --increments amount if exists
  local item = bobmods.lib.item.result(item_in)
  if type(list) == "table" and item then
    local addit = true
    for i, object in pairs(list) do
      if object.name == item.name then
        addit = false
        list[i] = bobmods.lib.item.combine(object, item)
      end
    end
    if addit then
      table.insert(list, item)
    end
  end
end

function bobmods.lib.item.add_new(list, item_in) --ignores if exists
  local item = bobmods.lib.item.result(item_in)
  if type(list) == "table" and item then
    local addit = true
    for i, object in pairs(list) do
      local basic_object = bobmods.lib.item.result(object)
      if basic_object and item.name == basic_object.name then
        addit = false
      end
    end
    if addit then
      table.insert(list, item)
    end
  end
end

function bobmods.lib.item.remove(list, item)
  if type(list) == "table" and type(item) == "string" then
    for i, object in ipairs(list) do
      if object.name == item then
        table.remove(list, i)
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.item(item)
  end
end

function bobmods.lib.item.set(list, item_in)
  local item = bobmods.lib.item.result(item_in)
  if type(list) == "table" and item then
    local addit = true
    for i, object in pairs(list) do
      if object.name == item.name then
        list[i] = item
        addit = false
      end
    end
    if addit then
      table.insert(list, item)
    end
  end
end

function bobmods.lib.item.hide(item_name)
  if type(item_name) == "string" then
    local item = data.raw.item[item_name]
    if item then
      if not item.flags then
        item.flags = {}
      end
      bobmods.lib.safe_insert(item.flags, "hidden")
    else
      item = data.raw.fluid[item_name]
      if item then
        item.hidden = true
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.item(item_name)
  end
end

function bobmods.lib.item.hide_entity(type_name, entity_name)
  if type(type_name) == "string" and type(entity_name) == "string" then
    local entities = data.raw[type_name]
    if entities then
      local entity = entities[entity_name]
      if entity then
        if not entity.flags then
          entity.flags = {}
        end
        bobmods.lib.safe_insert(entity.flags, "hidden")
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.item(entity_name)
  end
end

function bobmods.lib.item.set_subgroup(item_name, subgroup)
  if type(item_name) == "string" and type(subgroup) == "string" then
    local item = data.raw.item[item_name]
    if item then
      item.subgroup = subgroup
    else
      item = data.raw.fluid[item_name]
      if item then
        item.subgroup = subgroup
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.item(item_name)
  end
end
