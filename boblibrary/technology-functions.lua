if not bobmods.lib.tech then
  bobmods.lib.tech = {}
end

local simple_list = {
  ["character-logistic-requests"] = true,
  ["unlock-circuit-network"] = true,
  ["cliff-deconstruction-enabled"] = true,
  ["create-ghost-on-entity-death"] = true,
  ["mining-with-fluid"] = true,
  ["rail-planner-allow-elevated-rails"] = true,
  ["rail-support-on-deep-oil-ocean"] = true,
  ["unlock-space-platforms"] = true,
  ["unlock-travel-to-space-platforms"] = true,
  ["unlock-logistic-network"] = true,
  ["vehicle-logistics"] = true,
  ["artillery-range"] = true,
  ["beacon-distribution"] = true,
  ["belt-stack-size-bonus"] = true,
  ["bulk-inserter-capacity-bonus"] = true,
  ["cargo-landing-pad-count"] = true,
  ["character-build-distance"] = true,
  ["character-crafting-speed"] = true,
  ["character-health-bonus"] = true,
  ["character-inventory-slots-bonus"] = true,
  ["character-item-drop-distance"] = true,
  ["character-item-pickup-distance"] = true,
  ["character-logistic-trash-slots"] = true,
  ["character-loot-pickup-distance"] = true,
  ["character-mining-speed"] = true,
  ["character-reach-distance"] = true,
  ["character-resource-reach-distance"] = true,
  ["character-running-speed"] = true,
  ["deconstruction-time-to-live"] = true,
  ["follower-robot-lifetime"] = true,
  ["inserter-stack-size-bonus"] = true,
  ["laboratory-productivity"] = true,
  ["laboratory-speed"] = true,
  ["max-cargo-bay-unloading-distance"] = true,
  ["max-failed-attempts-per-tick-per-construction-queue"] = true,
  ["max-successful-attempts-per-tick-per-construction-queue"] = true,
  ["maximum-following-robots-count"] = true,
  ["mining-drill-productivity-bonus"] = true,
  ["train-braking-force-bonus"] = true,
  ["worker-robot-battery"] = true,
  ["worker-robot-speed"] = true,
  ["worker-robot-storage"] = true,
}

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
    and data.raw.item[new]
  then
    if data.raw.technology[technology].unit then
      replace_science_pack(data.raw.technology[technology], old, new)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item(old, "Old science pack")
    bobmods.lib.error.item(new, "New science pack")
  end
end

function bobmods.lib.tech.add_new_science_pack(technology, pack, amount)
  if
    type(technology) == "string"
    and type(pack) == "string"
    and type(amount) == "number"
    and data.raw.technology[technology]
    and data.raw.item[pack]
  then
    if data.raw.technology[technology].unit then
      add_new_science_pack(data.raw.technology[technology], pack, amount)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item(pack, "Science pack")
  end
end

function bobmods.lib.tech.add_science_pack(technology, pack, amount)
  if
    type(technology) == "string"
    and type(pack) == "string"
    and type(amount) == "number"
    and data.raw.technology[technology]
    and data.raw.item[pack]
  then
    if data.raw.technology[technology].unit then
      add_science_pack(data.raw.technology[technology], pack, amount)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item(pack, "Science pack")
  end
end

function bobmods.lib.tech.add_science_packs(technology, science_packs)
  if type(technology) == "string" and type(science_packs) == "table" then
    for i, science_pack in pairs(science_packs) do
      if
        type(science_pack) == "table"
        and type(science_pack[1]) == "string"
        and data.raw.item[science_pack[1]]
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

local function check_tech_modifier_validity(modifier)
  local valid_modifier = false
  --Check if modifier argument has the necessary parameters in the table.
  if (modifier.type == "unlock-recipe" or modifier.type == "change-recipe-productivity") and modifier.recipe then
    valid_modifier = true
  elseif modifier.type == "turret-attack" and modifier.turret_id then
    valid_modifier = true
  elseif (modifier.type == "ammo-damage" or modifier.type == "gun-speed") and modifier.ammo_category then
    valid_modifier = true
  elseif modifier.type == "give-item" and modifier.item then
    valid_modifier = true
  elseif modifier.type == "nothing" and modifier.effect_description then
    valid_modifier = true
  elseif modifier.type == "unlock-space-location" and modifier.space_location then
    valid_modifier = true
  elseif modifier.type == "unlock-quality" and modifier.quality then
    valid_modifier = true
  elseif simple_list[modifier.type] and modifier.modifier then
    valid_modifier = true
  else
    log(debug.traceback())
    log("Given modifier table is not a valid tech effect.")
  end

  return valid_modifier
end

