if settings.startup["bobmods-warfare-robotupdate"].value == true and bobmods.warfare.RobotParts == true then

data:extend(
{
  {
    type = "item",
    name = "robot-brain-combat",
    icon = "__bobwarfare__/graphics/icons/robot-brain-combat.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-combat-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-combat-2",
    icon = "__bobwarfare__/graphics/icons/robot-brain-combat-2.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-combat-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-combat-3",
    icon = "__bobwarfare__/graphics/icons/robot-brain-combat-3.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-combat-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-combat-4",
    icon = "__bobwarfare__/graphics/icons/robot-brain-combat-4.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-combat-4]",
    stack_size = 100
  },


  {
    type = "item",
    name = "robot-tool-combat",
    icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-combat-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-combat-2",
    icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-combat-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-combat-3",
    icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-combat-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-combat-4",
    icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-combat-4]",
    stack_size = 100
  },
}
)



data:extend(
{
  {
    type = "recipe",
    name = "robot-brain-combat",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-combat",
  },

  {
    type = "recipe",
    name = "robot-brain-combat-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-combat-2",
  },

  {
    type = "recipe",
    name = "robot-brain-combat-3",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-combat-3",
  },

  {
    type = "recipe",
    name = "robot-brain-combat-4",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-combat-4",
  },


  {
    type = "recipe",
    name = "robot-tool-combat",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-combat",
  },

  {
    type = "recipe",
    name = "robot-tool-combat-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-combat-2",
  },

  {
    type = "recipe",
    name = "robot-tool-combat-3",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-combat-3",
  },

  {
    type = "recipe",
    name = "robot-tool-combat-4",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-combat-4",
  },
}
)


end
