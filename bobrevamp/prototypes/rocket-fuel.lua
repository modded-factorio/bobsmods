if data.raw.fluid["bob-hydrogen"] and data.raw.fluid["bob-oxygen"] and data.raw.fluid["bob-nitrogen"] then
  data:extend({
    {
      type = "fluid",
      name = "bob-ammonia",
      icon = "__bobrevamp__/graphics/icons/ammonia.png",
      icon_size = 64,
      subgroup = "fluid",
      order = "a[fluid]-g[ammonia]",
      default_temperature = 15,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.5, g = 0.5, b = 1.0 },
      flow_color = { r = 0.5, g = 0.5, b = 1.0 },
      gas_temperature = -34,
    },

    {
      type = "fluid",
      name = "bob-dinitrogen-tetroxide",
      icon = "__bobrevamp__/graphics/icons/dinitrogen-tetroxide.png",
      icon_size = 64,
      subgroup = "fluid",
      order = "a[fluid]-g[dinitrogen-tetroxide]",
      default_temperature = 15,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.7, g = 0.7, b = 0.3 },
      flow_color = { r = 0.3, g = 0.3, b = 0.7 },
      gas_temperature = 21,
    },

    {
      type = "fluid",
      name = "bob-hydrazine",
      icon = "__bobrevamp__/graphics/icons/hydrazine.png",
      icon_size = 64,
      subgroup = "fluid",
      order = "a[fluid]-g[hydrazine]",
      default_temperature = 15,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.7, g = 0.7, b = 1.0 },
      flow_color = { r = 0.3, g = 0.3, b = 0.0 },
      gas_temperature = 114,
      emissions_multiplier = 1.2,
      fuel_value = "340kJ", --"190kJ", --"380kJ", --halved for 0.17. increased by 80% for changes to hydrazine generator.
    },

    {
      type = "fluid",
      name = "bob-hydrogen-peroxide",
      icon = "__bobrevamp__/graphics/icons/hydrogen-peroxide.png",
      icon_size = 64,
      subgroup = "fluid",
      order = "a[fluid]-g[hydrogen-peroxide]",
      default_temperature = 15,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.0, g = 0.5, b = 1.0 },
      flow_color = { r = 0.7, g = 0.7, b = 0.7 },
      gas_temperature = 150,
    },
  })

  if not data.raw.fluid["bob-nitrogen-dioxide"] then
    data:extend({
      {
        type = "fluid",
        name = "bob-nitrogen-dioxide",
        icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
        icon_size = 64,
        subgroup = "fluid",
        order = "a[fluid]-g[bob-nitrogen-dioxide]",
        default_temperature = 25,
        max_temperature = 100,
        heat_capacity = "1kJ",
        base_color = { r = 0.8, g = 0.0, b = 1.0 },
        flow_color = { r = 0.8, g = 0.0, b = 1.0 },
        gas_temperature = -12,
      },
    })
  end

  data:extend({
    {
      type = "recipe",
      name = "bob-ammonia",
      icon = "__bobrevamp__/graphics/icons/ammonia.png",
      icon_size = 64,
      order = "b[fluid-chemistry]-b[ammonia]",
      energy_required = 1,
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      ingredients = {
        { type = "fluid", name = "bob-nitrogen", amount = 10 },
        { type = "fluid", name = "bob-hydrogen", amount = 24 },
      },
      results = {
        { type = "fluid", name = "bob-ammonia", amount = 20 },
      },
      main_product = "bob-ammonia",
      crafting_machine_tint = {
        primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
        secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        tertiary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "bob-hydrogen-peroxide",
      icon = "__bobrevamp__/graphics/icons/hydrogen-peroxide.png",
      icon_size = 64,
      order = "b[fluid-chemistry]-b[hydrogen-peroxide]",
      energy_required = 1,
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      ingredients = {
        { type = "fluid", name = "bob-hydrogen", amount = 16 },
        { type = "fluid", name = "bob-oxygen", amount = 20 },
      },
      results = {
        { type = "fluid", name = "bob-hydrogen-peroxide", amount = 8 },
      },
      main_product = "bob-hydrogen-peroxide",
      crafting_machine_tint = {
        primary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        secondary = { r = 0.8, g = 0.0, b = 0.0, a = 0.000 },
        tertiary = { r = 0.0, g = 0.5, b = 1.0, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "bob-hydrazine",
      icon = "__bobrevamp__/graphics/icons/hydrazine.png",
      icon_size = 64,
      order = "b[fluid-chemistry]-b[hydrazine]",
      energy_required = 1,
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      ingredients = {
        { type = "fluid", name = "bob-ammonia", amount = 20 },
        { type = "fluid", name = "bob-hydrogen-peroxide", amount = 4 },
      },
      results = {
        { type = "fluid", name = "bob-hydrazine", amount = 8 },
        { type = "fluid", name = "water", amount = 4 },
      },
      main_product = "bob-hydrazine",
      crafting_machine_tint = {
        primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
        secondary = { r = 0.0, g = 0.5, b = 1.0, a = 0.000 },
        tertiary = { r = 0.7, g = 0.7, b = 1.0, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "bob-nitrogen-dioxide",
      icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
      icon_size = 64,
      order = "b[fluid-chemistry]-b[bob-nitrogen-dioxide]",
      energy_required = 1,
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      ingredients = {
        { type = "fluid", name = "bob-nitrogen", amount = 10 },
        { type = "fluid", name = "bob-oxygen", amount = 20 },
      },
      results = {
        { type = "fluid", name = "bob-nitrogen-dioxide", amount = 20 },
      },
      main_product = "bob-nitrogen-dioxide",
      crafting_machine_tint = {
        primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
        secondary = { r = 0.7, g = 0.0, b = 0.0, a = 0.000 },
        tertiary = { r = 0.8, g = 0.0, b = 1.0, a = 0.000 },
      },
    },

    {
      type = "recipe",
      name = "bob-dinitrogen-tetroxide",
      icon = "__bobrevamp__/graphics/icons/dinitrogen-tetroxide.png",
      icon_size = 64,
      order = "b[fluid-chemistry]-b[dinitrogen-tetroxide]",
      energy_required = 1,
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      ingredients = {
        { type = "fluid", name = "bob-nitrogen-dioxide", amount = 20 },
      },
      results = {
        { type = "fluid", name = "bob-dinitrogen-tetroxide", amount = 8 },
      },
      main_product = "bob-dinitrogen-tetroxide",
      crafting_machine_tint = {
        primary = { r = 0.8, g = 0.0, b = 1.0, a = 0.000 },
        secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        tertiary = { r = 0.7, g = 0.7, b = 0.3, a = 0.000 },
      },
    },
  })

  if bobmods.plates.make_void_fluid_recipe then
    bobmods.plates.make_void_fluid_recipe("bob-ammonia", 25, 15)
  end

  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data:extend({
      {
        type = "fluid",
        name = "bob-nitric-oxide",
        icon = "__bobrevamp__/graphics/icons/nitric-oxide.png",
        icon_size = 64,
        subgroup = "fluid",
        order = "a[fluid]-g[nitric-oxide]",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "1kJ",
        base_color = { r = 1.0, g = 0.0, b = 1.0 },
        flow_color = { r = 1.0, g = 0.2, b = 1.0 },
        gas_temperature = -152,
      },

      {
        type = "recipe",
        name = "bob-nitric-oxide",
        icon = "__bobrevamp__/graphics/icons/nitric-oxide.png",
        icon_size = 64,
        order = "b[fluid-chemistry]-b[nitric-oxide]",
        energy_required = 1,
        category = "chemistry",
        subgroup = "fluid-recipes",
        enabled = false,
        ingredients = {
          { type = "fluid", name = "bob-ammonia", amount = 20 },
          { type = "fluid", name = "bob-oxygen", amount = 25 },
        },
        results = {
          { type = "fluid", name = "bob-nitric-oxide", amount = 20 },
          { type = "fluid", name = "water", amount = 12 },
        },
        main_product = "bob-nitric-oxide",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          secondary = { r = 0.8, g = 0.0, b = 0.0, a = 0.000 },
          tertiary = { r = 1.0, g = 0.0, b = 1.0, a = 0.000 },
        },
      },

      {
        type = "recipe",
        name = "bob-nitrogen-dioxide",
        icon = "__bobrevamp__/graphics/icons/nitrogen-dioxide.png",
        icon_size = 64,
        order = "b[fluid-chemistry]-b[bob-nitrogen-dioxide]",
        energy_required = 1,
        category = "chemistry",
        subgroup = "fluid-recipes",
        enabled = false,
        ingredients = {
          { type = "fluid", name = "bob-nitric-oxide", amount = 20 },
          { type = "fluid", name = "bob-oxygen", amount = 10 },
        },
        results = {
          { type = "fluid", name = "bob-nitrogen-dioxide", amount = 20 },
        },
        main_product = "bob-nitrogen-dioxide",
        crafting_machine_tint = {
          primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
          secondary = { r = 0.7, g = 0.0, b = 0.0, a = 0.000 },
          tertiary = { r = 0.8, g = 0.0, b = 1.0, a = 0.000 },
        },
      },
    })
  end

  if data.raw.item["bob-enriched-fuel"] then
    data:extend({
      {
        type = "recipe",
        name = "bob-enriched-fuel-from-hydrazine",
        category = "chemistry",
        enabled = false,
        energy_required = 12,
        ingredients = {
          { type = "fluid", name = "bob-hydrazine", amount = 100 },
          { type = "item", name = "solid-fuel", amount = 1 },
        },
        results = { { type = "item", name = "bob-enriched-fuel", amount = 1 } },
        subgroup = "bob-chemical-fuels",
        order = "d[bob-enriched-fuel]-2",
        crafting_machine_tint = {
          primary = { r = 0.9, g = 0.9, b = 0.9, a = 0.000 },
          secondary = { r = 0.8, g = 0.8, b = 0.8, a = 0.000 },
          tertiary = { r = 1.0, g = 1.0, b = 1.0, a = 0.000 },
        },
      },
    })
  end

  data:extend({
    {
      type = "technology",
      name = "bob-hydrazine",
      icon = "__bobrevamp__/graphics/icons/technology/hydrazine.png",
      icon_size = 128,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-hydrazine",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-hydrogen-peroxide",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-b-b6",
    },
  })

  if data.raw.recipe["rocket-fuel"] then
    data.raw.recipe["rocket-fuel"].auto_recycle = false
  end
end
