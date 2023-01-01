if
  data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-green"]
  and data.raw.item["alien-artifact-red"]
then
  data:extend({
    {
      type = "recipe",
      name = "alien-blue-alloy",
      category = "mixing-furnace",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-blue", amount = 1 },
        { type = "item", name = "tungsten-plate", amount = 10 },
      },
      result = "alien-blue-alloy",
      result_count = 10,
      crafting_machine_tint = {
        primary = { r = 0.0, g = 0.8, b = 0.0, a = 0.000 },
        secondary = { r = 0.5, g = 1.0, b = 0.5, a = 0.000 },
        tertiary = { r = 0.25, g = 0.5, b = 0.25, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "alien-orange-alloy",
      category = "mixing-furnace",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-orange", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
      },
      result = "alien-orange-alloy",
      result_count = 10,
      crafting_machine_tint = {
        primary = { r = 0.8, g = 0.4, b = 0.0, a = 0.000 },
        secondary = { r = 1.0, g = 0.6, b = 0.5, a = 0.000 },
        tertiary = { r = 0.9, g = 0.5, b = 0.25, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "alien-acid",
      category = "chemistry",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-purple", amount = 1 },
        { type = "fluid", name = "sulfuric-acid", amount = 100 },
      },
      results = {
        { type = "fluid", name = "alien-acid", amount = 100 },
      },
      main_product = "alien-acid",
      crafting_machine_tint = {
        primary = { r = 0.4, g = 0.0, b = 0.8, a = 0.000 },
        secondary = { r = 0.6, g = 0.5, b = 1.000, a = 0.000 },
        tertiary = { r = 0.5, g = 0.25, b = 0.9, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "alien-explosive",
      category = "chemistry",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-yellow", amount = 1 },
        { type = "item", name = "coal", amount = 6 },
        { type = "item", name = "sulfur", amount = 6 },
      },
      results = {
        { type = "fluid", name = "alien-explosive", amount = 100 },
      },
      main_product = "alien-explosive",
      crafting_machine_tint = {
        primary = { r = 0.8, g = 0.8, b = 0.0, a = 0.000 },
        secondary = { r = 1.0, g = 1.0, b = 0.5, a = 0.000 },
        tertiary = { r = 0.9, g = 0.9, b = 0.25, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "alien-poison",
      category = "chemistry",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-green", amount = 1 },
        { type = "item", name = "coal", amount = 6 },
        { type = "fluid", name = "nitric-acid", amount = 60 },
      },
      results = {
        { type = "fluid", name = "alien-poison", amount = 100 },
      },
      main_product = "alien-poison",
      crafting_machine_tint = {
        primary = { r = 0.0, g = 0.8, b = 0.0, a = 0.000 },
        secondary = { r = 0.5, g = 1.0, b = 0.5, a = 0.000 },
        tertiary = { r = 0.25, g = 0.9, b = 0.25, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "alien-fire",
      category = "chemistry",
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = "item", name = "alien-artifact-red", amount = 1 },
        { type = "fluid", name = "heavy-oil", amount = 60 },
        { type = "fluid", name = "light-oil", amount = 60 },
      },
      results = {
        { type = "fluid", name = "alien-fire", amount = 100 },
      },
      main_product = "alien-fire",
      crafting_machine_tint = {
        primary = { r = 0.8, g = 0.0, b = 0.0, a = 0.000 },
        secondary = { r = 1.0, g = 0.5, b = 0.5, a = 0.000 },
        tertiary = { r = 0.9, g = 0.25, b = 0.25, a = 0.000 },
      },
    },
  })
end
