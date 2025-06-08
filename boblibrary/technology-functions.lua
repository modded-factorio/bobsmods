if not bobmods.lib.tech then
  bobmods.lib.tech = {}
end

local function add_new_science_pack(technology, pack, amount)
  if technology.unit and technology.unit.ingredients then
    local addit = true
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == pack then
        addit = false
      end
    end
    if addit then
      table.insert(technology.unit.ingredients, { pack, amount })
    end
  end
end

local function add_science_pack(technology, pack, amount)
  if technology.unit and technology.unit.ingredients then
    local addit = true
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == pack then
        addit = false
        ingredient[2] = ingredient[2] + amount
      end
    end
    if addit then
      table.insert(technology.unit.ingredients, { pack, amount })
    end
  end
end

local function remove_science_pack(technology, pack)
  if technology.unit and technology.unit.ingredients then
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == pack then
        table.remove(technology.unit.ingredients, i)
      end
    end
  end
end

local function replace_science_pack(technology, old, new)
  if technology.unit and technology.unit.ingredients then
    local doit = false
    local amount = 0
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == old then
        doit = true
        amount = ingredient[2] + amount
      end
    end
    if doit then
      remove_science_pack(technology, old)
      add_science_pack(technology, new, amount)
    end
  end
end

function bobmods.lib.tech.replace_science_pack(technology, old, new)
  if
    type(technology) == "string"
    and type(old) == "string"
    and type(new) == "string"
    and data.raw.technology[technology]
    --    data.raw.tool[old] and
    and data.raw.tool[new]
  then
    if data.raw.technology[technology].unit then
      replace_science_pack(data.raw.technology[technology], old, new)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(old, "tool", "Old science pack")
    bobmods.lib.error.item_of_type(new, "tool", "New science pack")
  end
end

function bobmods.lib.tech.add_new_science_pack(technology, pack, amount)
  if
    type(technology) == "string"
    and type(pack) == "string"
    and type(amount) == "number"
    and data.raw.technology[technology]
    and data.raw.tool[pack]
  then
    if data.raw.technology[technology].unit then
      add_new_science_pack(data.raw.technology[technology], pack, amount)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(pack, "tool", "Science pack")
  end
end

function bobmods.lib.tech.add_science_pack(technology, pack, amount)
  if
    type(technology) == "string"
    and type(pack) == "string"
    and type(amount) == "number"
    and data.raw.technology[technology]
    and data.raw.tool[pack]
  then
    if data.raw.technology[technology].unit then
      add_science_pack(data.raw.technology[technology], pack, amount)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(pack, "tool", "Science pack")
  end
end

function bobmods.lib.tech.add_science_packs(technology, science_packs)
  if type(technology) == "string" and type(science_packs) == "table" then
    for i, science_pack in pairs(science_packs) do
      if
        type(science_pack) == "table"
        and type(science_pack[1]) == "string"
        and data.raw.tool[science_pack[1]]
        and type(science_pack[2]) == "number"
      then
        bobmods.lib.tech.add_science_pack(technology, science_pack[1], science_pack[2])
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.remove_science_pack(technology, pack)
  if type(technology) == "string" and type(pack) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].unit then
      remove_science_pack(data.raw.technology[technology], pack)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.clear_science_packs(technology)
  if type(technology) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].unit then
      data.raw.technology[technology].unit.ingredients = {}
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.set_science_packs(technology, science_packs)
  if type(technology) == "string" and data.raw.technology[technology] and type(science_packs) == "table" then
    bobmods.lib.tech.clear_science_packs(technology)
    bobmods.lib.tech.add_science_packs(technology, science_packs)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.set_science_pack_count(technology, count)
  if type(technology) == "string" and data.raw.technology[technology] then
    local prototype = data.raw.technology[technology]
    if prototype.unit then
      prototype.unit.count = count
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

local function has_recipe_unlock(technology, recipe)
  if technology.effects then
    for i, effect in pairs(technology.effects) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe then
        return true
      end
    end
  end
  return false
end

