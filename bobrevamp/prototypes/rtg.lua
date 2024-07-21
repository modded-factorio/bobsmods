if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value == true then
  data:extend({
    {
      type = "item",
      name = "sodium-carbonate",
      icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-chlorate]",
      stack_size = 100,
    },
  })

  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data:extend({
      {
        type = "fluid",
        name = "brine",
        icon = "__bobrevamp__/graphics/icons/brine.png",
        icon_size = 32,
        order = "a[fluid]-a[brine]",
        default_temperature = 15,
        max_temperature = 100,
        gas_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = { r = 0.5, g = 0.5, b = 0.8 },
        flow_color = { r = 1.0, g = 1.0, b = 1.0 },
      },
      {
        type = "fluid",
        name = "ammoniated-brine",
        icons = {
          {
            icon = "__bobrevamp__/graphics/icons/brine.png",
            icon_size = 32,
          },
          {
            icon = "__bobrevamp__/graphics/icons/ammonia.png",
            icon_size = 64,
            scale = 0.25,
            shift = { 0, 5 },
          },
        },
        order = "a[fluid]-a[brine]",
        default_temperature = 15,
        max_temperature = 100,
        gas_temperature = 100,
        heat_capacity = "0.2KJ",
        base_color = { r = 0.5, g = 0.5, b = 0.8 },
        flow_color = { r = 1.0, g = 1.0, b = 1.0 },
      },

      {
        type = "item",
        name = "sodium-bicarbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-bicarbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-chlorate]",
        stack_size = 100,
      },
      {
        type = "item",
        name = "ammonium-chloride",
        icon = "__bobrevamp__/graphics/icons/ammonium-chloride.png",
        icon_size = 64,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-chlorate]",
        stack_size = 100,
      },

      {
        type = "recipe",
        name = "brine",
        subgroup = "bob-fluid",
        order = "f[brine]",
        category = "chemistry",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
          { type = "item", name = "salt", amount = 1 },
          { type = "fluid", name = "water", amount = 10 },
        },
        results = {
          { type = "fluid", name = "brine", amount = 10 },
        },
        main_product = "brine",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          secondary = { r = 0.5, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.8, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "ammoniated-brine",
        subgroup = "bob-fluid",
        order = "f[ammoniated-brine]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "brine", amount = 10 },
          { type = "fluid", name = "ammonia", amount = 25 },
        },
        results = {
          { type = "fluid", name = "ammoniated-brine", amount = 10 },
        },
        main_product = "ammoniated-brine",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          secondary = { r = 0.5, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.8, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "sodium-bicarbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-bicarbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-bicarbonate]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "ammoniated-brine", amount = 10 },
          { type = "fluid", name = "carbon-dioxide", amount = 25 },
        },
        results = {
          { type = "item", name = "sodium-bicarbonate", amount = 1 },
          { type = "item", name = "ammonium-chloride", amount = 1, catalyst_amount = 1 },
        },
        main_product = "sodium-bicarbonate",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.4, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "sodium-carbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-carbonate]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "item", name = "sodium-bicarbonate", amount = 2 },
        },
        results = {
          { type = "item", name = "sodium-carbonate", amount = 1 },
          { type = "fluid", name = "water", amount = 10, fluidbox_index = 1, catalyst_amount = 10 },
          { type = "fluid", name = "carbon-dioxide", amount = 25, fluidbox_index = 2 },
        },
        main_product = "sodium-carbonate",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.0, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.8, g = 0.4, b = 0.4, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "ammonium-chloride-recycling",
        icon = "__bobrevamp__/graphics/icons/ammonium-chloride-recycling.png",
        icon_size = 64,
        subgroup = "bob-resource-chemical",
        order = "f[ammonium-chloride-recycling]",
        category = "chemistry",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "ammonium-chloride", amount = 2 },
          { type = "item", name = "limestone", amount = 1 },
        },
        results = {
          { type = "item", name = "calcium-chloride", amount = 1 },
          { type = "fluid", name = "ammonia", amount = 50 },
          { type = "fluid", name = "water", amount = 10 },
        },
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          tertiary = { r = 0.0, g = 0.5, b = 0.8, a = 0.000 },
        },
      },

      {
        type = "recipe",
        name = "brine-electrolysis",
        icon = "__bobrevamp__/graphics/icons/brine-electrolysis.png",
        icon_size = 64,
        subgroup = "bob-fluid-electrolysis",
        order = "b[fluid-chemistry]-b[salt-water-electrolysis]",
        category = "electrolysis",
        enabled = false,
        energy_required = 1.5,
        ingredients = {
          { type = "fluid", name = "brine", amount = 10 },
        },
        results = {
          { type = "item", name = "sodium-hydroxide", amount = 1 },
          { type = "fluid", name = "chlorine", amount = 25 },
          { type = "fluid", name = "hydrogen", amount = 20 },
        },
        allow_decomposition = false,
      },
    })
  else
    data:extend({
      {
        type = "recipe",
        name = "sodium-carbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-carbonate]",
        category = "chemistry",
        energy_required = 5,
        enabled = false,
        ingredients = {
          { type = "item", name = "salt", amount = 2 },
          { type = "item", name = "stone", amount = 1 },
        },
        results = {
          { type = "item", name = "sodium-carbonate", amount = 1 },
          { type = "item", name = "calcium-chloride", amount = 1 },
        },
        main_product = "sodium-carbonate",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.4, a = 0.000 },
        },
      },
    })
  end

  data:extend({
    {
      type = "item",
      name = "sodium-cobaltate",
      icon = "__bobrevamp__/graphics/icons/sodium-cobaltate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-chlorate]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "rtg",
      icon = "__bobrevamp__/graphics/icons/technology/rtg.png",
      icon_size = 128,
      subgroup = "bob-intermediates",
      order = "f[rtg]",
      stack_size = 50,
    },
    {
      type = "recipe",
      name = "sodium-cobaltate",
      icon = "__bobrevamp__/graphics/icons/sodium-cobaltate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-cobaltate]",
      category = "chemistry",
      energy_required = 12,
      enabled = false,
      ingredients = {
        { type = "item", name = "sodium-carbonate", amount = 6 },
        { type = "item", name = "cobalt-oxide", amount = 5 },
      },
      results = {
        { type = "item", name = "sodium-cobaltate", amount = 5 },
        { type = "fluid", name = "oxygen", amount = 200, catalyst_amount = 200 },
      },
      main_product = "sodium-cobaltate",
      crafting_machine_tint = {
        primary = { r = 0.3, g = 0.5, b = 1.0, a = 0.000 },
        secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        tertiary = { r = 0.8, g = 0.4, b = 0.4, a = 0.000 },
      },
    },
    {
      type = "recipe",
      name = "rtg",
      category = "crafting-machine",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { type = "item", name = "plutonium-239", amount = 1 },
        { type = "item", name = "lead-plate", amount = 1 },
        { type = "item", name = "aluminium-plate", amount = 5 },
        { type = "item", name = "sodium-cobaltate", amount = 2 },
      },
      results = {{ type = "item", name = "rtg", amount = 1 }},
    },
  })

  if bobmods.plates.make_void_fluid_recipe then
    bobmods.plates.make_void_fluid_recipe("carbon-dioxide", 25, 10)
  end

  data:extend({
    {
      type = "technology",
      name = "rtg",
      icon = "__bobrevamp__/graphics/icons/technology/rtg.png",
      icon_size = 128,
      prerequisites = {
        "nitrogen-processing",
        "cobalt-processing",
        "aluminium-processing",
        "nuclear-fuel-reprocessing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sodium-carbonate",
        },
        {
          type = "unlock-recipe",
          recipe = "sodium-cobaltate",
        },
        {
          type = "unlock-recipe",
          recipe = "rtg",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-b-b6",
    },
  })
end
