if not bobmods.lib.tech then
  bobmods.lib.tech = {}
end

local function split_line(technology, tag)
  if data.raw.technology[technology][tag] then
    if not data.raw.technology[technology].normal[tag] then
      data.raw.technology[technology].normal[tag] =
        table.deepcopy(data.raw.technology[technology][tag])
    end
    if not data.raw.technology[technology].expensive[tag] then
      data.raw.technology[technology].expensive[tag] =
        table.deepcopy(data.raw.technology[technology][tag])
    end
  end
end

local function split_line_bool(technology, tag)
  if data.raw.technology[technology][tag] == true then
    data.raw.technology[technology].normal[tag] = true
    data.raw.technology[technology].expensive[tag] = true
  end
  if data.raw.technology[technology][tag] == false then
    data.raw.technology[technology].normal[tag] = false
    data.raw.technology[technology].expensive[tag] = false
  end
end

function bobmods.lib.tech.difficulty_split(technology)
  if type(technology) == "string" and data.raw.technology[technology] then
    if not data.raw.technology[technology].normal then
      data.raw.technology[technology].normal = {}
    end
    if not data.raw.technology[technology].expensive then
      data.raw.technology[technology].expensive = {}
    end

    split_line_bool(recipe, "upgrade")
    split_line_bool(recipe, "enabled")
    split_line_bool(recipe, "hidden")
    split_line_bool(recipe, "visible_when_disabled")

    split_line(recipe, "unit")
    split_line(recipe, "max_level")
    split_line(recipe, "prerequisites")
    split_line(recipe, "effects")
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

local function add_new_science_pack(technology, pack, amount)
  if technology.unit and technology.unit.ingredients then
    local addit = true
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == pack or ingredient.name == pack then
        addit = false
      end
    end
    if addit then
      table.insert(technology.unit.ingredients, {pack, amount})
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
      if ingredient.name == pack then
        addit = false
        ingredient.amount = ingredient.amount + amount
      end
    end
    if addit then
      table.insert(technology.unit.ingredients, {pack, amount})
    end
  end
end

local function remove_science_pack(technology, pack)
  if technology.unit and technology.unit.ingredients then
    for i, ingredient in pairs(technology.unit.ingredients) do
      if ingredient[1] == pack or ingredient.name == pack then
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
      if ingredient.name == old then
        doit = true
        amount = ingredient.amount + amount
      end
    end
    if doit then
      remove_science_pack(technology, old)
      add_science_pack(technology, new, amount)
    end
  end
end

function bobmods.lib.tech.replace_science_pack(technology, old, new)
  if type(technology) == "string" and type(old) == "string" and type(
  --    data.raw.tool[old] and
    new
  ) == "string" and data.raw.technology[technology] and data.raw.tool[new] then
    if data.raw.technology[technology].unit then
      replace_science_pack(data.raw.technology[technology], old, new)
    end
    if data.raw.technology[technology].normal and data.raw.technology[technology].normal.unit then
      replace_science_pack(data.raw.technology[technology].normal, old, new)
    end
    if data.raw.technology[technology].expensive and data.raw.technology[technology].expensive.unit then
      replace_science_pack(data.raw.technology[technology].expensive, old, new)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(old, "tool", "Old science pack")
    bobmods.lib.error.item_of_type(new, "tool", "New science pack")
  end
end

