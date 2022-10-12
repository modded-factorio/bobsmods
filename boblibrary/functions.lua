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

function bobmods.lib.result_check(object)
  if object then
    if object.results == nil then
      object.results = {}
    end

    if object.result then
      local item = bobmods.lib.item.basic_item({name = object.result})
      if object.result_count then
        item.amount = object.result_count
        object.result_count = nil
      end
      bobmods.lib.item.add_new(object.results, item)

      if object.ingredients then -- It's a recipe
        if not object.main_product then
          if object.icon or object.subgroup or object.order or item.type ~= "item" then -- if we already have one, add the rest
            if not object.icon and data.raw[item.type][object.result].icon then
              object.icon = data.raw[item.type][object.result].icon
              object.icon_size = data.raw[item.type][object.result].icon_size
            end
            if not object.subgroup and data.raw[item.type][object.result].subgroup then
              object.subgroup = data.raw[item.type][object.result].subgroup
            end
            if not object.order and data.raw[item.type][object.result].order then
              object.order = data.raw[item.type][object.result].order
            end -- otherwise just use main_product as a cheap way to set them all.
          else
            object.main_product = object.result
          end
        end
      end
      object.result = nil
    end
  else
    log(object .. " does not exist.")
  end
end

function bobmods.lib.belt_speed_ips(ips)
  return ips * 1 / 480
end

--Inserts the new item into the table only if it doesn't already exist. (Designed to insert strings only)
function bobmods.lib.safe_insert(array, new_item)
  local addit = true
  for i, item in pairs(array) do
    if item == new_item then
      addit = false
    end
  end
  if addit then
    table.insert(array, new_item)
  end
end

--takes an item/fluid/entity(maybe even recipe) and returns a complete icons array.
--if it has no icons= tag, it builds one from icon, icon_size and icon_mipmaps.
--Example use bobmods.lib.icons_from_item(data.raw.item.wood)
function bobmods.lib.icons_from_item(item)
  if item and type(item) == "table" then
    local icons = {}
    if item.icons then
      icons = item.icons
    elseif item.icon then
      icons = {{
        icon = item.icon,
        icon_size = item.icon_size,
        icon_mipmaps = item.icon_mipmaps
      }}
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