-- Merges table2's contents into table1.
function bobmods.lib.table_merge(table1, table2)
  for index, value in pairs(table2) do
    if type(value) == "table" then
      if type(table1[index]) == "table" then
        bobmods.lib.table_merge(table1[index], table2[index])
      else
        table1[index] = util.table.deepcopy(table2[index])
      end
    else
      table1[index] = value
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

--Inserts the new item into the table only if it doesn't already exist. (Index optional. Designed to insert strings only.)
function bobmods.lib.safe_insert(array, new_item, index)
  local addit = true
  for i, item in pairs(array) do
    if item == new_item then
      addit = false
    end
  end
  if addit then
    if index then
      table.insert(array, index, new_item)
    else
      table.insert(array, new_item)
    end
  end
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
