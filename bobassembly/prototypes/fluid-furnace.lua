if settings.startup["bobmods-assembly-oilfurnaces"].value == true then
  local function fluid_energy_source()
    return {
      type = "fluid",
      emissions_per_minute = { pollution = 3 },
      burns_fluid = true,
      scale_fluid_usage = true,
      fluid_box = {
        pipe_connections = {
          { flow_direction = "input-output", direction = defines.direction.east, position = { 0.5, 0.5 } },
          { flow_direction = "input-output", direction = defines.direction.west, position = { -0.5, 0.5 } },
        },
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        production_type = "input-output",
        secondary_draw_orders = {
          north = -1,
          east = -1,
          west = -1,
        },
        volume = 100
      },
      smoke = {
        {
          name = "smoke",
          frequency = 10,
          north_position = { 0.7, -1.2 },
          east_position = { 0.7, -1.2 },
          south_position = { 0.7, -1.2 },
          west_position = { 0.7, -1.2 },
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
        },
      },
    }
  end

  data:extend({
    {
      type = "item",
      name = "fluid-furnace",
      icon = "__base__/graphics/icons/steel-furnace.png",
      icon_size = 64,
      subgroup = "smelting-machine",
      order = "b[steela-furnace]",
      place_result = "fluid-furnace",
      stack_size = 50,
    },
    util.merge({
      data.raw.furnace["steel-furnace"],
      {
        name = "fluid-furnace",
        minable = { result = "fluid-furnace" },
      },
    }),
    {
      type = "recipe",
      name = "fluid-furnace",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "fluid-furnace", amount = 1 } },
    },
    {
      type = "technology",
      name = "fluid-furnace",
      icon_size = 256,
      icon = "__base__/graphics/technology/advanced-material-processing.png",
      prerequisites = {
        "advanced-material-processing",
        "oil-processing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-furnace",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-c-a",
    },
  })
  data.raw.furnace["fluid-furnace"].energy_source = fluid_energy_source()

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    data:extend({
      {
        type = "recipe",
        name = "steel-furnace-from-fluid-furnace",
        energy_required = 0.1,
        enabled = false,
        ingredients = {
          { type = "item", name = "fluid-furnace", amount = 1 },
        },
        results = {
          { type = "item", name = "steel-furnace", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "steel-furnace",
        allow_as_intermediate = false,
      },
    })

    bobmods.lib.tech.add_recipe_unlock("fluid-furnace", "steel-furnace-from-fluid-furnace")
    if data.raw["item-subgroup"]["bob-base-smelting-machine-convert"] then
      data.raw.recipe["steel-furnace-from-fluid-furnace"].subgroup = "bob-base-smelting-machine-convert"
    end
  end

  if data.raw["assembling-machine"]["steel-mixing-furnace"] then
    data:extend({
      {
        type = "item",
        name = "fluid-mixing-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        subgroup = "bob-smelting-machine",
        order = "b[mixing-furnace-3]",
        place_result = "fluid-mixing-furnace",
        stack_size = 50,
      },
      {
        type = "recipe",
        name = "fluid-mixing-furnace",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "pipe", amount = 2 },
          { type = "item", name = "steel-mixing-furnace", amount = 1 },
        },
        results = { { type = "item", name = "fluid-mixing-furnace", amount = 1 } },
      },
      {
        type = "technology",
        name = "fluid-mixing-furnace",
        icon_size = 128,
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
          },
          {
            icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
            icon_size = 128,
            shift = { -64, -64 },
          },
        },
        prerequisites = {
          "oil-processing",
          "steel-mixing-furnace",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "fluid-mixing-furnace",
          },
        },
        unit = {
          count = 50,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-c-a-b",
      },
    })

    data:extend({
      util.merge({
        data.raw["assembling-machine"]["steel-mixing-furnace"],
        {
          name = "fluid-mixing-furnace",
          minable = { result = "fluid-mixing-furnace" },
        },
      }),
    })

    data.raw["assembling-machine"]["fluid-mixing-furnace"].energy_source = fluid_energy_source()

    if
      settings.startup["bobmods-plates-convert-recipes"]
      and settings.startup["bobmods-plates-convert-recipes"].value == true
    then
      data:extend({
        {
          type = "recipe",
          name = "steel-mixing-furnace-from-fluid-mixing-furnace",
          subgroup = "bob-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-mixing-furnace", amount = 1 },
          },
          results = {
            { type = "item", name = "pipe", amount = 2 },
          },
          main_product = "steel-mixing-furnace",
          allow_as_intermediate = false,
        },

        {
          type = "recipe",
          name = "fluid-mixing-furnace-from-fluid-furnace",
          subgroup = "bob-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-furnace", amount = 1 },
          },
          results = { { type = "item", name = "fluid-mixing-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "fluid-furnace-from-fluid-mixing-furnace",
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-mixing-furnace", amount = 1 },
          },
          results = { { type = "item", name = "fluid-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
      })

      if data.raw["assembling-machine"]["steel-mixing-furnace"] then
        bobmods.lib.recipe.add_result(
          "steel-mixing-furnace-from-fluid-mixing-furnace",
          { type = "item", name = "steel-mixing-furnace", amount = 1 }
        )
      end

      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "steel-mixing-furnace-from-fluid-mixing-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "fluid-mixing-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "fluid-furnace-from-fluid-mixing-furnace")
    end
  end

  if data.raw["assembling-machine"]["steel-chemical-furnace"] then
    data:extend({
      {
        type = "item",
        name = "fluid-chemical-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        subgroup = "bob-smelting-machine",
        order = "b[chemical-boiler-3]",
        place_result = "fluid-chemical-furnace",
        stack_size = 50,
      },
      {
        type = "recipe",
        name = "fluid-chemical-furnace",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "pipe", amount = 2 },
          { type = "item", name = "steel-chemical-furnace", amount = 1 },
        },
        results = { { type = "item", name = "fluid-chemical-furnace", amount = 1 } },
      },
      {
        type = "technology",
        name = "fluid-chemical-furnace",
        icon_size = 128,
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
          },
          {
            icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
            icon_size = 64,
            scale = 2,
            shift = { -64, -64 },
          },
        },
        prerequisites = {
          "oil-processing",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "fluid-chemical-furnace",
          },
        },
        unit = {
          count = 50,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        order = "c-c-a-c",
      },
    })

    data:extend({
      util.merge({
        data.raw["assembling-machine"]["steel-chemical-furnace"],
        {
          name = "fluid-chemical-furnace",
          minable = { result = "fluid-chemical-furnace" },
        },
      }),
    })

    if data.raw.technology["steel-chemical-furnace"] then
      bobmods.lib.tech.add_prerequisite("fluid-chemical-furnace", "steel-chemical-furnace")
    else
      bobmods.lib.tech.add_prerequisite("fluid-chemical-furnace", "chemical-processing-2")
    end

    data.raw["assembling-machine"]["fluid-chemical-furnace"].energy_source = fluid_energy_source()

    if
      settings.startup["bobmods-plates-convert-recipes"]
      and settings.startup["bobmods-plates-convert-recipes"].value == true
    then
      data:extend({
        {
          type = "recipe",
          name = "steel-chemical-furnace-from-fluid-chemical-furnace",
          subgroup = "bob-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-chemical-furnace", amount = 1 },
          },
          results = {
            { type = "item", name = "pipe", amount = 2 },
          },
          main_product = "steel-chemical-furnace",
          allow_as_intermediate = false,
        },

        {
          type = "recipe",
          name = "fluid-chemical-furnace-from-fluid-furnace",
          subgroup = "bob-smelting-machine-convert",
          energy_required = 2,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-furnace", amount = 1 },
            { type = "item", name = "pipe", amount = 5 },
          },
          results = { { type = "item", name = "fluid-chemical-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "fluid-furnace-from-fluid-chemical-furnace",
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "fluid-chemical-furnace", amount = 1 },
          },
          results = {
            { type = "item", name = "fluid-furnace", amount = 1 },
            { type = "item", name = "pipe", amount = 5 },
          },
          main_product = "fluid-furnace",
          allow_as_intermediate = false,
        },
      })

      if data.raw["assembling-machine"]["steel-chemical-furnace"] then
        bobmods.lib.recipe.add_result(
          "steel-chemical-furnace-from-fluid-chemical-furnace",
          { type = "item", name = "steel-chemical-furnace", amount = 1 }
        )
      end

      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "steel-chemical-furnace-from-fluid-chemical-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "fluid-chemical-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "fluid-furnace-from-fluid-chemical-furnace")
    end
  end
end