function bobmods.lib.tech.add_new_science_pack(technology, pack, amount)
  if type(technology) == "string" and type(pack) == "string" and type(
    amount
  ) == "number" and data.raw.technology[technology] and data.raw.tool[pack] then
    if data.raw.technology[technology].unit then
      add_new_science_pack(data.raw.technology[technology], pack, amount)
    end
    if data.raw.technology[technology].normal and data.raw.technology[technology].normal.unit then
      add_new_science_pack(data.raw.technology[technology].normal, pack, amount)
    end
    if data.raw.technology[technology].expensive and data.raw.technology[technology].expensive.unit then
      add_new_science_pack(
        data.raw.technology[technology].expensive,
        pack,
        amount
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(pack, "tool", "Science pack")
  end
end

function bobmods.lib.tech.add_science_pack(technology, pack, amount)
  if type(technology) == "string" and type(pack) == "string" and type(
    amount
  ) == "number" and data.raw.technology[technology] and data.raw.tool[pack] then
    if data.raw.technology[technology].unit then
      add_science_pack(data.raw.technology[technology], pack, amount)
    end
    if data.raw.technology[technology].normal and data.raw.technology[technology].normal.unit then
      add_science_pack(data.raw.technology[technology].normal, pack, amount)
    end
    if data.raw.technology[technology].expensive and data.raw.technology[technology].expensive.unit then
      add_science_pack(data.raw.technology[technology].expensive, pack, amount)
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
      if type(science_pack) == "table" and type(
        science_pack[1]
      ) == "string" and data.raw.tool[science_pack[1]] and type(
        science_pack[2]
      ) == "number" then
        bobmods.lib.tech.add_science_pack(
          technology,
          science_pack[1],
          science_pack[2]
        )
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.remove_science_pack(technology, pack)
  if type(technology) == "string" and type(
    pack
  ) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].unit then
      remove_science_pack(data.raw.technology[technology], pack)
    end
    if data.raw.technology[technology].normal and data.raw.technology[technology].normal.unit then
      remove_science_pack(data.raw.technology[technology].normal, pack)
    end
    if data.raw.technology[technology].expensive and data.raw.technology[technology].expensive.unit then
      remove_science_pack(data.raw.technology[technology].expensive, pack)
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
    if data.raw.technology[technology].normal and data.raw.technology[technology].normal.unit then
      data.raw.technology[technology].normal.unit.ingredients = {}
    end
    if data.raw.technology[technology].expensive and data.raw.technology[technology].expensive.unit then
      data.raw.technology[technology].expensive.unit.ingredients = {}
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.set_science_packs(technology, science_packs)
  if type(technology) == "string" and data.raw.technology[technology] and type(
    science_packs
  ) == "table" then
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
    if prototype.normal and prototype.normal.unit then
      prototype.normal.unit.count = count
    end
    if prototype.expensive and prototype.expensive.unit then
      prototype.expensive.unit.count = count
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
end

function bobmods.lib.tech.replace_difficulty_science_pack(
technology,
  difficulty,
  old,
  new
)
  if type(technology) == "string" and type(old) == "string" and type(
  --    data.raw.tool[old] and
    new
  ) == "string" and data.raw.technology[technology] and data.raw.tool[new] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty].unit then
      replace_science_pack(
        data.raw.technology[technology][difficulty],
        old,
        new
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(old, "tool", "Old science pack")
    bobmods.lib.error.item_of_type(new, "tool", "New science pack")
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.add_new_difficulty_science_pack(
technology,
  difficulty,
  pack,
  amount
)
  if type(technology) == "string" and type(pack) == "string" and type(
    amount
  ) == "number" and data.raw.technology[technology] and data.raw.tool[pack] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty].unit then
      add_new_science_pack(
        data.raw.technology[technology][difficulty],
        pack,
        amount
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(pack, "tool", "Science pack")
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.add_difficulty_science_pack(
technology,
  difficulty,
  pack,
  amount
)
  if type(technology) == "string" and type(pack) == "string" and type(
    amount
  ) == "number" and data.raw.technology[technology] and data.raw.tool[pack] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty].unit then
      add_science_pack(
        data.raw.technology[technology][difficulty],
        pack,
        amount
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.item_of_type(pack, "tool", "Science pack")
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.remove_difficulty_science_pack(
technology,
  difficulty,
  pack
)
  if type(technology) == "string" and type(
    pack
  ) == "string" and data.raw.technology[technology] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty].unit then
      remove_science_pack(data.raw.technology[technology][difficulty], pack)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.difficulty(difficulty)
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
    table.insert(technology.effects, {
      type = "unlock-recipe",
      recipe = recipe
    })
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
  if type(technology) == "string" and type(
    recipe
  ) == "string" and data.raw.technology[technology] and data.raw.recipe[recipe] then
    local hasit = false
    hasit = has_recipe_unlock(data.raw.technology[technology], recipe)

    if data.raw.technology[technology].normal then
      hasit =
        hasit or has_recipe_unlock(
          data.raw.technology[technology].normal,
          recipe
        )
    end
    if data.raw.technology[technology].expensive then
      hasit =
        hasit or has_recipe_unlock(
          data.raw.technology[technology].expensive,
          recipe
        )
    end
    return hasit
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
    return false
  end
