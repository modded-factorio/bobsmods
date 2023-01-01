if settings.startup["bobmods-assembly-oilfurnaces"].value == true then
  local function fluid_energy_source()
    return {
      type = "fluid",
      emissions_per_minute = 3,
      burns_fluid = true,
      scale_fluid_usage = true,
      fluid_box = {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
          { type = "input-output", position = { 1.5, 0.5 } },
          { type = "input-output", position = { -1.5, 0.5 } },
        },
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        production_type = "input-output",
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
      icon_mipmaps = 4,
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
        { "steel-furnace", 1 },
        { "pipe", 2 },
      },
      result = "fluid-furnace",
    },
    {
      type = "technology",
      name = "fluid-furnace",
      icon_size = 256,
      icon_mipmaps = 4,
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
          { "fluid-furnace", 1 },
        },
        results = {
          { "steel-furnace", 1 },
          { "pipe", 2 },
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

  if
    data.raw["assembling-machine"]["mixing-steel-furnace"] or data.raw["assembling-machine"]["steel-mixing-furnace"]
  then
    data:extend({
      {
        type = "item",
        name = "fluid-mixing-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
          { "pipe", 2 },
        },
        result = "fluid-mixing-furnace",
      },
      {
        type = "technology",
        name = "fluid-mixing-furnace",
        icon_size = 128,
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
            icon_mipmaps = 4,
          },
          {
            icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
            icon_size = 128,
            shift = { -64, -64 },
          },
        },
        prerequisites = {
          "oil-processing",
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

    if data.raw["assembling-machine"]["steel-mixing-furnace"] then
      bobmods.lib.recipe.add_ingredient("fluid-mixing-furnace", { "steel-mixing-furnace", 1 })
      bobmods.lib.tech.add_prerequisite("fluid-mixing-furnace", "steel-mixing-furnace")
      data:extend({
        util.merge({
          data.raw["assembling-machine"]["steel-mixing-furnace"],
          {
            name = "fluid-mixing-furnace",
            minable = { result = "fluid-mixing-furnace" },
          },
        }),
      })
    else
      bobmods.lib.recipe.add_ingredient("fluid-mixing-furnace", { "mixing-steel-furnace", 1 })
      bobmods.lib.tech.add_prerequisite("fluid-mixing-furnace", "mixing-steel-furnace")
      data:extend({
        util.merge({
          data.raw["assembling-machine"]["mixing-steel-furnace"],
          {
            name = "fluid-mixing-furnace",
            minable = { result = "fluid-mixing-furnace" },
          },
        }),
      })
    end

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
            { "fluid-mixing-furnace", 1 },
          },
          results = {
            { "pipe", 2 },
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
            { "fluid-furnace", 1 },
          },
          result = "fluid-mixing-furnace",
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "fluid-furnace-from-fluid-mixing-furnace",
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { "fluid-mixing-furnace", 1 },
          },
          result = "fluid-furnace",
          allow_as_intermediate = false,
        },
      })

      if data.raw["assembling-machine"]["steel-mixing-furnace"] then
        bobmods.lib.recipe.add_result("steel-mixing-furnace-from-fluid-mixing-furnace", { "steel-mixing-furnace", 1 })
      else
        bobmods.lib.recipe.add_result("steel-mixing-furnace-from-fluid-mixing-furnace", { "mixing-steel-furnace", 1 })
        data.raw.recipe["steel-mixing-furnace-from-fluid-mixing-furnace"].main_product = "mixing-steel-furnace"
      end

      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "steel-mixing-furnace-from-fluid-mixing-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "fluid-mixing-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-mixing-furnace", "fluid-furnace-from-fluid-mixing-furnace")
    end
  end

  if
    data.raw["assembling-machine"]["chemical-steel-furnace"]
    or data.raw["assembling-machine"]["steel-chemical-furnace"]
  then
    data:extend({
      {
        type = "item",
        name = "fluid-chemical-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
          { "pipe", 2 },
        },
        result = "fluid-chemical-furnace",
      },
      {
        type = "technology",
        name = "fluid-chemical-furnace",
        icon_size = 128,
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
            icon_mipmaps = 4,
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

    if data.raw["assembling-machine"]["steel-chemical-furnace"] then
      bobmods.lib.recipe.add_ingredient("fluid-chemical-furnace", { "steel-chemical-furnace", 1 })
      data:extend({
        util.merge({
          data.raw["assembling-machine"]["steel-chemical-furnace"],
          {
            name = "fluid-chemical-furnace",
            minable = { result = "fluid-chemical-furnace" },
          },
        }),
      })
    else
      bobmods.lib.recipe.add_ingredient("fluid-chemical-furnace", { "chemical-steel-furnace", 1 })
      data:extend({
        util.merge({
          data.raw["assembling-machine"]["chemical-steel-furnace"],
          {
            name = "fluid-chemical-furnace",
            minable = { result = "fluid-chemical-furnace" },
          },
        }),
      })
    end

    if data.raw.technology["steel-chemical-furnace"] then
      bobmods.lib.tech.add_prerequisite("fluid-chemical-furnace", "steel-chemical-furnace")
    elseif data.raw.technology["chemical-steel-furnace"] then
      bobmods.lib.tech.add_prerequisite("fluid-chemical-furnace", "chemical-steel-furnace")
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
            { "fluid-chemical-furnace", 1 },
          },
          results = {
            { "pipe", 2 },
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
            { "fluid-furnace", 1 },
            { "pipe", 5 },
          },
          result = "fluid-chemical-furnace",
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "fluid-furnace-from-fluid-chemical-furnace",
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { "fluid-chemical-furnace", 1 },
          },
          results = {
            { "fluid-furnace", 1 },
            { "pipe", 5 },
          },
          main_product = "fluid-furnace",
          allow_as_intermediate = false,
        },
      })

      if data.raw["assembling-machine"]["steel-chemical-furnace"] then
        bobmods.lib.recipe.add_result(
          "steel-chemical-furnace-from-fluid-chemical-furnace",
          { "steel-chemical-furnace", 1 }
        )
      else
        bobmods.lib.recipe.add_result(
          "steel-chemical-furnace-from-fluid-chemical-furnace",
          { "chemical-steel-furnace", 1 }
        )
        data.raw.recipe["steel-chemical-furnace-from-fluid-chemical-furnace"].main_product = "chemical-steel-furnace"
      end

      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "steel-chemical-furnace-from-fluid-chemical-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "fluid-chemical-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("fluid-chemical-furnace", "fluid-furnace-from-fluid-chemical-furnace")
    end
  end
end
