if data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then

data:extend(
{
  {
    type = "fluid",
    name = "ammonia",
    icon = "__bobrevamp__/graphics/icons/ammonia.png",
    icon_size = 64,
    order = "a[fluid]-g[ammonia]",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.5, g=0.5, b=1.0},
    flow_color = {r=0.5, g=0.5, b=1.0},
    gas_temperature = -34
  },

  {
    type = "fluid",
    name = "dinitrogen-tetroxide",
    icon = "__bobrevamp__/graphics/icons/dinitrogen-tetroxide.png",
    icon_size = 64,
    order = "a[fluid]-g[dinitrogen-tetroxide]",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.3},
    flow_color = {r=0.3, g=0.3, b=0.7},
    gas_temperature = 21,
  },

  {
    type = "fluid",
    name = "hydrazine",
    icon = "__bobrevamp__/graphics/icons/hydrazine.png",
    icon_size = 64,
    order = "a[fluid]-g[hydrazine]",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=1.0},
    flow_color = {r=0.3, g=0.3, b=0.0},
    gas_temperature = 114,
    emissions_multiplier = 1.2,
    fuel_value = "340kJ", --"190kJ", --"380KJ", --halved for 0.17. increased by 80% for changes to hydrazine generator.
  },

  {
    type = "fluid",
    name = "hydrogen-peroxide",
    icon = "__bobrevamp__/graphics/icons/hydrogen-peroxide.png",
    icon_size = 64,
    order = "a[fluid]-g[hydrogen-peroxide]",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.5, b=1.0},
    flow_color = {r=0.7, g=0.7, b=0.7},
    gas_temperature = 150,
  },
}
)


if not data.raw.fluid["nitrogen-dioxide"] then
data:extend(
{
  {
    type = "fluid",
    name = "nitrogen-dioxide",
    icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
    icon_size = 64,
    order = "a[fluid]-g[nitrogen-dioxide]",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.0, b=1.0},
    flow_color = {r=0.8, g=0.0, b=1.0},
    gas_temperature = -12
  },
}
)
end




data:extend(
{
  {
    type = "recipe",
    name = "ammonia",
    icon = "__bobrevamp__/graphics/icons/ammonia.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[ammonia]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "nitrogen", amount = 10},
      {type = "fluid", name = "hydrogen", amount = 24}
    },
    results =
    {
      {type = "fluid", name = "ammonia", amount = 20},
    },
    main_product = "ammonia",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.5, g = 0.5, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "hydrogen-peroxide",
    icon = "__bobrevamp__/graphics/icons/hydrogen-peroxide.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[hydrogen-peroxide]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "hydrogen", amount = 16},
      {type = "fluid", name = "oxygen", amount = 20},
    },
    results =
    {
      {type = "fluid", name = "hydrogen-peroxide", amount = 8},
    },
    main_product = "hydrogen-peroxide",
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      secondary = {r = 0.8, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.5, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "hydrazine",
    icon = "__bobrevamp__/graphics/icons/hydrazine.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[hydrazine]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "ammonia", amount = 20},
      {type = "fluid", name = "hydrogen-peroxide", amount = 4},
    },
    results =
    {
      {type = "fluid", name = "hydrazine", amount = 8},
      {type = "fluid", name = "water", amount = 4, catalyst_amount = 4},
    },
    main_product = "hydrazine",
    crafting_machine_tint =
    {
      primary = {r = 0.5, g = 0.5, b = 1.0, a = 0.000},
      secondary = {r = 0.0, g = 0.5, b = 1.0, a = 0.000},
      tertiary = {r = 0.7, g = 0.7, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "nitrogen-dioxide",
    icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[nitrogen-dioxide]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "nitrogen", amount = 10},
      {type = "fluid", name = "oxygen", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 20},
    },
    main_product = "nitrogen-dioxide",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.8, g = 0.0, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "dinitrogen-tetroxide",
    icon = "__bobrevamp__/graphics/icons/dinitrogen-tetroxide.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[dinitrogen-tetroxide]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 20},
    },
    results =
    {
      {type = "fluid", name = "dinitrogen-tetroxide", amount = 8},
    },
    main_product = "dinitrogen-tetroxide",
    crafting_machine_tint =
    {
      primary = {r = 0.8, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.7, g = 0.7, b = 0.3, a = 0.000},
    },
  },
}
)

if bobmods.plates.make_void_fluid_recipe then
  bobmods.plates.make_void_fluid_recipe("ammonia", 25, 15)
end

if settings.startup["bobmods-revamp-hardmode"].value == true then
data:extend(
{
  {
    type = "fluid",
    name = "nitric-oxide",
    icon = "__bobrevamp__/graphics/icons/nitric-oxide.png",
    icon_size = 64,
    order = "a[fluid]-g[nitric-oxide]",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=1.0, g=0.0, b=1.0},
    flow_color = {r=1.0, g=0.2, b=1.0},
    gas_temperature = -152
  },

  {
    type = "recipe",
    name = "nitric-oxide",
    icon = "__bobrevamp__/graphics/icons/nitric-oxide.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[nitric-oxide]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "ammonia", amount = 20},
      {type = "fluid", name = "oxygen", amount = 25},
    },
    results =
    {
      {type = "fluid", name = "nitric-oxide", amount = 20},
      {type = "fluid", name = "water", amount = 12, catalyst_amount = 12},
    },
    main_product = "nitric-oxide",
    crafting_machine_tint =
    {
      primary = {r = 0.5, g = 0.5, b = 1.0, a = 0.000},
      secondary = {r = 0.8, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 1.0, g = 0.0, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "nitrogen-dioxide",
    icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-b[nitrogen-dioxide]",
    energy_required = 1,
    category = "chemistry",
    subgroup = "bob-fluid",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "nitric-oxide", amount = 20},
      {type = "fluid", name = "oxygen", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 20},
    },
    main_product = "nitrogen-dioxide",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.8, g = 0.0, b = 1.0, a = 0.000},
    },
  },
}
)
end



if data.raw.item["enriched-fuel"] then
data:extend(
{
  {
    type = "recipe",
    name = "enriched-fuel-from-hydrazine",
    category = "chemistry",
    normal =
    {
      enabled = false,
      energy_required = 12,
      ingredients =
      {
        {type = "fluid", name = "hydrazine", amount = 100},
        {"solid-fuel",1}
      },
      result = "enriched-fuel",
    },
    expensive =
    {
      enabled = false,
      energy_required = 12,
      ingredients =
      {
        {type = "fluid", name = "hydrazine", amount = 150},
        {"solid-fuel",1}
      },
      result = "enriched-fuel",
    },
    subgroup = "bob-resource-chemical",
    order = "d[enriched-fuel]",
    crafting_machine_tint =
    {
      primary = {r = 0.9, g = 0.9, b = 0.9, a = 0.000},
      secondary = {r = 0.8, g = 0.8, b = 0.8, a = 0.000},
      tertiary = {r = 1.0, g = 1.0, b = 1.0, a = 0.000},
    },
  },
}
)
end


data:extend(
{
  {
    type = "technology",
    name = "hydrazine",
    icon = "__bobrevamp__/graphics/icons/technology/hydrazine.png",
    icon_size = 128,
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hydrazine"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrogen-peroxide"
      },
    },
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "d-b-b6"
  },
  {
    type = "technology",
    name = "rocket-fuel",
    icon = "__base__/graphics/technology/rocket-fuel.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites =
    {
      "flammables",
      "hydrazine",
      "chemical-science-pack"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "dinitrogen-tetroxide"
      },
    },
    unit =
    {
      count = 300,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "k-a"
  },
}
)

end