end

function bobmods.lib.tech.add_recipe_unlock(technology, recipe)
  if type(technology) == "string" and type(
    recipe
  ) == "string" and data.raw.technology[technology] and data.raw.recipe[recipe] then
    add_recipe_unlock(data.raw.technology[technology], recipe)

    if data.raw.technology[technology].normal then
      add_recipe_unlock(data.raw.technology[technology].normal, recipe)
    end
    if data.raw.technology[technology].expensive then
      add_recipe_unlock(data.raw.technology[technology].expensive, recipe)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.tech.remove_recipe_unlock(technology, recipe)
  if type(technology) == "string" and type(
    recipe
  ) == "string" and data.raw.technology[technology] then
    --    data.raw.recipe[recipe] --don't check to see if something we're removing exists.
    remove_recipe_unlock(data.raw.technology[technology], recipe)

    if data.raw.technology[technology].normal then
      remove_recipe_unlock(data.raw.technology[technology].normal, recipe)
    end
    if data.raw.technology[technology].expensive then
      remove_recipe_unlock(data.raw.technology[technology].expensive, recipe)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.tech.has_difficulty_recipe_unlock(
technology,
  difficulty,
  recipe
)
  if type(technology) == "string" and type(
    recipe
  ) == "string" and data.raw.technology[technology] and data.raw.recipe[recipe] and (difficulty == "normal" or difficulty == "expensive") then
    if data.raw.technology[technology][difficulty] then
      return has_recipe_unlock(
        data.raw.technology[technology][difficulty],
        recipe
      )
    else
      return has_recipe_unlock(data.raw.technology[technology], recipe)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.add_difficulty_recipe_unlock(
technology,
  difficulty,
  recipe
)
  if type(technology) == "string" and type(
    recipe
  ) == "string" and data.raw.technology[technology] and data.raw.recipe[recipe] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty] then
      add_recipe_unlock(data.raw.technology[technology][difficulty], recipe)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.remove_difficulty_recipe_unlock(
technology,
  difficulty,
  recipe
)
  if type(technology) == "string" and type(
  --    data.raw.recipe[recipe] --don't check to see if something we're removing exists.
    recipe
  ) == "string" and data.raw.technology[technology] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty] then
      remove_recipe_unlock(data.raw.technology[technology][difficulty], recipe)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.recipe(recipe)
    bobmods.lib.error.difficulty(difficulty)
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
  if type(technology) == "string" and type(old) == "string" and type(
  --    data.raw.technology[old] and
    new
  ) == "string" and data.raw.technology[technology] and data.raw.technology[new] then
    replace_prerequisite(data.raw.technology[technology], old, new)

    if data.raw.technology[technology].normal then
      replace_prerequisite(data.raw.technology[technology].normal, old, new)
    end
    if data.raw.technology[technology].expensive then
      replace_prerequisite(data.raw.technology[technology].expensive, old, new)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      old,
      "Old prerequisite",
      "Old prerequisite technology"
    )
    bobmods.lib.error.technology(
      new,
      "New prerequisite",
      "New prerequisite technology"
    )
  end
