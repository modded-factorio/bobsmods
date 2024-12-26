if data.raw.fluid["nitric-acid"] then
  data:extend({
    {
      type = "recipe",
      name = "sulfuric-nitric-acid",
      category = "chemistry",
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        { type = "fluid", name = "sulfuric-acid", amount = 10 },
        { type = "fluid", name = "nitric-acid", amount = 10 },
      },
      results = {
        { type = "fluid", name = "sulfuric-nitric-acid", amount = 20 },
      },
      subgroup = "fluid",
      icon = "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png",
      icon_size = 32,
      order = "b[fluid-chemistry]-b[sulfuric-nitric-acid]",
    },
  })
end

data:extend({
  {
    type = "recipe",
    name = "glycerol",
    category = "chemistry",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "fluid", name = "light-oil", amount = 10 },
    },
    results = {
      { type = "fluid", name = "glycerol", amount = 10 },
    },
    subgroup = "fluid",
    icon = "__bobwarfare__/graphics/icons/glycerol.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[glycerol]",
  },

  {
    type = "recipe",
    name = "nitroglycerin",
    category = "chemistry",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
      { type = "fluid", name = "glycerol", amount = 10 },
      { type = "fluid", name = "sulfuric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "nitroglycerin", amount = 10 },
    },
    subgroup = "fluid",
    icon = "__bobwarfare__/graphics/icons/nitroglycerin.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[nitroglycerin]",
  },
})

if data.raw["item-subgroup"]["bob-fluid"] then
  if data.raw.recipe["sulfuric-nitric-acid"] then
    data.raw.recipe["sulfuric-nitric-acid"].subgroup = "bob-fluid"
    data.raw.fluid["sulfuric-nitric-acid"].subgroup = "bob-fluid"
  end
  data.raw.recipe["glycerol"].subgroup = "bob-fluid"
  data.raw.recipe["nitroglycerin"].subgroup = "bob-fluid"
  data.raw.fluid["glycerol"].subgroup = "bob-fluid"
  data.raw.fluid["nitroglycerin"].subgroup = "bob-fluid"
end