local function find_matching_tech_modifier(effects, modifier)
  --Tries to find a match in the given effects table for the given modifier. Returns index, or 0 for no match.
  local match_found = 0
  for i, effect in pairs(effects) do
    if (effect.type == "unlock-recipe" or effect.type == "change-recipe-productivity") and modifier.recipe and effect.recipe == modifier.recipe then
      match_found = i
    elseif effect.type == "turret-attack" and modifier.turret_id and effect.turret_id == modifier.turret_id then
      match_found = i
    elseif (effect.type == "ammo-damage" or effect.type == "gun-speed") and modifier.ammo_category and effect.ammo_category == modifier.ammo_category then
      match_found = i
    elseif effect.type == "give-item" and modifier.item and effect.item == modifier.item then
      match_found = i
    elseif effect.type == "nothing" and modifier.effect_description and serpent.line(effect.effect_description) == serpent.line(modifier.effect_description) then
      match_found = i
    elseif effect.type == "unlock-space-location" and modifier.space_location and effect.space_location == modifier.space_location then
      match_found = i
    elseif effect.type == "unlock-quality" and modifier.quality and effect.quality == modifier.quality then
      match_found = i
    elseif simple_list[modifier.type] and effect.type == modifier.type then
      match_found = i
    end
  end

  return match_found
end

local function find_modifier_insert_index(effects, insert_string)
  local insert_target
  for i, effect in pairs(effects) do
    if (effect.type == "unlock-recipe" or effect.type == "change-recipe-productivity") and effect.recipe == insert_string then
      insert_target = i
    elseif effect.type == "turret-attack" and effect.turret_id == insert_string then
      insert_target = i
    elseif (effect.type == "ammo-damage" or effect.type == "gun-speed") and effect.ammo_category == insert_string then
      insert_target = i
    elseif effect.type == "give-item" and effect.item == insert_string then
      insert_target = i
    elseif effect.type == "nothing" and serpent.line(effect.effect_description) == serpent.line(insert_string) then
      insert_target = i
    elseif effect.type == "unlock-space-location" and effect.space_location == insert_string then
      insert_target = i
    elseif effect.type == "unlock-quality" and effect.quality == insert_string then
      insert_target = i
    elseif effect.type == insert_string then
      insert_target = i
    end
  end

  return insert_target
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

local function add_recipe_unlock(technology, recipe, insert_at, insert_before)

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
    --insert_at allows inputs of both numbers (for indexes) and strings (for placing after specific subtables). For simple or boolean modifiers, match insert_at to the modifier type. Otherwise, match it to the secondary key parameter - usually a category to be modified or a name. In some instances, the same string may match multiple subtables, in which case the new entry will go after the last match. If insert_at is a string or table, "insert_before" can be used to insert the new entry before the target instead of after.
    local insert_target = #technology.effects + 1
    if type(insert_at) == "number" then
      insert_target = insert_at
    elseif type(insert_at) == "string" or type(insert_at) == "table" then
      local string_target = find_modifier_insert_index(technology.effects, insert_at)
      if string_target then
        if insert_before == true then
          insert_target = string_target
        else
          insert_target = string_target + 1
        end
      end
    end

    table.insert(technology.effects, insert_target, { type = "unlock-recipe", recipe = recipe })
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

function bobmods.lib.tech.add_recipe_unlock(technology, recipe, insert_at, insert_before)
  if
    type(technology) == "string"
    and type(recipe) == "string"
    and data.raw.technology[technology]
    and data.raw.recipe[recipe]
  then
    add_recipe_unlock(data.raw.technology[technology], recipe, insert_at, insert_before)
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