end

function bobmods.lib.tech.add_prerequisite(technology, prerequisite)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] then
    add_prerequisite(data.raw.technology[technology], prerequisite)

    if data.raw.technology[technology].normal then
      add_prerequisite(data.raw.technology[technology].normal, prerequisite)
    end
    if data.raw.technology[technology].expensive then
      add_prerequisite(data.raw.technology[technology].expensive, prerequisite)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
end

function bobmods.lib.tech.remove_prerequisite(technology, prerequisite)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] then
    --    data.raw.technology[prerequisite]
    remove_prerequisite(data.raw.technology[technology], prerequisite)

    if data.raw.technology[technology].normal then
      remove_prerequisite(data.raw.technology[technology].normal, prerequisite)
    end
    if data.raw.technology[technology].expensive then
      remove_prerequisite(
        data.raw.technology[technology].expensive,
        prerequisite
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
end

function bobmods.lib.tech.replace_difficulty_prerequisite(
technology,
  difficulty,
  old,
  new
)
  if type(technology) == "string" and type(old) == "string" and type(
  --    data.raw.technology[old] and
    new
  ) == "string" and data.raw.technology[technology] and data.raw.technology[new] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty] then
      replace_prerequisite(
        data.raw.technology[technology][difficulty],
        old,
        new
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      old,
      "Old prerequisite",
      "Old prerequisite technology"
    )
    bobmods.lib.error.technology(
      new,
      "New prerequisite",
      "New prerequisite technology"
    )
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.add_difficulty_prerequisite(
technology,
  difficulty,
  prerequisite
)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty] then
      add_prerequisite(
        data.raw.technology[technology][difficulty],
        prerequisite
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.remove_difficulty_prerequisite(
technology,
  difficulty,
  prerequisite
)
  if type(technology) == "string" and type(
  --    data.raw.technology[prerequisite] and
    prerequisite
  ) == "string" and data.raw.technology[technology] and (difficulty == "normal" or difficulty == "expensive") then
    if not data.raw.technology[technology][difficulty] then
      bobmods.lib.tech.difficulty_split(technology)
    end
    if data.raw.technology[technology][difficulty] then
      remove_prerequisite(
        data.raw.technology[technology][difficulty],
        prerequisite
      )
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
    bobmods.lib.error.difficulty(difficulty)
  end
end

function bobmods.lib.tech.has_prerequisite(technology, prerequisite)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] then
    if data.raw.technology[technology].prerequisites then
      for i, check in pairs(data.raw.technology[technology].prerequisites) do
        if check == prerequisite then
          return true
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
  return false
end

function bobmods.lib.tech.get_prerequisites(technology)
  local prerequisites = {}
  if type(technology) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].prerequisites then
      for i, prerequisite in
        ipairs(data.raw.technology[technology].prerequisites)
      do
        table.insert(prerequisites, prerequisite)
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
  return prerequisites
end

function bobmods.lib.tech.get_prerequisites_in_tree(technology)
  local prerequisites = {}
  if type(technology) == "string" and data.raw.technology[technology] then
    local temp = {}
    if data.raw.technology[technology].prerequisites then
      for i, prerequisite in
        ipairs(data.raw.technology[technology].prerequisites)
      do
        if type(
          prerequisite
        ) == "string" and data.raw.technology[prerequisite] then
          temp[prerequisite] = true
          if data.raw.technology[prerequisite].prerequisites then
            for j, prerequisite_in_tree in
              ipairs(bobmods.lib.tech.get_prerequisites_in_tree(prerequisite))
            do
              temp[prerequisite_in_tree] = true
            end
          end
        else
          log(technology .. " has an invalid prerequisite.")
          bobmods.lib.error.technology(
            prerequisite,
            "Prerequisite",
            "Prerequisite technology"
          )
        end
      end
    end
    for prerequisite, _ in pairs(temp) do
      table.insert(prerequisites, prerequisite)
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
  return prerequisites
