bobmods.enemies.small_alien_artifacts = false

if settings.startup["bobmods-enemies-enableartifacts"].value == true then
  data:extend({
    {
      type = "item",
      name = "alien-artifact",
      icon = "__bobenemies__/graphics/icons/alien-artifact.png",
      icon_size = 32,
      subgroup = "raw-material",
      order = "g[alien-artifact]-a[pink]",
      stack_size = 500,
    },
  })

  if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    data:extend({
      {
        type = "item",
        name = "small-alien-artifact",
        icon = "__bobenemies__/graphics/icons/small-alien-artifact.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-a[pink]-a[small]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-from-small",
        results = { { type = "item", name = "alien-artifact", amount = 1 } },
        ingredients = {
          { type = "item", name = "small-alien-artifact", amount = 25 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },
    })
  end

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    data:extend({
      {
        type = "item",
        name = "alien-artifact-red",
        icon = "__bobenemies__/graphics/icons/alien-artifact-red.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-b[red]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-red-from-basic",
        results = {
          { type = "item", name = "alien-artifact-red", amount = 5, ignored_by_productivity = 1, ignored_by_stats = 1 },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-red", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },

      {
        type = "item",
        name = "alien-artifact-orange",
        icon = "__bobenemies__/graphics/icons/alien-artifact-orange.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-c[orange]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-orange-from-basic",
        results = {
          {
            type = "item",
            name = "alien-artifact-orange",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-orange", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },

      {
        type = "item",
        name = "alien-artifact-yellow",
        icon = "__bobenemies__/graphics/icons/alien-artifact-yellow.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-d[yellow]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-yellow-from-basic",
        results = {
          {
            type = "item",
            name = "alien-artifact-yellow",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-yellow", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },

      {
        type = "item",
        name = "alien-artifact-green",
        icon = "__bobenemies__/graphics/icons/alien-artifact-green.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-e[green]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-green-from-basic",
        results = {
          {
            type = "item",
            name = "alien-artifact-green",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-green", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },

      {
        type = "item",
        name = "alien-artifact-blue",
        icon = "__bobenemies__/graphics/icons/alien-artifact-blue.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-f[blue]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-blue-from-basic",
        results = {
          {
            type = "item",
            name = "alien-artifact-blue",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-blue", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },

      {
        type = "item",
        name = "alien-artifact-purple",
        icon = "__bobenemies__/graphics/icons/alien-artifact-purple.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "g[alien-artifact]-g[purple]",
        stack_size = 500,
      },
      {
        type = "recipe",
        name = "alien-artifact-purple-from-basic",
        results = {
          {
            type = "item",
            name = "alien-artifact-purple",
            amount = 5,
            ignored_by_productivity = 1,
            ignored_by_stats = 1,
          },
        },
        ingredients = {
          { type = "item", name = "alien-artifact-purple", amount = 1, ignored_by_stats = 1 },
          { type = "item", name = "alien-artifact", amount = 5 },
        },
        energy_required = 1,
        enabled = "true",
        category = "crafting",
      },
    })

    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-red",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-red.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-b[red]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-red-from-small",
          results = { { type = "item", name = "alien-artifact-red", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-red", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-orange",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-orange.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-c[orange]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-orange-from-small",
          results = { { type = "item", name = "alien-artifact-orange", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-orange", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-yellow",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-yellow.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-d[yellow]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-yellow-from-small",
          results = { { type = "item", name = "alien-artifact-yellow", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-yellow", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-green",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-green.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-e[green]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-green-from-small",
          results = { { type = "item", name = "alien-artifact-green", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-green", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-blue",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-blue.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-f[blue]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-blue-from-small",
          results = { { type = "item", name = "alien-artifact-blue", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-blue", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })

      data:extend({
        {
          type = "item",
          name = "small-alien-artifact-purple",
          icon = "__bobenemies__/graphics/icons/small-alien-artifact-purple.png",
          icon_size = 32,
          subgroup = "raw-material",
          order = "g[alien-artifact]-g[purple]-a[small]",
          stack_size = 500,
        },
        {
          type = "recipe",
          name = "alien-artifact-purple-from-small",
          results = { { type = "item", name = "alien-artifact-purple", amount = 1 } },
          ingredients = {
            { type = "item", name = "small-alien-artifact-purple", amount = 25 },
          },
          energy_required = 1,
          enabled = "true",
          category = "crafting",
        },
      })
    end
  end
end
