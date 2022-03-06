if
  data.raw.item["alien-artifact"] and
  data.raw.item["alien-artifact-blue"] and
  data.raw.item["alien-artifact-orange"] and
  data.raw.item["alien-artifact-purple"] and
  data.raw.item["alien-artifact-yellow"] and
  data.raw.item["alien-artifact-green"] and
  data.raw.item["alien-artifact-red"]
then

data:extend(
{
  {
    type = "technology",
    name = "alien-research",
    icon = "__bobtech__/graphics/icons/alien-technology.png",
    icon_size = 128,
    order = "e-f-a",
    prerequisites =
    {
      "military-3",
      "advanced-research"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-orange"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-purple"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-yellow"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-green"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-red"
      },
      {
        type = "unlock-recipe",
        recipe = "lab-alien"
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-gold"
      },
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
}
)

end
