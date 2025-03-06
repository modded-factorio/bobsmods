if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value == true then
  local powder_drop_move = {
    filename = "__base__/sound/item/sulfur-inventory-move.ogg",
    volume = 0.7,
    speed = 1.3,
  }
  local powder_pick = {
    filename = "__base__/sound/item/landfill-inventory-pickup.ogg",
    volume = 0.6,
    speed = 1.2,
  }

  data:extend({
    {
      type = "item",
      name = "bob-sodium-carbonate",
      icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-chlorate]",
      stack_size = 100,
      drop_sound = powder_drop_move,
      inventory_move_sound = powder_drop_move,
      pick_sound = powder_pick,
    },
  })

  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data:extend({
      {
        type = "fluid",
        name = "bob-brine",
        icon = "__bobrevamp__/graphics/icons/brine.png",
        icon_size = 32,
        subgroup = "fluid",
        order = "a[fluid]-a[brine]",
        default_temperature = 15,
        max_temperature = 100,
        gas_temperature = 100,
        heat_capacity = "0.2kJ",
        base_color = { r = 0.5, g = 0.5, b = 0.8 },
        flow_color = { r = 1.0, g = 1.0, b = 1.0 },
      },
      {
        type = "fluid",
        name = "bob-ammoniated-brine",
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
        subgroup = "fluid",
        order = "a[fluid]-a[brine]",
        default_temperature = 15,
        max_temperature = 100,
        gas_temperature = 100,
        heat_capacity = "0.2kJ",
        base_color = { r = 0.5, g = 0.5, b = 0.8 },
        flow_color = { r = 1.0, g = 1.0, b = 1.0 },
      },

      {
        type = "item",
        name = "bob-sodium-bicarbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-bicarbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-chlorate]",
        stack_size = 100,
        drop_sound = powder_drop_move,
        inventory_move_sound = powder_drop_move,
        pick_sound = powder_pick,
      },
      {
        type = "item",
        name = "bob-ammonium-chloride",
        icon = "__bobrevamp__/graphics/icons/ammonium-chloride.png",
        icon_size = 64,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-chlorate]",
        stack_size = 100,
        drop_sound = powder_drop_move,
        inventory_move_sound = powder_drop_move,
        pick_sound = powder_pick,
      },

      {
        type = "recipe",
        name = "bob-brine",
        subgroup = "fluid-recipes",
        order = "f[brine]",
        category = "chemistry",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-salt", amount = 1 },
          { type = "fluid", name = "water", amount = 10 },
        },
        results = {
          { type = "fluid", name = "bob-brine", amount = 10 },
        },
        main_product = "bob-brine",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          secondary = { r = 0.5, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.8, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "bob-ammoniated-brine",
        subgroup = "fluid-recipes",
        order = "f[ammoniated-brine]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "bob-brine", amount = 10 },
          { type = "fluid", name = "bob-ammonia", amount = 25 },
        },
        results = {
          { type = "fluid", name = "bob-ammoniated-brine", amount = 10 },
        },
        main_product = "bob-ammoniated-brine",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
          secondary = { r = 0.5, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.8, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "bob-sodium-bicarbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-bicarbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-bicarbonate]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "fluid", name = "bob-ammoniated-brine", amount = 10 },
          { type = "fluid", name = "bob-carbon-dioxide", amount = 25 },
        },
        results = {
          { type = "item", name = "bob-sodium-bicarbonate", amount = 1 },
          { type = "item", name = "bob-ammonium-chloride", amount = 1 },
        },
        main_product = "bob-sodium-bicarbonate",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
          tertiary = { r = 0.4, g = 0.4, b = 0.4, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "bob-sodium-carbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-carbonate]",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-sodium-bicarbonate", amount = 2 },
        },
        results = {
          { type = "item", name = "bob-sodium-carbonate", amount = 1 },
          { type = "fluid", name = "water", amount = 10, fluidbox_index = 1 },
          { type = "fluid", name = "bob-carbon-dioxide", amount = 25, fluidbox_index = 2 },
        },
        main_product = "bob-sodium-carbonate",
        crafting_machine_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
          secondary = { r = 0.0, g = 0.5, b = 0.8, a = 0.000 },
          tertiary = { r = 0.8, g = 0.4, b = 0.4, a = 0.000 },
        },
      },
      {
        type = "recipe",
        name = "bob-ammonium-chloride-reprocessing",
        icon = "__bobrevamp__/graphics/icons/ammonium-chloride-reprocessing.png",
        icon_size = 64,
        subgroup = "bob-resource-chemical",
        order = "f[ammonium-chloride-reprocessing]",
        category = "chemistry",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-ammonium-chloride", amount = 2 },
          { type = "item", name = "bob-limestone", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-calcium-chloride", amount = 1 },
          { type = "fluid", name = "bob-ammonia", amount = 50 },
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
        name = "bob-brine-electrolysis",
        icon = "__bobrevamp__/graphics/icons/brine-electrolysis.png",
        icon_size = 64,
        subgroup = "bob-fluid-electrolysis",
        order = "b[fluid-chemistry]-b[brine-electrolysis]",
        category = "bob-electrolysis",
        enabled = false,
        energy_required = 1.5,
        ingredients = {
          { type = "fluid", name = "bob-brine", amount = 10 },
        },
        results = {
          { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
          { type = "fluid", name = "bob-chlorine", amount = 25 },
          { type = "fluid", name = "bob-hydrogen", amount = 10 },
        },
        allow_decomposition = false,
      },
    })
  else
    data:extend({
      {
        type = "recipe",
        name = "bob-sodium-carbonate",
        icon = "__bobrevamp__/graphics/icons/sodium-carbonate.png",
        icon_size = 32,
        subgroup = "bob-resource-chemical",
        order = "f[sodium-carbonate]",
        category = "chemistry",
        energy_required = 5,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-salt", amount = 2 },
          { type = "item", name = "stone", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-sodium-carbonate", amount = 1 },
          { type = "item", name = "bob-calcium-chloride", amount = 1 },
        },
        main_product = "bob-sodium-carbonate",
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
      name = "bob-sodium-cobaltate",
      icon = "__bobrevamp__/graphics/icons/sodium-cobaltate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-chlorate]",
      stack_size = 100,
      drop_sound = powder_drop_move,
      inventory_move_sound = powder_drop_move,
      pick_sound = powder_pick,
    },
    {
      type = "item",
      name = "bob-rtg",
      icon = "__bobrevamp__/graphics/icons/technology/rtg.png",
      icon_size = 128,
      subgroup = "intermediate-product",
      order = "m[rtg]",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "recipe",
      name = "bob-sodium-cobaltate",
      icon = "__bobrevamp__/graphics/icons/sodium-cobaltate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-cobaltate]",
      category = "chemistry",
      energy_required = 12,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-sodium-carbonate", amount = 6 },
        { type = "item", name = "bob-cobalt-oxide", amount = 5 },
      },
      results = {
        { type = "item", name = "bob-sodium-cobaltate", amount = 5 },
        { type = "fluid", name = "bob-oxygen", amount = 200 },
      },
      main_product = "bob-sodium-cobaltate",
      crafting_machine_tint = {
        primary = { r = 0.3, g = 0.5, b = 1.0, a = 0.000 },
        secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        tertiary = { r = 0.8, g = 0.4, b = 0.4, a = 0.000 },
      },
    },
    {
      type = "recipe",
      name = "bob-rtg",
      category = "advanced-crafting",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-plutonium-239", amount = 1 },
        { type = "item", name = "bob-lead-plate", amount = 1 },
        { type = "item", name = "bob-aluminium-plate", amount = 5 },
        { type = "item", name = "bob-sodium-cobaltate", amount = 2 },
      },
      results = { { type = "item", name = "bob-rtg", amount = 1 } },
    },
  })

  if bobmods.plates.make_void_fluid_recipe then
    bobmods.plates.make_void_fluid_recipe("bob-carbon-dioxide", 25, 10)
  end

  data:extend({
    {
      type = "technology",
      name = "bob-rtg",
      icon = "__bobrevamp__/graphics/icons/technology/rtg.png",
      icon_size = 128,
      prerequisites = {
        "bob-nitrogen-processing",
        "bob-cobalt-processing",
        "bob-aluminium-processing",
        "nuclear-fuel-reprocessing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-sodium-carbonate",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-sodium-cobaltate",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-rtg",
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
