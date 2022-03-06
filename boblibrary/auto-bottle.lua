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
    return recipes["fill-" .. name], recipes["empty-" .. name]
  end
  return nil
end

-- Generates the icons definition for a barrel item with the provided name and fluid definition using the provided empty barrel base icon
local function generate_barrel_item_icons(fluid)
  return
  {
    {
      icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png",
      icon_size = 32,
    },
    {
      icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png",
      icon_size = 32,
      tint = fluid.flow_color
    },
    {
      icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png",
      icon_size = 32,
      tint = fluid.base_color
    }
  }
end

-- Generates the icons definition for a fill-barrel recipe with the provided barrel name and fluid definition
local function generate_fill_barrel_icons(fluid)
  local icon = generate_barrel_item_icons(fluid)
  if fluid.icon and fluid.icon_size then
    table.insert(icon, { icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = {4, -8}})
  elseif fluid.icons and util.combine_icons then
    icons = util.combine_icons(icons, fluid.icons, {scale = 0.5, shift = {4, -8}})
  end
  return icon 
end

-- Generates the icons definition for a empty-barrel recipe with the provided barrel name and fluid definition
local function generate_empty_barrel_icons(fluid)
  local icon = generate_barrel_item_icons(fluid)
  if fluid.icon and fluid.icon_size then
    table.insert(icon, {icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = {7, 8}})
  elseif fluid.icons and util.combine_icons then
    icons = util.combine_icons(icons, fluid.icons, {scale = 0.5, shift = {7, 8}})
  end
  return icon 
end

-- If the fill/empty recipes effect production statistics
local hide_barreling_from_production_stats = true
-- If the fill/empty recipes should be included in the list of valid recipes things can use when calculating raw materials
local allow_barreling_decomposition = false



-- Generates a barrel item with the provided name and fluid definition using the provided empty barrel stack size
local function create_barrel_item(fluid)
  local result =
  {
    type = "item",
    name = fluid.name .. "-barrel",
    localised_name = {"item-name.filled-gas-canister", fluid.localised_name or {"fluid-name." .. fluid.name}},
    icons = generate_barrel_item_icons(fluid),
    subgroup = "bob-gas-bottle",
    order = "b[" .. fluid.name .. "-barrel" .. "]",
    stack_size = 10
  }

  data:extend({result})
  return result
end

local function get_or_create_barrel_item(fluid)
  local existing_item = get_item(fluid.name .. "-barrel")
  if existing_item then
    return existing_item
  end

  return create_barrel_item(fluid)
end

-- Creates a recipe to fill the provided barrel item with the provided fluid
local function create_fill_barrel_recipe(fluid)
  local recipe =
  {
    type = "recipe",
    name = "fill-" .. fluid.name .. "-barrel",
    localised_name = {"recipe-name.fill-gas-canister", fluid.localised_name or {"fluid-name." .. fluid.name}},
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 0.2,
    order = "b[fill-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    icons = generate_fill_barrel_icons(fluid),
    ingredients =
    {
      {type = "fluid", name = fluid.name, amount = 50},
      {type = "item", name = "gas-canister", amount = 1},
    },
    results=
    {
      {type = "item", name = fluid.name .. "-barrel", amount = 1}
    },
    hide_from_stats = true,
    allow_decomposition = false
  }

  data:extend({recipe})
  return recipe
end

-- Creates a recipe to empty the provided full barrel item producing the provided fluid
local function create_empty_barrel_recipe(fluid)
  local recipe =
  {
    type = "recipe",
    name = "empty-" .. fluid.name .. "-barrel",
    localised_name = {"recipe-name.empty-filled-gas-canister", fluid.localised_name or {"fluid-name." .. fluid.name}},
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 0.2,
    order = "c[empty-" .. fluid.name .. "-barrel" .. "]",
    enabled = false,
    icons = generate_empty_barrel_icons(fluid),
    ingredients =
    {
      {type = "item", name = fluid.name .. "-barrel", amount = 1}
    },
    results=
    {
      {type = "fluid", name = fluid.name, amount = 50},
      {type = "item", name = "gas-canister", amount = 1}
    },
    hide_from_stats = true,
    allow_decomposition = false
  }

  data:extend({recipe})
  return recipe
end

local function get_or_create_barrel_recipes(fluid)
  local fill_recipe, empty_recipe = get_recipes_for_barrel(fluid.name .. "-barrel")

  if not fill_recipe then
    fill_recipe = create_fill_barrel_recipe(fluid)
  end
  if not empty_recipe then
    empty_recipe = create_empty_barrel_recipe(fluid)
  end

  return fill_recipe, empty_recipe
end


local function get_disabled_reason(fluids, technology, empty_barrel_item)
  if not fluids then
    return "there are no fluids"
  end

  if not technology then
    return "the " .. technology_name .. " technology doesn't exist"
  end

  if not empty_barrel_item then
    return "the " .. empty_barrel_name .. " item doesn't exist"
  end

  if not empty_barrel_item.icon then
    return "the " .. empty_barrel_name .. " item singular-icon definition doesn't exist"
  end
end

function bobmods.lib.create_gas_bottle(fluid)
  if fluid and
    data.raw["item-subgroup"]["bob-empty-gas-bottle"] and
    data.raw["recipe-category"]["air-pump"] and
    data.raw["item-subgroup"]["bob-gas-bottle"] and
    (fluid.icon and fluid.icon_size)
  then
    local barrel_name = fluid.name .. "-barrel"

    -- check if a barrel already exists for this fluid if not - create one
    local barrel_item = get_or_create_barrel_item(fluid)

    -- check if the barrel has a recipe if not - create one
    local barrel_fill_recipe, barrel_empty_recipe = get_or_create_barrel_recipes(fluid)

    -- check if the barrel recipe exists in the unlock list of the technology if not - add it
    bobmods.lib.tech.add_recipe_unlock("gas-canisters", "fill-" .. fluid.name .. "-barrel")
    bobmods.lib.tech.add_recipe_unlock("gas-canisters", "empty-" .. fluid.name .. "-barrel")
  end
end


