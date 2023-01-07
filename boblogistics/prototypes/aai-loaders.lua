if mods["aai-loaders"] then
  AAILoaders.make_tier({
    name = "turbo",
    transport_belt = "turbo-transport-belt",
    color = { 180, 89, 255 },
    fluid = "lubricant",
    fluid_per_minute = "0.25",
    technology = {
      prerequisites = {
        "logistics-4",
        "aai-express-loader",
        "utility-science-pack",
        data.raw.item["advanced-processing-unit"] and "advanced-electronics-3" or nil,
      },
      unit = {
        count = 450,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
    recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = {
        { "turbo-transport-belt", 1 },
        { "electric-engine-unit", 5 },
        data.raw.item["advanced-processing-unit"] and { "advanced-processing-unit", 5 } or { "processing-unit", 5 },
        { type = "fluid", name = "lubricant", amount = 50 },
      },
      energy_required = 2,
    },
    unlubricated_recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = {
        { "turbo-transport-belt", 1 },
        { "electric-engine-unit", 50 },
        data.raw.item["advanced-processing-unit"] and { "advanced-processing-unit", 5 } or { "processing-unit", 50 },
        { type = "fluid", name = "lubricant", amount = 500 },
      },
      energy_required = 10,
    },
    upgrade = "aai-ultimate-loader",
    localise = false,
  })
  AAILoaders.make_tier({
    name = "ultimate",
    transport_belt = "ultimate-transport-belt",
    color = { 46, 229, 92 },
    fluid = "lubricant",
    fluid_per_minute = "0.3",
    technology = {
      prerequisites = { "logistics-5", "aai-turbo-loader", "space-science-pack" },
      unit = {
        count = 450,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 60,
      },
    },
    recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = {
        { "ultimate-transport-belt", 1 },
        { "electric-engine-unit", 5 },
        data.raw.item["advanced-processing-unit"] and { "advanced-processing-unit", 5 } or { "processing-unit", 5 },
        { type = "fluid", name = "lubricant", amount = 50 },
      },
      energy_required = 2,
    },
    unlubricated_recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = {
        { "ultimate-transport-belt", 1 },
        { "electric-engine-unit", 50 },
        data.raw.item["advanced-processing-unit"] and { "advanced-processing-unit", 5 } or { "processing-unit", 50 },
        { type = "fluid", name = "lubricant", amount = 500 },
      },
      energy_required = 10,
    },
    localise = false,
  })
  local express_loader = data.raw["loader-1x1"]["aai-express-loader"]
  if express_loader then
    express_loader.next_upgrade = "aai-turbo-loader"
  end
  if settings.startup["bobmods-logistics-beltoverhaulspeed"].value == true then
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-loader", 2)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-fast-loader", 3)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-express-loader", 4)
    else
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-loader", 1)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-fast-loader", 2)
      bobmods.logistics.set_belt_speed("loader-1x1", "aai-express-loader", 3)
    end
  end
end
