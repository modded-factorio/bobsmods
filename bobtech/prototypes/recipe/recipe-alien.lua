if
  data.raw.item["alien-artifact"]
  and data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-green"]
  and data.raw.item["alien-artifact-red"]
then
  data:extend({
    {
      type = "recipe",
      name = "science-pack-gold",
      enabled = false,
      energy_required = 30,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
      },
      results = { { type = "item", name = "science-pack-gold", amount = 1 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-blue",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-blue", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-blue", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-orange",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-orange", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-orange", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-purple",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-purple", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-purple", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-yellow",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-yellow", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-yellow", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-green",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-green", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-green", amount = 10 } },
    },
    {
      type = "recipe",
      name = "alien-science-pack-red",
      enabled = false,
      energy_required = 12,
      ingredients = {
        { type = "item", name = "alien-artifact-red", amount = 1 },
      },
      results = { { type = "item", name = "alien-science-pack-red", amount = 10 } },
    },

    {
      type = "recipe",
      name = "lab-alien",
      enabled = false,
      energy_required = 15,
      ingredients = {
        { type = "item", name = "lab", amount = 1 },
        { type = "item", name = "alien-artifact", amount = 10 },
        { type = "item", name = "alien-artifact-blue", amount = 5 },
        { type = "item", name = "alien-artifact-orange", amount = 5 },
      },
      results = { { type = "item", name = "lab-alien", amount = 1 } },
    },
  })
end
