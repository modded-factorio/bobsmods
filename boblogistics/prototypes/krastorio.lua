if mods["Krastorio2"] and settings.startup["kr-loaders"].value == true then
  -- Unlike AAI Loaders, Krastorio doesn't currently have any easy to use API
  -- for defining its loaders, so we have to make our own
  local function create_krastorio_loader(opts)
    local name = opts.name
    local tier = opts.tier
    local icon = opts.icon
    local icon_size = opts.icon_size or 64
    local tint = { r = opts.tint[1] / 255, g = opts.tint[2] / 255, b = opts.tint[3] / 255, a = 1 }
    local speed = opts.speed
    local belt_animation_set = opts.belt_animation_set
    local upgrade = opts.upgrade or nil
    local recipe_enabled = opts.recipe_enabled or false
    local ingredients = opts.ingredients

    local item = {
      type = "item",
      name = name,
      icon = icon,
      icon_size = icon_size,
      subgroup = "bob-logistic-tier-" .. tier,
      order = "d[loader]-1[" .. name .. "]",
      place_result = name,
      stack_size = 50,
    }

    local recipe = {
      type = "recipe",
      enabled = recipe_enabled,
      name = name,
      result = name,
      ingredients = ingredients,
      energy_required = 2,
    }

    local entity = util.merge({
      data.raw["loader-1x1"]["kr-loader"],
      {
        name = name,
        icon = icon,
        icon_size = icon_size,
        minable = { result = name },
        placeable_by = { item = name },
        belt_animation_set = belt_animation_set,
        speed = speed,
        structure = {
          direction_in = {
            sheets = {
              [2] = {
                tint = tint,
                hr_version = {
                  tint = tint,
                },
              },
            },
          },
          direction_out = {
            sheets = {
              [2] = {
                tint = tint,
                hr_version = {
                  tint = tint,
                },
              },
            },
          },
        },
      },
    })
    entity.next_upgrade = upgrade

    return { item, entity, recipe }
  end

  -- Unlike AAI Loaders, Krastorio loaders only use electricity and are unlocked
  -- by the same research as the belt tier, so it doesn't make as much sense to add
  -- basic loaders to Krastorio as it does to AAI (which need Lubricant or Steam to operate)

  data:extend(create_krastorio_loader({
    name = "kr-turbo-loader",
    tier = 4,
    -- Just reuse Krastorio's green loader icons for now
    icon = data.raw.item["kr-superior-loader"].icon,
    icon_size = data.raw.item["kr-superior-loader"].icon_size,
    speed = data.raw["transport-belt"]["turbo-transport-belt"].speed,
    belt_animation_set = data.raw["transport-belt"]["turbo-transport-belt"].belt_animation_set,
    upgrade = "kr-ultimate-loader",
    tint = { 180, 89, 255 },
    ingredients = {
      { "turbo-transport-belt", 1 },
      { "kr-express-loader", 2 },
      { "rare-metals", 10 },
    },
  }))

  data:extend(create_krastorio_loader({
    name = "kr-ultimate-loader",
    tier = 5,
    -- Just reuse Krastorio's purple loader icons for now
    icon = data.raw.item["kr-advanced-loader"].icon,
    icon_size = data.raw.item["kr-advanced-loader"].icon_size,
    speed = data.raw["transport-belt"]["ultimate-transport-belt"].speed,
    belt_animation_set = data.raw["transport-belt"]["ultimate-transport-belt"].belt_animation_set,
    tint = { 180, 89, 255 },
    ingredients = {
      { "ultimate-transport-belt", 1 },
      { "kr-turbo-loader", 2 },
      { "imersium-gear-wheel", 10 },
    },
  }))

  bobmods.lib.tech.add_recipe_unlock("logistics-4", "kr-turbo-loader")
  bobmods.lib.tech.add_recipe_unlock("logistics-5", "kr-ultimate-loader")
end