local function add_recipe_unlock(technology, recipe)
  local addit = true
  if not technology.effects then
    technology.effects = {}
  end
  for i, effect in pairs(technology.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == recipe then
      addit = false
    end
  end
  if addit then
    table.insert(technology.effects, { type = "unlock-recipe", recipe = recipe })
  end
end

local function remove_recipe_unlock(technology, recipe)
  if technology.effects then
    for i, effect in pairs(technology.effects) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe then
        table.remove(technology.effects, i)
      end
    end
  end
end

function bobmods.lib.tech.has_recipe_unlock(technology, recipe)
  if
    type(technology) == "string"
    and type(recipe) == "string"
    and data.raw.technology[technology]
    and data.raw.recipe[recipe]
  then
    local hasit = false
    hasit = has_recipe_unlock(data.raw.technology[technology], recipe)

    return hasit
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
    return false
  end
end

function bobmods.lib.tech.add_recipe_unlock(technology, recipe)
  if
    type(technology) == "string"
    and type(recipe) == "string"
    and data.raw.technology[technology]
    and data.raw.recipe[recipe]
  then
    add_recipe_unlock(data.raw.technology[technology], recipe)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.tech.remove_recipe_unlock(technology, recipe)
  if
    type(technology) == "string"
    and type(recipe) == "string"
    and data.raw.technology[technology]
    --    data.raw.recipe[recipe] --don't check to see if something we're removing exists.
  then
    remove_recipe_unlock(data.raw.technology[technology], recipe)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
  end
end

local function add_prerequisite(technology, prerequisite)
  local addit = true
  if technology.prerequisites then
    for i, check in ipairs(technology.prerequisites) do
      if check == prerequisite then
        addit = false
      end
    end
  else
    technology.prerequisites = {}
  end
  if addit then
    table.insert(technology.prerequisites, prerequisite)
  end
end

local function remove_prerequisite(technology, prerequisite)
  if technology.prerequisites then
    for i, check in ipairs(technology.prerequisites) do
      if check == prerequisite then
        table.remove(technology.prerequisites, i)
      end
    end
  end
end

local function replace_prerequisite(technology, old, new)
  if technology.prerequisites then
    for i, prerequisite in ipairs(technology.prerequisites) do
      if prerequisite == old then
        remove_prerequisite(technology, old)
        add_prerequisite(technology, new)
      end
    end
  end
end

function bobmods.lib.tech.replace_prerequisite(technology, old, new)
  if
    type(technology) == "string"
    and type(old) == "string"
    and type(new) == "string"
    and data.raw.technology[technology]
    --    data.raw.technology[old] and
    and data.raw.technology[new]
  then
    replace_prerequisite(data.raw.technology[technology], old, new)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(old, "Old prerequisite", "Old prerequisite technology")
    bobmods.lib.error.technology(new, "New prerequisite", "New prerequisite technology")
  end
end

function bobmods.lib.tech.add_prerequisite(technology, prerequisite)
  if
    type(technology) == "string"
    and type(prerequisite) == "string"
    and data.raw.technology[technology]
    and data.raw.technology[prerequisite]
  then
    add_prerequisite(data.raw.technology[technology], prerequisite)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(prerequisite, "Prerequisite", "Prerequisite technology")
  end
end

function bobmods.lib.tech.remove_prerequisite(technology, prerequisite)
  if
    type(technology) == "string"
    and type(prerequisite) == "string"
    and data.raw.technology[technology]
    --    data.raw.technology[prerequisite]
  then
    remove_prerequisite(data.raw.technology[technology], prerequisite)
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(prerequisite, "Prerequisite", "Prerequisite technology")
  end
end

function bobmods.lib.tech.hide(technology_name)
  if type(technology_name) == "string" and data.raw.technology[technology_name] then
    local technology = data.raw.technology[technology_name]
    technology.hidden = true
    technology.enabled = false
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology_name)
  end
end

function bobmods.lib.tech.ignore_tech_cost_multiplier(technology_name, ignore)
  if type(technology_name) == "string" and type(ignore) == "boolean" then
    local technology = data.raw.technology[technology_name]
    if technology then
      technology.ignore_tech_cost_multiplier = ignore
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology_name)
  end
end

function bobmods.lib.tech.technology_icon_constant(technology_icon, constant_icon, x, y)
  local scale = 0.5
  local xshift = x or 64
  local yshift = y or 64
  if type(technology_icon) == "table" and technology_icon.icon and technology_icon.icon_size then
    local icons = {
      technology_icon,
      {
        icon = constant_icon,
        icon_size = 128,
        scale = scale,
        shift = { xshift * scale, yshift * scale },
      },
    }
    return icons
  else
    log(debug.traceback())
    log(technology_icon .. " not given in required table format")
  end
end

function bobmods.lib.tech.technology_line_icon_constant(technology_line, first, last, technology_icon, constant_icon)
  local scale = 0.5
  if type(technology_icon) == "table" and technology_icon.icon and technology_icon.icon_size then
    for i = first, last do
      local tech_name = technology_line .. "-" .. i
      if data.raw.technology[tech_name] then
        data.raw.technology[tech_name].icons = {
          technology_icon,
          {
            icon = constant_icon,
            icon_size = 128,
            scale = scale,
            shift = { 64 * scale, 64 * scale },
          },
        }
      else
        log(debug.traceback())
        bobmods.lib.error.technology(tech_name)
      end
    end
  else
    log(debug.traceback())
    log(technology_icon .. " not given in required table format")
  end
end
