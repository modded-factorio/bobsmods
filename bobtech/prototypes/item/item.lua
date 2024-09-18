data:extend({
  {
    type = "tool",
    name = "advanced-logistic-science-pack",
    localised_name = { "item-name.logistic-science-pack" },
    icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
    icon_size = 64,
    subgroup = "science-pack",
    order = "e[advanced-logistic-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
  },
  {
    type = "item",
    name = "lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "g[lab-2]",
    place_result = "lab-2",
    stack_size = 10,
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "tool",
      name = "steam-science-pack",
      icon = "__bobtech__/graphics/icons/steam-science-pack.png",
      icon_size = 32,
      subgroup = "science-pack",
      order = "0[steam-science-pack]",
      stack_size = 200,
      durability = 1,
      durability_description_key = "description.science-pack-remaining-amount-key",
      durability_description_value = "description.science-pack-remaining-amount-value",
    },
    {
      type = "item",
      name = "burner-lab",
      icon = "__bobtech__/graphics/icons/lab-red.png",
      icon_size = 32,
      subgroup = "production-machine",
      order = "g[lab-0]",
      place_result = "burner-lab",
      stack_size = 10,
    },
  })
end

data.raw.tool["logistic-science-pack"].localised_name = { "item-name.transport-science-pack" }
