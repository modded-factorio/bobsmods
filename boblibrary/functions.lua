--- Searches table for given value
--- Returns index if found, nil otherwise
local function table_find(table1, value)
  for index, value_1 in pairs(table1) do
    if type(value) == "table" then
      local is_table_same = true

      -- Iterate inner table
      for _, inner_value in pairs(value) do
        if not table_find(value_1, inner_value) then
          is_table_same = false
        end
      end

      -- Table is same as value table, thus the value is found
      if is_table_same then
        return index
      end
    else
      if value_1 == value then
        return index
      end
    end
  end

  return nil
end

-- Inserts the new item into the table only if it doesn't already exist. (Index optional.)
function bobmods.lib.safe_insert(array, new_item, index)
  if not table_find(array, new_item) then
    if index then
      table.insert(array, index, new_item)
    else
      table.insert(array, new_item)
    end
  end
end

--- Safely inserts new items when index is numerical, replaces non-numeric matching indices
local function safe_insert_and_replace(array, new_item, index)
  if type(index) == "number" then
    bobmods.lib.safe_insert(array, new_item, index)
  else
    array[index] = new_item
  end
end

--- Merges table2's contents into table1.
--- This will append non-existing values and replace values with matching non-numeric key
function bobmods.lib.table_merge(table1, table2)
  for index, value in pairs(table2) do
    if type(value) == "table" then
      if type(table1[index]) == "table" then
        bobmods.lib.table_merge(table1[index], table2[index])
      else
        safe_insert_and_replace(table1, util.table.deepcopy(table2[index]), index)
      end
    else
      safe_insert_and_replace(table1, value, index)
    end
  end
end

function bobmods.lib.minable_result_check(object)
  if object then
    if object.results == nil then
      object.results = {}
    end

    if object.result then
      local item = bobmods.lib.item.ingredient({ type = "item", name = object.result, amount = 1 })
      if object.count then
        item.amount = object.count
        object.count = nil
      end
      bobmods.lib.item.add_new(object.results, item)

      object.result = nil
    end
  else
    log(object .. " does not exist.")
  end
end

function bobmods.lib.belt_speed_ips(ips)
  return ips * 1 / 480
end

--takes an item/fluid/entity(maybe even recipe) and returns a complete icons array.
--if it has no icons= tag, it builds one from icon and icon_size.
--Example use bobmods.lib.icons_from_item(data.raw.item.wood)
function bobmods.lib.icons_from_item(item)
  if item and type(item) == "table" then
    local icons = {}
    if item.icons then
      icons = item.icons
    elseif item.icon then
      icons = { { icon = item.icon, icon_size = item.icon_size or 64 } }
    else
      icons = nil
      log(debug.traceback())
      log(item.name .. " has no valid icons.")
    end
    return icons
  end
  log(debug.traceback())
  log("object does not exist.")
  return nil
end
