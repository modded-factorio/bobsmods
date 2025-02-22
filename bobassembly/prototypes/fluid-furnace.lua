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
        volume = 100,
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
      name = "bob-fluid-furnace",
      icon = "__base__/graphics/icons/steel-furnace.png",
      icon_size = 64,
      subgroup = "smelting-machine",
      order = "b[steela-furnace]",
      place_result = "bob-fluid-furnace",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/metal-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/metal-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    util.merge({
      data.raw.furnace["steel-furnace"],
      {
        name = "bob-fluid-furnace",
        minable = { result = "bob-fluid-furnace" },
      },
    }),
    {
      type = "recipe",
      name = "bob-fluid-furnace",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-fluid-furnace", amount = 1 } },
    },
  })
  data.raw.furnace["bob-fluid-furnace"].energy_source = fluid_energy_source()
  data.raw.furnace["bob-fluid-furnace"].circuit_connector = circuit_connector_definitions["bob-steel-furnace"]
  bobmods.lib.tech.add_recipe_unlock("advanced-material-processing", "bob-fluid-furnace")

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    data.raw.recipe["bob-fluid-furnace"].icons = {
      { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
      { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
      { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
    }

    data:extend({
      {
        type = "recipe",
        name = "steel-furnace-from-fluid-furnace",
        icons = {
          { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, -8 } },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
        },
        localised_name = { "entity-name.steel-furnace" },
        energy_required = 0.1,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-fluid-furnace", amount = 1 },
        },
        results = {
          { type = "item", name = "steel-furnace", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "steel-furnace",
        allow_as_intermediate = false,
      },
    })

    bobmods.lib.tech.add_recipe_unlock("advanced-material-processing", "steel-furnace-from-fluid-furnace")
    if data.raw["item-subgroup"]["bob-base-smelting-machine-convert"] then
      data.raw.recipe["steel-furnace-from-fluid-furnace"].subgroup = "bob-base-smelting-machine-convert"
    end
  end

  if data.raw["assembling-machine"]["bob-steel-mixing-furnace"] then
    data:extend({
      {
        type = "item",
        name = "bob-fluid-mixing-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        subgroup = "bob-smelting-machine",
        order = "b[mixing-furnace-3]",
        place_result = "bob-fluid-mixing-furnace",
        stack_size = 50,
        drop_sound = {
          filename = "__base__/sound/item/metal-large-inventory-move.ogg",
          volume = 0.7,
        },
        inventory_move_sound = {
          filename = "__base__/sound/item/metal-large-inventory-move.ogg",
          volume = 0.7,
        },
        pick_sound = {
          filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
          volume = 0.8,
        },
      },
      {
        type = "recipe",
        name = "bob-fluid-mixing-furnace",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "pipe", amount = 2 },
          { type = "item", name = "bob-steel-mixing-furnace", amount = 1 },
        },
        results = { { type = "item", name = "bob-fluid-mixing-furnace", amount = 1 } },
      },
      {
        type = "technology",
        name = "bob-fluid-mixing-furnace",
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
          },
          {
            icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
            icon_size = 128,
            scale = 0.5,
            shift = { -48, -48 },
          },
        },
        prerequisites = {
          "bob-steel-mixing-furnace",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-fluid-mixing-furnace",
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
        data.raw["assembling-machine"]["bob-steel-mixing-furnace"],
        {
          name = "bob-fluid-mixing-furnace",
          minable = { result = "bob-fluid-mixing-furnace" },
        },
      }),
    })

    data.raw["assembling-machine"]["bob-fluid-mixing-furnace"].energy_source = fluid_energy_source()
    data.raw["assembling-machine"]["bob-fluid-mixing-furnace"].circuit_connector =
      circuit_connector_definitions["bob-steel-furnace"]

    if
      settings.startup["bobmods-plates-convert-recipes"]
      and settings.startup["bobmods-plates-convert-recipes"].value == true
    then
      if data.raw["assembling-machine"]["bob-steel-mixing-furnace"] then
        data.raw.recipe["bob-fluid-mixing-furnace"].icons = {
          { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
          { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
        }

        data:extend({
          {
            type = "recipe",
            name = "steel-mixing-furnace-from-fluid-mixing-furnace",
            icons = {
              { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
              { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, -8 } },
              { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
              { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
            },
            localised_name = { "entity-name.bob-steel-mixing-furnace" },
            subgroup = "bob-smelting-machine-convert",
            energy_required = 0.1,
            enabled = false,
            ingredients = {
              { type = "item", name = "bob-fluid-mixing-furnace", amount = 1 },
            },
            results = {
              { type = "item", name = "bob-steel-mixing-furnace", amount = 1 },
              { type = "item", name = "pipe", amount = 2 },
            },
            main_product = "bob-steel-mixing-furnace",
            allow_as_intermediate = false,
          },
        })
        bobmods.lib.tech.add_recipe_unlock("bob-fluid-mixing-furnace", "steel-mixing-furnace-from-fluid-mixing-furnace")
      end

      data:extend({
        {
          type = "recipe",
          name = "bob-fluid-mixing-furnace-from-fluid-furnace",
          icons = {
            { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
            { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, 0 } },
            { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
            { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
          },
          localised_name = { "entity-name.bob-fluid-mixing-furnace" },
          subgroup = "bob-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "bob-fluid-furnace", amount = 1 },
          },
          results = { { type = "item", name = "bob-fluid-mixing-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "bob-fluid-furnace-from-fluid-mixing-furnace",
          icons = {
            { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
            { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, 0 } },
            { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
            { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
          },
          localised_name = { "entity-name.bob-fluid-furnace" },
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "bob-fluid-mixing-furnace", amount = 1 },
          },
          results = { { type = "item", name = "bob-fluid-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
      })

      bobmods.lib.tech.add_recipe_unlock("bob-fluid-mixing-furnace", "bob-fluid-mixing-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("bob-fluid-mixing-furnace", "bob-fluid-furnace-from-fluid-mixing-furnace")
    end
  end

  if data.raw["assembling-machine"]["bob-steel-chemical-furnace"] then
    data:extend({
      {
        type = "item",
        name = "bob-fluid-chemical-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64,
        subgroup = "bob-smelting-machine",
        order = "b[chemical-boiler-3]",
        place_result = "bob-fluid-chemical-furnace",
        stack_size = 50,
        drop_sound = {
          filename = "__base__/sound/item/metal-large-inventory-move.ogg",
          volume = 0.7,
        },
        inventory_move_sound = {
          filename = "__base__/sound/item/metal-large-inventory-move.ogg",
          volume = 0.7,
        },
        pick_sound = {
          filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
          volume = 0.8,
        },
      },
      {
        type = "recipe",
        name = "bob-fluid-chemical-furnace",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "pipe", amount = 2 },
          { type = "item", name = "bob-steel-chemical-furnace", amount = 1 },
        },
        results = { { type = "item", name = "bob-fluid-chemical-furnace", amount = 1 } },
      },
      {
        type = "technology",
        name = "bob-fluid-chemical-furnace",
        icons = {
          {
            icon = "__base__/graphics/technology/advanced-material-processing.png",
            icon_size = 256,
          },
          {
            icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
            icon_size = 64,
            scale = 1,
            shift = { -48, -48 },
          },
        },
        prerequisites = {
          "advanced-material-processing",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-fluid-chemical-furnace",
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
        data.raw["assembling-machine"]["bob-steel-chemical-furnace"],
        {
          name = "bob-fluid-chemical-furnace",
          minable = { result = "bob-fluid-chemical-furnace" },
        },
      }),
    })

    if data.raw.technology["bob-steel-chemical-furnace"] then
      bobmods.lib.tech.add_prerequisite("bob-fluid-chemical-furnace", "bob-steel-chemical-furnace")
    else
      bobmods.lib.tech.add_prerequisite("bob-fluid-chemical-furnace", "bob-chemical-processing-2")
    end

    data.raw["assembling-machine"]["bob-fluid-chemical-furnace"].energy_source = fluid_energy_source()
    data.raw["assembling-machine"]["bob-fluid-chemical-furnace"].circuit_connector =
      circuit_connector_definitions["bob-steel-furnace"]

    if
      settings.startup["bobmods-plates-convert-recipes"]
      and settings.startup["bobmods-plates-convert-recipes"].value == true
    then
      if data.raw["assembling-machine"]["bob-steel-chemical-furnace"] then
        data.raw.recipe["bob-fluid-chemical-furnace"].icons = {
          { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
          { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
        }

        data:extend({
          {
            type = "recipe",
            name = "steel-chemical-furnace-from-fluid-chemical-furnace",
            icons = {
              { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
              { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, -8 } },
              { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
              { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
            },
            localised_name = { "entity-name.bob-steel-chemical-furnace" },
            subgroup = "bob-smelting-machine-convert",
            energy_required = 0.1,
            enabled = false,
            ingredients = {
              { type = "item", name = "bob-fluid-chemical-furnace", amount = 1 },
            },
            results = {
              { type = "item", name = "bob-steel-chemical-furnace", amount = 1 },
              { type = "item", name = "pipe", amount = 2 },
            },
            main_product = "bob-steel-chemical-furnace",
            allow_as_intermediate = false,
          },
        })
        bobmods.lib.tech.add_recipe_unlock(
          "bob-fluid-chemical-furnace",
          "steel-chemical-furnace-from-fluid-chemical-furnace"
        )
      end

      data:extend({
        {
          type = "recipe",
          name = "bob-fluid-chemical-furnace-from-fluid-furnace",
          icons = {
            { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
            { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, 0 } },
            { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
            { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
          },
          localised_name = { "entity-name.bob-fluid-chemical-furnace" },
          subgroup = "bob-smelting-machine-convert",
          energy_required = 2,
          enabled = false,
          ingredients = {
            { type = "item", name = "bob-fluid-furnace", amount = 1 },
            { type = "item", name = "pipe", amount = 5 },
          },
          results = { { type = "item", name = "bob-fluid-chemical-furnace", amount = 1 } },
          allow_as_intermediate = false,
        },
        {
          type = "recipe",
          name = "bob-fluid-furnace-from-fluid-chemical-furnace",
          icons = {
            { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
            { icon = "__bobplates__/graphics/icons/f-blue.png", icon_size = 28, scale = 0.5, shift = { 8, 0 } },
            { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
            { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
          },
          localised_name = { "entity-name.bob-fluid-furnace" },
          subgroup = "bob-base-smelting-machine-convert",
          energy_required = 0.1,
          enabled = false,
          ingredients = {
            { type = "item", name = "bob-fluid-chemical-furnace", amount = 1 },
          },
          results = {
            { type = "item", name = "bob-fluid-furnace", amount = 1 },
            { type = "item", name = "pipe", amount = 5 },
          },
          main_product = "bob-fluid-furnace",
          allow_as_intermediate = false,
        },
      })

      bobmods.lib.tech.add_recipe_unlock("bob-fluid-chemical-furnace", "bob-fluid-chemical-furnace-from-fluid-furnace")
      bobmods.lib.tech.add_recipe_unlock("bob-fluid-chemical-furnace", "bob-fluid-furnace-from-fluid-chemical-furnace")
    end
  end
end