end

function bobmods.lib.tech.has_prerequisite_in_tree(technology, prerequisite)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] then
    if data.raw.technology[technology].prerequisites then
      for i, check in pairs(data.raw.technology[technology].prerequisites) do
        if check == prerequisite or bobmods.lib.tech.has_prerequisite_in_tree(
          check,
          prerequisite
        ) then
          return true
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
  return false
end

function bobmods.lib.tech.has_prerequisite_in_tree_only(
technology,
  prerequisite
)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] then
    if data.raw.technology[technology].prerequisites then
      for i, check in ipairs(data.raw.technology[technology].prerequisites) do
        if check ~= prerequisite and bobmods.lib.tech.has_prerequisite_in_tree(
          check,
          prerequisite
        ) then
          return true
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
  return false
end

function bobmods.lib.tech.get_redundant_prerequisites(technology)
  local redundant = {}
  if type(technology) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].prerequisites then
      for i, prerequisite in
        ipairs(data.raw.technology[technology].prerequisites)
      do
        if bobmods.lib.tech.has_prerequisite_in_tree_only(
          technology,
          prerequisite
        ) then
          table.insert(redundant, prerequisite)
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
  return redundant
end

function bobmods.lib.tech.get_redundant_prerequisites_smart(technology)
  local redundant = {}
  if type(technology) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].prerequisites then
      local technology_trunc = string.gsub(technology, "%A", "")
      for i, prerequisite in
        ipairs(data.raw.technology[technology].prerequisites)
      do
        if type(prerequisite) == "string" then
          local prerequisite_trunc = string.gsub(prerequisite, "%A", "")
          if technology_trunc ~= prerequisite_trunc and bobmods.lib.tech.has_prerequisite_in_tree_only(
            technology,
            prerequisite
          ) then
            table.insert(redundant, prerequisite)
          end
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
  return redundant
end

local prerequisites_cache = {}
--Cache holds prerequisites as tags instead of keys for faster sorting and checking.

local function get_prerequisites_in_tree_cached(technology)
  if type(technology) == "string" and data.raw.technology[technology] then
    if not prerequisites_cache[technology] then
      prerequisites_cache[technology] = {}
      if data.raw.technology[technology].prerequisites then
        for i, prerequisite in
          ipairs(data.raw.technology[technology].prerequisites)
        do
          if type(
            prerequisite
          ) == "string" and data.raw.technology[prerequisite] then
            prerequisites_cache[technology][prerequisite] = true
            if data.raw.technology[prerequisite].prerequisites then
              for prerequisite_in_tree, _ in
                pairs(get_prerequisites_in_tree_cached(prerequisite))
              do
                prerequisites_cache[technology][prerequisite_in_tree] = true
              end
            end
          else
            log(technology .. " has an invalid prerequisite.")
            bobmods.lib.error.technology(
              prerequisite,
              "Prerequisite",
              "Prerequisite technology"
            )
          end
        end
      end
    end
    return prerequisites_cache[technology]
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    return {}
  end
end

local function has_prerequisite_in_tree_only_cached(technology, prerequisite)
  if type(technology) == "string" and type(
    prerequisite
  ) == "string" and data.raw.technology[technology] and data.raw.technology[prerequisite] then
    if data.raw.technology[technology].prerequisites then
      for i, check in ipairs(data.raw.technology[technology].prerequisites) do
        if check ~= prerequisite and get_prerequisites_in_tree_cached(
          check
        )[prerequisite] then
          return true
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
    bobmods.lib.error.technology(
      prerequisite,
      "Prerequisite",
      "Prerequisite technology"
    )
  end
  return false
end

