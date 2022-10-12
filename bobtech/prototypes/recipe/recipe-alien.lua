if data.raw.item["alien-artifact"] and data.raw.item["alien-artifact-blue"] and data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-purple"] and data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-green"] and data.raw.item["alien-artifact-red"] then
  data:extend({{
    type = "recipe",
    name = "science-pack-gold",
    enabled = false,
    energy_required = 30,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1}
    },
    result = "science-pack-gold"
  }, {
    type = "recipe",
    name = "alien-science-pack",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact", 1}},
    result = "alien-science-pack",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-blue",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-blue", 1}},
    result = "alien-science-pack-blue",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-orange",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-orange", 1}},
    result = "alien-science-pack-orange",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-purple",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-purple", 1}},
    result = "alien-science-pack-purple",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-yellow",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-yellow", 1}},
    result = "alien-science-pack-yellow",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-green",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-green", 1}},
    result = "alien-science-pack-green",
    result_count = 10
  }, {
    type = "recipe",
    name = "alien-science-pack-red",
    enabled = false,
    energy_required = 12,
    ingredients = {{"alien-artifact-red", 1}},
    result = "alien-science-pack-red",
    result_count = 10
  }, {
    type = "recipe",
    name = "lab-alien",
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"lab", 1},
      {"alien-artifact", 10},
      {"alien-artifact-blue", 5},
      {"alien-artifact-orange", 5}
    },
    result = "lab-alien"
  }})
end