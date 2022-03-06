if settings.startup["bobmods-enemies-enableartifacts"].value == true then

data:extend(
{
  {
    type = "item",
    name = "alien-artifact",
    icon = "__bobenemies__/graphics/icons/alien-artifact.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-a[pink]",
    stack_size = 500,
    default_request_amount = 10
  },
}
)


if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then

data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-a[pink]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-from-small",
    result = "alien-artifact",
    ingredients =
    {
      {"small-alien-artifact", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)

end


if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then

data:extend(
{
  {
    type = "item",
    name = "alien-artifact-red",
    icon = "__bobenemies__/graphics/icons/alien-artifact-red.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-b[red]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-red-from-basic",
    result = "alien-artifact-red",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-red", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },

  {
    type = "item",
    name = "alien-artifact-orange",
    icon = "__bobenemies__/graphics/icons/alien-artifact-orange.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-c[orange]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-orange-from-basic",
    result = "alien-artifact-orange",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-orange", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },

  {
    type = "item",
    name = "alien-artifact-yellow",
    icon = "__bobenemies__/graphics/icons/alien-artifact-yellow.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-d[yellow]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-yellow-from-basic",
    result = "alien-artifact-yellow",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-yellow", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },

  {
    type = "item",
    name = "alien-artifact-green",
    icon = "__bobenemies__/graphics/icons/alien-artifact-green.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-e[green]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-green-from-basic",
    result = "alien-artifact-green",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-green", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },

  {
    type = "item",
    name = "alien-artifact-blue",
    icon = "__bobenemies__/graphics/icons/alien-artifact-blue.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-f[blue]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-blue-from-basic",
    result = "alien-artifact-blue",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-blue", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },

  {
    type = "item",
    name = "alien-artifact-purple",
    icon = "__bobenemies__/graphics/icons/alien-artifact-purple.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-g[purple]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "recipe",
    name = "alien-artifact-purple-from-basic",
    result = "alien-artifact-purple",
    result_count = 5,
    ingredients =
    {
      {"alien-artifact-purple", 1},
      {"alien-artifact", 5}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then

data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-red",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-red.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-b[red]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-red-from-small",
    result = "alien-artifact-red",
    ingredients =
    {
      {"small-alien-artifact-red", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-orange",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-orange.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-c[orange]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-orange-from-small",
    result = "alien-artifact-orange",
    ingredients =
    {
      {"small-alien-artifact-orange", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-yellow",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-yellow.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-d[yellow]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-yellow-from-small",
    result = "alien-artifact-yellow",
    ingredients =
    {
      {"small-alien-artifact-yellow", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-green",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-green.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-e[green]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-green-from-small",
    result = "alien-artifact-green",
    ingredients =
    {
      {"small-alien-artifact-green", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-blue",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-blue.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-f[blue]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-blue-from-small",
    result = "alien-artifact-blue",
    ingredients =
    {
      {"small-alien-artifact-blue", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact-purple",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact-purple.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "g[alien-artifact]-g[purple]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-purple-from-small",
    result = "alien-artifact-purple",
    ingredients =
    {
      {"small-alien-artifact-purple", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)


end
end
end