local function get_redundant_prerequisites_smart_cached(technology)
  local redundant = {}
  if type(technology) == "string" and data.raw.technology[technology] then
    if data.raw.technology[technology].prerequisites then
      local technology_trunc = string.gsub(technology, "%A", "")
      for i, prerequisite in
        ipairs(data.raw.technology[technology].prerequisites)
      do
        if type(prerequisite) == "string" then
          local prerequisite_trunc = string.gsub(prerequisite, "%A", "")
          if technology_trunc ~= prerequisite_trunc and has_prerequisite_in_tree_only_cached(
            technology,
            prerequisite
          ) then
            table.insert(redundant, prerequisite)
          end
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology)
  end
  return redundant
end

local function duplicate_prerequisites_check_inner(
technology_name,
  prerequisites
)
  local prerequisites_list = {}
  local rebuild = false
  for i, prerequisite in ipairs(prerequisites) do
    if type(prerequisite) == "string" then
      if prerequisites_list[prerequisite] then -- duplicate value
        rebuild = true
      else
        prerequisites_list[prerequisite] = true
      end --invalid value
    else
      rebuild = true
    end
  end
  if rebuild == true then
    prerequisites = {}
    for prerequisite, _ in pairs(prerequisites_list) do
      table.insert(prerequisites, prerequisite)
    end
    return prerequisites
  end
end

local function duplicate_prerequisites_check(technology_name)
  if type(
    technology_name
  ) == "string" and data.raw.technology[technology_name] then
    if data.raw.technology[technology_name].prerequisites then
      local prerequisites =
        duplicate_prerequisites_check_inner(
          technology_name,
          data.raw.technology[technology_name].prerequisites
        )
      if prerequisites then
        data.raw.technology[technology_name].prerequisites = prerequisites
      end
    end
    if data.raw.technology[technology_name].normal and data.raw.technology[technology_name].normal.prerequisites then
      local prerequisites =
        duplicate_prerequisites_check_inner(
          technology_name,
          data.raw.technology[technology_name].normal.prerequisites
        )
      if prerequisites then
        data.raw.technology[technology_name].normal.prerequisites =
          prerequisites
      end
    end
    if data.raw.technology[technology_name].expensive and data.raw.technology[technology_name].expensive.prerequisites then
      local prerequisites =
        duplicate_prerequisites_check_inner(
          technology_name,
          data.raw.technology[technology_name].expensive.prerequisites
        )
      if prerequisites then
        data.raw.technology[technology_name].expensive.prerequisites =
          prerequisites
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology_name)
  end
end

function bobmods.lib.tech.prerequisite_cleanup()
  log("Running technology prerequisite cleanup...")
  for technology_name, technology in pairs(data.raw.technology) do
    duplicate_prerequisites_check(technology_name)
    for i, prerequisite in
      pairs(get_redundant_prerequisites_smart_cached(technology_name))
    do
      bobmods.lib.tech.remove_prerequisite(technology_name, prerequisite)
      --      log("removed " .. prerequisite .. " from " .. technology_name)
    end
  end
end

function bobmods.lib.tech.hide(technology_name)
  if type(
    technology_name
  ) == "string" and data.raw.technology[technology_name] then
    local technology = data.raw.technology[technology_name]
    if technology.normal then
      technology.normal.hidden = true
      technology.normal.enabled = false
    end
    if technology.expensive then
      technology.expensive.hidden = true
      technology.expensive.enabled = false
    end
    if not technology.normal and not technology.expensive then
      technology.hidden = true
      technology.enabled = false
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology_name)
  end
end

function bobmods.lib.tech.ignore_tech_cost_multiplier(technology_name, ignore)
  if type(technology_name) == "string" and type(ignore) == "boolean" then
    local technology = data.raw.technology[technology_name]
    if technology then
      if technology.normal then
        technology.normal.ignore_tech_cost_multiplier = ignore
      end
      if technology.expensive then
        technology.expensive.ignore_tech_cost_multiplier = ignore
      end
      if not technology.normal and not technology.expensive then
        technology.ignore_tech_cost_multiplier = ignore
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.technology(technology_name)
  end
end