data:extend(
{
  {
    type = "recipe",
    name = "robot-drone-frame",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"electric-engine-unit", 2},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"battery", 6},
      {"electronic-circuit", 10}
    },
    result = "robot-drone-frame",
  },
  {
    type = "recipe",
    name = "robot-drone-frame-large",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"electric-engine-unit", 2},
      {"steel-plate", 20},
      {"iron-gear-wheel", 10},
      {"battery", 12},
      {"electronic-circuit", 10}
    },
    result = "robot-drone-frame-large",
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-robot-gun-drone",
    enabled = false,
    ingredients =
    {
      {"robot-drone-frame", 1},
      {"gun-turret", 1},
    },
    result = "bob-robot-gun-drone"
  },
}
)

data:extend(
{
  {
    type = "recipe",
    name = "bob-robot-laser-drone",
    enabled = false,
    ingredients =
    {
      {"robot-drone-frame", 1},
      {"laser-turret", 1},
    },
    result = "bob-robot-laser-drone"
  },
}
)

data:extend(
{
  {
    type = "recipe",
    name = "bob-robot-flamethrower-drone",
    enabled = false,
    ingredients =
    {
      {"robot-drone-frame", 1},
      {"flamethrower-turret", 1},
    },
    result = "bob-robot-flamethrower-drone"
  },
}
)

data:extend(
{
  {
    type = "recipe",
    name = "bob-robot-plasma-drone",
    enabled = false,
    ingredients =
    {
      {"robot-drone-frame-large", 1},
      {"bob-plasma-turret-1", 1},
    },
    result = "bob-robot-plasma-drone"
  },
}
)

