bobmods.enemies.small_alien_artifacts = false

local artifact_drop_move = {
  filename = "__base__/sound/item/raw-fish-inventory-move.ogg",
  volume = 0.85,
  speed = 0.6,
}
local artifact_pick = {
  filename = "__base__/sound/item/raw-fish-inventory-pickup.ogg",
  volume = 0.85,
  speed = 0.6,
}

if settings.startup["bobmods-enemies-enableartifacts"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-alien-artifact",
      icon = "__bobenemies__/graphics/icons/alien-artifact.png",
      icon_size = 64,
      subgroup = "bob-alien-artifact",
      order = "g[alien-artifact]-a[pink]",
      stack_size = 500,
      drop_sound = artifact_drop_move,
      inventory_move_sound = artifact_drop_move,
      pick_sound = artifact_pick,
    },
  })

  if
    settings.startup["bobmods-enemies-enablesmallartifacts"].value == true
    and settings.startup["bobmods-enemies-enablenewartifacts"].value == true
  then
    data:extend({
      {
        type = "technology",
        name = "bob-artifact-processing",
        icon = "__bobenemies__/graphics/icons/alien-technology.png",
        icon_size = 128,
        prerequisites = {
          "chemical-science-pack",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-red",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-red-from-small",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-orange",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-orange-from-small",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-yellow",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-yellow-from-small",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-green",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-green-from-small",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-blue",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-blue-from-small",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-purple",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-purple-from-small",
          },
        },
        unit = {
          count = 50,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 30,
        },
      },
    })
  elseif settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    data:extend({
      {
        type = "technology",
        name = "bob-artifact-processing",
        icon = "__bobenemies__/graphics/icons/alien-technology.png",
        icon_size = 128,
        prerequisites = {
          "chemical-science-pack",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact",
          },
        },
        unit = {
          count = 50,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 30,
        },
      },
    })
  elseif settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    data:extend({
      {
        type = "technology",
        name = "bob-artifact-processing",
        icon = "__bobenemies__/graphics/icons/alien-technology.png",
        icon_size = 128,
        prerequisites = {
          "chemical-science-pack",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-red",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-orange",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-yellow",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-green",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-blue",
          },
          {
            type = "unlock-recipe",
            recipe = "bob-alien-artifact-purple",
          },
        },
        unit = {
          count = 50,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 30,
        },
      },
    })
  end

  if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    data:extend({
      {
        type = "item",
        name = "bob-small-alien-artifact",
        icon = "__bobenemies__/graphics/icons/small-alien-artifact.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-a[pink]-a[small]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact",
        results = { { type = "item", name = "bob-alien-artifact", amount = 1 } },
        ingredients = {
          { type = "item", name = "bob-small-alien-artifact", amount = 25 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },
    })
  end

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    data:extend({
      {
        type = "item",
        name = "bob-alien-artifact-red",
        icon = "__bobenemies__/graphics/icons/alien-artifact-red.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-b[red]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-red",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-red",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-red", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },

      {
        type = "item",
        name = "bob-alien-artifact-orange",
        icon = "__bobenemies__/graphics/icons/alien-artifact-orange.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-c[orange]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-orange",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-orange",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-orange", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },

      {
        type = "item",
        name = "bob-alien-artifact-yellow",
        icon = "__bobenemies__/graphics/icons/alien-artifact-yellow.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-d[yellow]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-yellow",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-yellow",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-yellow", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },

      {
        type = "item",
        name = "bob-alien-artifact-green",
        icon = "__bobenemies__/graphics/icons/alien-artifact-green.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-e[green]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-green",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-green",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-green", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },

      {
        type = "item",
        name = "bob-alien-artifact-blue",
        icon = "__bobenemies__/graphics/icons/alien-artifact-blue.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-f[blue]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-blue",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-blue",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-blue", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },

      {
        type = "item",
        name = "bob-alien-artifact-purple",
        icon = "__bobenemies__/graphics/icons/alien-artifact-purple.png",
        icon_size = 64,
        subgroup = "bob-alien-artifact",
        order = "g[alien-artifact]-g[purple]",
        stack_size = 500,
        drop_sound = artifact_drop_move,
        inventory_move_sound = artifact_drop_move,
        pick_sound = artifact_pick,
      },
      {
        type = "recipe",
        name = "bob-alien-artifact-purple",
        results = {
          {
            type = "item",
            name = "bob-alien-artifact-purple",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "bob-alien-artifact-purple", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "bob-alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = false,
        auto_recycle = false,
        category = "crafting",
      },
    })

    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-red",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-red.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-b[red]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-red-from-small",
          localised_name = { "item-name.bob-alien-artifact-red" },
          results = { { type = "item", name = "bob-alien-artifact-red", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-red", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-orange",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-orange.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-c[orange]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-orange-from-small",
          localised_name = { "item-name.bob-alien-artifact-orange" },
          results = { { type = "item", name = "bob-alien-artifact-orange", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-orange", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-yellow",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-yellow.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-d[yellow]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-yellow-from-small",
          localised_name = { "item-name.bob-alien-artifact-yellow" },
          results = { { type = "item", name = "bob-alien-artifact-yellow", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-yellow", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-green",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-green.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-e[green]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-green-from-small",
          localised_name = { "item-name.bob-alien-artifact-green" },
          results = { { type = "item", name = "bob-alien-artifact-green", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-green", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-blue",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-blue.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-f[blue]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-blue-from-small",
          localised_name = { "item-name.bob-alien-artifact-blue" },
          results = { { type = "item", name = "bob-alien-artifact-blue", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-blue", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "bob-small-alien-artifact-purple",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-purple.png",
          icon_size = 64,
          subgroup = "bob-alien-artifact",
          order = "g[alien-artifact]-g[purple]-a[small]",
          stack_size = 500,
          drop_sound = artifact_drop_move,
          inventory_move_sound = artifact_drop_move,
          pick_sound = artifact_pick,
        },
        {
          type = "recipe",
          name = "bob-alien-artifact-purple-from-small",
          localised_name = { "item-name.bob-alien-artifact-purple" },
          results = { { type = "item", name = "bob-alien-artifact-purple", amount = 1 } },
          ingredients = {
            { type = "item", name = "bob-small-alien-artifact-purple", amount = 25 },
          },
          energy_required = 1,
          enabled = false,
          auto_recycle = false,
          category = "crafting",
        },
      })
    end
  end
end