function bobmods.lib.tech.add_tech_modifier(technology, modifier, insert_at, insert_before)

  --Insert any modifier into a technology's effects. Use a full table for the modifier argument.
  if
    type(technology) == "string"
    and type(modifier) == "table"
    and data.raw.technology[technology]
  then

    local valid_modifier = check_tech_modifier_validity(modifier)

    if valid_modifier == true then
      local target_technology = data.raw.technology[technology]
      if not target_technology.effects then
        target_technology.effects = {}
      end

      if find_matching_tech_modifier(target_technology.effects, modifier) == 0 then

        --insert_at allows inputs of both numbers (for indexes) and strings (for placing after specific subtables). For simple or boolean modifiers, match insert_at to the modifier type. Otherwise, match it to the secondary key parameter - usually a category to be modified or a name. In some instances, the same string may match multiple subtables, in which case the new entry will go after the last match. If insert_at is a string or table, "insert_before" can be used to insert the new entry before the target instead of after.
        local insert_target = #target_technology.effects + 1
        if type(insert_at) == "number" then
          insert_target = insert_at
        elseif type(insert_at) == "string" or type(insert_at) == "table" then
          local string_target = find_modifier_insert_index(target_technology.effects, insert_at)
          if string_target then
            if insert_before == true then
              insert_target = string_target
            else
              insert_target = string_target + 1
            end
          end
        end

        table.insert(target_technology.effects, insert_target, modifier)

      end
    end
  elseif type(modifier) ~= "table" then
    log(debug.traceback())
    log("Modifier is not a table.")
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.set_tech_modifier(technology, modifier_ID, new_value)

  --Set an existing technology effect to a new value. For modifier_ID argument, give a table that contains the key identifying parameter or parameters. i.e. {ammo_category = "bullet"}, or {turret_id = "gun-turret"}, or for simple modifiers (those that only use "type" and "modifier" parameters), {type = "train-braking-force-bonus"}. new_value must also be a table, and in a few select cases, multiple parameters may be modified at once.
  if
    type(technology) == "string"
    and type(modifier_ID) == "table"
    and type(new_value) == "table"
    and data.raw.technology[technology]
  then

    local target_technology = data.raw.technology[technology]
    if not target_technology.effects then
      target_technology.effects = {}
    end

    local matched_index = find_matching_tech_modifier(target_technology.effects, modifier_ID)
    if matched_index ~= 0 then

      local target_effect = target_technology.effects[matched_index]
      if target_effect.type == "unlock-recipe" then
        if new_value.recipe then
          target_technology.effects[matched_index].recipe = new_value.recipe
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      elseif target_effect.type == "change-recipe-productivity" then
        if new_value.change then
          target_technology.effects[matched_index].recipe = new_value.change
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      elseif target_effect.type == "give-item" then
        if new_value.item then
          target_technology.effects[matched_index].item = new_value.item
        end
        if new_value.count then
          target_technology.effects[matched_index].count = new_value.count
        end
        if new_value.quality then
          target_technology.effects[matched_index].quality = new_value.quality
        end
      elseif target_effect.type == "nothing" then
        if new_value.effect_description then
          target_technology.effects[matched_index].effect_description = new_value.effect_description
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      elseif target_effect.type == "unlock-space-location" then
        if new_value.space_location then
          target_technology.effects[matched_index].space_location = new_value.space_location
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      elseif target_effect.type == "unlock-quality" then
        if new_value.quality then
          target_technology.effects[matched_index].quality = new_value.quality
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      elseif
        simple_list[target_effect.type]
        or target_effect.type == "ammo-damage"
        or target_effect.type == "gun-speed"
        or target_effect.type == "turret-attack"
      then
        if new_value.modifier then
          target_technology.effects[matched_index].modifier = new_value.modifier
        else
          log(debug.traceback())
          log("Given new_value is not applicable to matched effect.")
        end
      end
    end

  elseif type(modifier_ID) ~= "table" then
    log(debug.traceback())
    log("Modifier_ID is not a table.")
  elseif type(new_value) ~= "table" then
    log(debug.traceback())
    log("new_value is not a table.")
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.remove_tech_modifier(technology, modifier)

  --Remove any modifier into a technology's effects. Use a table for the modifier argument. This function will remove the first effect that matches all parameters given. The table is allowed to be incomplete, so if the "modifier" (or equivalent) parameter of the effect is changed, omitting it will let this function still work.
  if
    type(technology) == "string"
    and type(modifier) == "table"
    and data.raw.technology[technology]
  then

    local target_technology = data.raw.technology[technology]
    if not target_technology.effects then
      target_technology.effects = {}
    end

    local remove_index
    for i, effect in pairs(target_technology.effects) do
      local is_match = false
      for v, param in pairs(modifier) do
        --See if effect has all parameters given in "modifier", and all have the same value. If any do not match, end this loop
        if effect[v] == param then
          is_match = true
        else
          is_match = false
          break
        end
      end
      if is_match == true then
        remove_index = i
      end
    end

    if type(remove_index) == "number" then
      table.remove(target_technology.effects, remove_index)
    end

  elseif type(modifier) ~= "table" then
    log(debug.traceback())
    log("Modifier is not a table.")
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
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

function bobmods.lib.tech.global_replace_prerequisite(old, new)
  if type(old) == "string" and type(new) == "string" and data.raw.technology[old] and data.raw.technology[new] then
    for _, techname in pairs(data.raw.technology) do
      bobmods.lib.tech.replace_prerequisite(techname.name, old, new)
    end
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
  local xshift = x or 100
  local yshift = y or 100
  if type(technology_icon) == "table" and technology_icon.icon and technology_icon.icon_size then
    local icons = {
      technology_icon,
      {
        icon = constant_icon,
        icon_size = 128,
        scale = scale,
        shift = { xshift * scale, yshift * scale },
        floating = true,
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
            shift = { 100 * scale, 100 * scale },
            floating = true,
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
