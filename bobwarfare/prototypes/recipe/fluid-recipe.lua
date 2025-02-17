if data.raw.fluid["bob-nitric-acid"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-sulfuric-nitric-acid",
      category = "chemistry",
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        { type = "fluid", name = "sulfuric-acid", amount = 10 },
        { type = "fluid", name = "bob-nitric-acid", amount = 10 },
      },
      results = {
        { type = "fluid", name = "bob-sulfuric-nitric-acid", amount = 20 },
      },
      subgroup = "fluid-recipes",
      icon = "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png",
      icon_size = 32,
      order = "b[fluid-chemistry]-b[sulfuric-nitric-acid]",
    },
  })
end

data:extend({
  {
    type = "recipe",
    name = "bob-glycerol",
    category = "chemistry",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "fluid", name = "light-oil", amount = 10 },
    },
    results = {
      { type = "fluid", name = "bob-glycerol", amount = 10 },
    },
    subgroup = "fluid-recipes",
    icon = "__bobwarfare__/graphics/icons/glycerol.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[glycerol]",
  },

  {
    type = "recipe",
    name = "bob-nitroglycerin",
    category = "chemistry",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
      { type = "fluid", name = "bob-glycerol", amount = 10 },
      { type = "fluid", name = "sulfuric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "bob-nitroglycerin", amount = 10 },
    },
    subgroup = "fluid-recipes",
    icon = "__bobwarfare__/graphics/icons/nitroglycerin.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[nitroglycerin]",
  },
})
