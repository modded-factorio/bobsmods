-- This generates bottle items and fill/empty recipes for gasses.

local function get_item(name)
  local items = data.raw["item"]
  if items then
    return items[name]
  end
  return nil
end

local function get_recipes_for_barrel(name)
  local recipes = data.raw["recipe"]
  if recipes then
    return recipes[name], recipes["empty-" .. name]
  end
  return nil
end

-- Generates the icons definition for a barrel item with the provided name and fluid definition using the provided empty barrel base icon
local function generate_gas_bottle_item_icons(fluid)
  return {
    { icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png", icon_size = 32 },
    { icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png", icon_size = 32, tint = fluid.flow_color },
    { icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png", icon_size = 32, tint = fluid.base_color },
  }
end

local function generate_fluid_canister_item_icons(fluid)
  return {
    { icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png", icon_size = 32 },
    { icon = "__boblibrary__/graphics/icons/cylinder/canister-top.png", icon_size = 32, tint = fluid.flow_color },
    { icon = "__boblibrary__/graphics/icons/cylinder/canister-bottom.png", icon_size = 32, tint = fluid.base_color },
  }
end

-- Generates the icons definition for a fill-barrel recipe with the provided fluid definition and icon
local function generate_fill_recipe_icons(fluid, icon)
  if fluid.icon then
    local iconsize = fluid.icon_size or 64
    table.insert(icon, { icon = fluid.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = { 4, -8 } })
  elseif fluid.icons and util.combine_icons then
    icon = util.combine_icons(icon, fluid.icons, { scale = 0.5, shift = { 4, -8 } })
  end
  return icon
end

local function generate_fill_gas_bottle_icons(fluid)
  local icon = generate_gas_bottle_item_icons(fluid)
  return generate_fill_recipe_icons(fluid, icon)
end

local function generate_fill_fluid_canister_icons(fluid)
  local icon = generate_fluid_canister_item_icons(fluid)
  return generate_fill_recipe_icons(fluid, icon)
end

-- Generates the icons definition for a empty-barrel recipe with the provided fluid definition and icon
local function generate_empty_recipe_icons(fluid, icon)
  if fluid.icon then
    local iconsize = fluid.icon_size or 64
    table.insert(icon, { icon = fluid.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = { 7, 8 } })
  elseif fluid.icons and util.combine_icons then
    icon = util.combine_icons(icon, fluid.icons, { scale = 0.5, shift = { 7, 8 } })
  end
  return icon
end

local function generate_empty_gas_bottle_icons(fluid)
  local icon = generate_gas_bottle_item_icons(fluid)
  return generate_empty_recipe_icons(fluid, icon)
end

local function generate_empty_fluid_canister_icons(fluid)
  local icon = generate_fluid_canister_item_icons(fluid)
  return generate_empty_recipe_icons(fluid, icon)
end

-- Generates a gas bottle item with the provided name and fluid definition
local function create_gas_bottle_item(fluid)
  local result = {
    type = "item",
    name = fluid.name .. "-barrel",
    localised_name = { "item-name.filled-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } },
    icons = generate_gas_bottle_item_icons(fluid),
    subgroup = "bob-gas-bottle",
    order = "b[" .. fluid.name .. "-barrel" .. "]",
    stack_size = 10,
  }

  data:extend({ result })
  return result
end

-- Generates a fluid canister item with the provided name and fluid definition
local function create_fluid_canister_item(fluid)
  local result = {
    type = "item",
    name = fluid.name .. "-barrel",
    localised_name = { "item-name.filled-canister", fluid.localised_name or { "fluid-name." .. fluid.name } },
    icons = generate_gas_bottle_item_icons(fluid),
    subgroup = "bob-canister",
    order = "b[" .. fluid.name .. "-barrel" .. "]",
    stack_size = 10,
  }

  data:extend({ result })
  return result
end

-- Creates a recipe to fill the provided barrel item with the provided fluid
local function create_fill_gas_bottle_recipe(fluid)
  local recipe = {
    type = "recipe",
    name = "fill-" .. fluid.name .. "-barrel",
    localised_name = { "recipe-name.fill-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } },
    category = "bob-air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 0.2,
    order = "b[fill-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    auto_recycle = false,
    icons = generate_fill_gas_bottle_icons(fluid),
    ingredients = {
      { type = "fluid", name = fluid.name, amount = 50, ignored_by_stats = 50 },
      { type = "item", name = "bob-gas-canister", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = fluid.name .. "-barrel", amount = 1 },
    },
    allow_decomposition = false,
  }

  data:extend({ recipe })
  return recipe
end

-- Creates a recipe to fill the provided barrel item with the provided fluid
local function create_fill_fluid_canister_recipe(fluid)
  local recipe = {
    type = "recipe",
    name = "fill-" .. fluid.name .. "-barrel",
    localised_name = { "recipe-name.fill-canister", fluid.localised_name or { "fluid-name." .. fluid.name } },
    category = "bob-air-pump",
    subgroup = "bob-canister",
    energy_required = 0.2,
    order = "b[fill-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    auto_recycle = false,
    icons = generate_fill_fluid_canister_icons(fluid),
    ingredients = {
      { type = "fluid", name = fluid.name, amount = 50, ignored_by_stats = 50 },
      { type = "item", name = "bob-gas-canister", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = fluid.name .. "-barrel", amount = 1 },
    },
    allow_decomposition = false,
  }

  data:extend({ recipe })
  return recipe
end

-- Creates a recipe to empty the provided full barrel item producing the provided fluid
local function create_empty_gas_bottle_recipe(fluid)
  local recipe = {
    type = "recipe",
    name = "empty-" .. fluid.name .. "-barrel",
    localised_name = {
      "recipe-name.empty-filled-gas-canister",
      fluid.localised_name or { "fluid-name." .. fluid.name },
    },
    category = "bob-air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 0.2,
    order = "c[empty-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    auto_recycle = false,
    icons = generate_empty_gas_bottle_icons(fluid),
    ingredients = {
      { type = "item", name = fluid.name .. "-barrel", amount = 1 },
    },
    results = {
      { type = "fluid", name = fluid.name, amount = 50, ignored_by_stats = 50 },
      { type = "item", name = "bob-gas-canister", amount = 1, ignored_by_stats = 1 },
    },
    allow_decomposition = false,
  }

  data:extend({ recipe })
  return recipe
end

-- Creates a recipe to empty the provided full barrel item producing the provided fluid
local function create_empty_fluid_canister_recipe(fluid)
  local recipe = {
    type = "recipe",
    name = "empty-" .. fluid.name .. "-barrel",
    localised_name = { "recipe-name.empty-filled-canister", fluid.localised_name or { "fluid-name." .. fluid.name } },
    category = "bob-air-pump",
    subgroup = "bob-empty-canister",
    energy_required = 0.2,
    order = "c[empty-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    auto_recycle = false,
    icons = generate_empty_fluid_canister_icons(fluid),
    ingredients = {
      { type = "item", name = fluid.name .. "-barrel", amount = 1 },
    },
    results = {
      { type = "fluid", name = fluid.name, amount = 50, ignored_by_stats = 50 },
      { type = "item", name = "bob-gas-canister", amount = 1, ignored_by_stats = 1 },
    },
    allow_decomposition = false,
  }

  data:extend({ recipe })
  return recipe
end

function bobmods.lib.create_gas_bottle(fluid)
  if
    fluid
    and data.raw["item-subgroup"]["bob-empty-gas-bottle"]
    and data.raw["recipe-category"]["bob-air-pump"]
    and data.raw["item-subgroup"]["bob-gas-bottle"]
  then
    -- check if a barrel already exists for this fluid if not - create one
    local barrel_item = get_item(fluid.name .. "-barrel")
    if barrel_item then
      barrel_item.icons = generate_gas_bottle_item_icons(fluid)
      barrel_item.localised_name =
        { "item-name.filled-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      barrel_item.subgroup = "bob-gas-bottle"
    else
      barrel_item = create_gas_bottle_item(fluid)
    end

    -- check if the barrel has a recipe if not - create one
    local fill_recipe, empty_recipe = get_recipes_for_barrel(fluid.name .. "-barrel")

    if fill_recipe then
      fill_recipe.localised_name =
        { "recipe-name.fill-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      fill_recipe.category = "bob-air-pump"
      fill_recipe.subgroup = "bob-gas-bottle"
      fill_recipe.icons = generate_fill_gas_bottle_icons(fluid)

      bobmods.lib.recipe.replace_ingredient(fill_recipe.name, "barrel", "bob-gas-canister")
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", fill_recipe.name)
      bobmods.lib.tech.remove_recipe_unlock("bob-fluid-barrel-processing", fill_recipe.name)
    else
      fill_recipe = create_fill_gas_bottle_recipe(fluid)
    end

    if empty_recipe then
      empty_recipe.localised_name =
        { "recipe-name.empty-filled-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      empty_recipe.category = "bob-air-pump"
      empty_recipe.subgroup = "bob-empty-gas-bottle"
      empty_recipe.icons = generate_empty_gas_bottle_icons(fluid)

      bobmods.lib.recipe.remove_result(empty_recipe.name, "barrel")
      bobmods.lib.recipe.set_result(empty_recipe.name, { type = "item", name = "bob-gas-canister", amount = 1 })
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", empty_recipe.name)
      bobmods.lib.tech.remove_recipe_unlock("bob-fluid-barrel-processing", empty_recipe.name)
      if mods["quality"] then
        bobmods.lib.recipe.update_recycling_recipe(barrel_item.name)
      end
    else
      empty_recipe = create_empty_gas_bottle_recipe(fluid)
    end

    -- add barrel recipe to the unlock list of the technology
    bobmods.lib.tech.add_recipe_unlock("bob-gas-canisters", fill_recipe.name)
    bobmods.lib.tech.add_recipe_unlock("bob-gas-canisters", empty_recipe.name)
  end
end

function bobmods.lib.create_fluid_canister(fluid)
  if
    fluid
    and data.raw["item-subgroup"]["bob-empty-canister"]
    and data.raw["recipe-category"]["barrelling"]
    and data.raw["item-subgroup"]["bob-canister"]
  then
    -- check if a barrel already exists for this fluid if not - create one
    local barrel_item = get_item(fluid.name .. "-barrel")
    if barrel_item then
      barrel_item.icons = generate_fluid_canister_item_icons(fluid)
      barrel_item.localised_name =
        { "item-name.filled-gas-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      barrel_item.subgroup = "bob-canister"
    else
      barrel_item = create_fluid_canister_item(fluid)
    end

    -- check if the barrel has a recipe if not - create one
    local fill_recipe, empty_recipe = get_recipes_for_barrel(fluid.name .. "-barrel")

    if fill_recipe then
      fill_recipe.localised_name =
        { "recipe-name.fill-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      fill_recipe.subgroup = "bob-canister"
      fill_recipe.icons = generate_fill_fluid_canister_icons(fluid)

      bobmods.lib.recipe.replace_ingredient(fill_recipe.name, "barrel", "bob-empty-canister")
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", fill_recipe.name)
      bobmods.lib.tech.remove_recipe_unlock("bob-fluid-barrel-processing", fill_recipe.name)
      if mods["quality"] then
        bobmods.lib.recipe.update_recycling_recipe(barrel_item.name)
      end
    else
      fill_recipe = create_fill_fluid_canister_recipe(fluid)
    end

    if empty_recipe then
      empty_recipe.localised_name =
        { "recipe-name.empty-filled-canister", fluid.localised_name or { "fluid-name." .. fluid.name } }
      empty_recipe.subgroup = "bob-empty-canister"
      empty_recipe.icons = generate_empty_fluid_canister_icons(fluid)

      bobmods.lib.recipe.remove_result(empty_recipe.name, "barrel")
      bobmods.lib.recipe.set_result(empty_recipe.name, { type = "item", name = "bob-empty-canister", amount = 1 })
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", empty_recipe.name)
      bobmods.lib.tech.remove_recipe_unlock("bob-fluid-barrel-processing", empty_recipe.name)
    else
      empty_recipe = create_empty_fluid_canister_recipe(fluid)
    end

    -- add barrel recipe to the unlock list of the technology
    bobmods.lib.tech.add_recipe_unlock("bob-fluid-canister-processing", fill_recipe.name)
    bobmods.lib.tech.add_recipe_unlock("bob-fluid-canister-processing", empty_recipe.name)
  end
end
