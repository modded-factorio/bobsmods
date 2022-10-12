data:extend({{
  type = "recipe",
  name = "bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 2,
  ingredients = {{"bullet", 5}, {"magazine", 1}},
  result = "bullet-magazine"
}, {
  type = "recipe",
  name = "ap-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"ap-bullet", 5}, {"magazine", 1}},
  result = "ap-bullet-magazine"
}, {
  type = "recipe",
  name = "he-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"he-bullet", 5}, {"magazine", 1}},
  result = "he-bullet-magazine"
}, {
  type = "recipe",
  name = "flame-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"flame-bullet", 5}, {"magazine", 1}},
  result = "flame-bullet-magazine"
}, {
  type = "recipe",
  name = "acid-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"acid-bullet", 5}, {"magazine", 1}},
  result = "acid-bullet-magazine"
}, {
  type = "recipe",
  name = "poison-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"poison-bullet", 5}, {"magazine", 1}},
  result = "poison-bullet-magazine"
}, {
  type = "recipe",
  name = "electric-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"electric-bullet", 5}, {"magazine", 1}},
  result = "electric-bullet-magazine"
}, {
  type = "recipe",
  name = "uranium-rounds-magazine",
  enabled = false,
  energy_required = 3,
  ingredients = {{"uranium-bullet", 5}, {"magazine", 1}},
  result = "uranium-rounds-magazine"
}, {
  type = "recipe",
  name = "better-shotgun-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"shotgun-shell-casing", 1}, {"shot", 1}, {"cordite", 1}},
  result = "better-shotgun-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-ap-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"shotgun-shell-casing", 1},
    {"steel-plate", 1},
    {"cordite", 1}
  },
  result = "shotgun-ap-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-electric-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"shotgun-shell-casing", 1},
    {"copper-plate", 1},
    {"cordite", 1}
  },
  result = "shotgun-electric-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-explosive-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"shotgun-shell-casing", 1},
    {"explosives", 1},
    {"cordite", 1}
  },
  result = "shotgun-explosive-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-flame-shell",
  category = "chemistry",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"shotgun-shell-casing", 1}, {
    type = "fluid",
    name = "light-oil",
    amount = 5
  }, {
    type = "fluid",
    name = "heavy-oil",
    amount = 5
  }, {"cordite", 1}},
  result = "shotgun-flame-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-acid-shell",
  category = "crafting-with-fluid",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"shotgun-shell-casing", 1}, {
    type = "fluid",
    name = "sulfuric-acid",
    amount = 10
  }, {"cordite", 1}},
  result = "shotgun-acid-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-poison-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"shotgun-shell-casing", 1}, {"coal", 1}, {"cordite", 1}},
  result = "shotgun-poison-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "shotgun-uranium-shell",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {
    {"shotgun-shell-casing", 1},
    {"uranium-238", 1},
    {"cordite", 1}
  },
  result = "shotgun-uranium-shell",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-case", 1}, {"battery", 4}},
  result = "laser-rifle-battery",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-ruby",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery", 1}, {"battery", 4}},
  result = "laser-rifle-battery-ruby",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-sapphire",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-ruby", 1}, {"battery", 4}},
  result = "laser-rifle-battery-sapphire",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-emerald",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-sapphire", 1}, {"battery", 4}},
  result = "laser-rifle-battery-emerald",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-amethyst",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-emerald", 1}, {"battery", 4}},
  result = "laser-rifle-battery-amethyst",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-topaz",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-amethyst", 1}, {"battery", 4}},
  result = "laser-rifle-battery-topaz",
  result_count = 1
}, {
  type = "recipe",
  name = "laser-rifle-battery-diamond",
  subgroup = "bob-ammo",
  energy_required = 0.1,
  enabled = false,
  ingredients = {{"laser-rifle-battery-topaz", 1}, {"battery", 4}},
  result = "laser-rifle-battery-diamond",
  result_count = 1
}, {
  type = "recipe",
  name = "bob-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"rocket-warhead", 1}},
  result = "bob-rocket"
}, {
  type = "recipe",
  name = "bob-piercing-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"piercing-rocket-warhead", 1}},
  result = "bob-piercing-rocket"
}, {
  type = "recipe",
  name = "bob-electric-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"electric-rocket-warhead", 1}},
  result = "bob-electric-rocket"
}, {
  type = "recipe",
  name = "bob-explosive-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"explosive-rocket-warhead", 1}},
  result = "bob-explosive-rocket"
}, {
  type = "recipe",
  name = "bob-acid-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"acid-rocket-warhead", 1}},
  result = "bob-acid-rocket"
}, {
  type = "recipe",
  name = "bob-flame-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"flame-rocket-warhead", 1}},
  result = "bob-flame-rocket"
}, {
  type = "recipe",
  name = "bob-poison-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"poison-rocket-warhead", 1}},
  result = "bob-poison-rocket"
}})

data:extend({{
  type = "recipe",
  name = "scatter-cannon-shell",
  normal = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      {"steel-plate", 2},
      {"plastic-bar", 2},
      {"explosives", 1},
      {"shot", 5}
    },
    result = "scatter-cannon-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      {"steel-plate", 4},
      {"plastic-bar", 4},
      {"explosives", 1},
      {"shot", 5}
    },
    result = "scatter-cannon-shell"
  }
}})

data:extend({{
  type = "recipe",
  name = "fire-capsule",
  category = "crafting-with-fluid",
  enabled = false,
  energy_required = 8,
  ingredients = {{"steel-plate", 3}, {"electronic-circuit", 3}, {
    type = "fluid",
    name = "light-oil",
    amount = 100
  }},
  result = "fire-capsule"
}})

data:extend({{
  type = "recipe",
  name = "poison-artillery-shell",
  normal = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 6},
      {"plastic-bar", 6},
      {"coal", 15},
      {"explosives", 3}
    },
    result = "poison-artillery-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 12},
      {"plastic-bar", 12},
      {"coal", 15},
      {"explosives", 3}
    },
    result = "poison-artillery-shell"
  }
}, {
  type = "recipe",
  name = "fire-artillery-shell",
  category = "crafting-with-fluid",
  normal = {
    enabled = false,
    energy_required = 15,
    ingredients = {{"steel-plate", 6}, {"plastic-bar", 6}, {"explosives", 3}, {
      type = "fluid",
      name = "light-oil",
      amount = 150
    }},
    result = "fire-artillery-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 12},
      {"plastic-bar", 12},
      {"explosives", 3},
      {
        type = "fluid",
        name = "light-oil",
        amount = 150
      }
    },
    result = "fire-artillery-shell"
  }
}, {
  type = "recipe",
  name = "explosive-artillery-shell",
  normal = {
    enabled = false,
    energy_required = 15,
    ingredients = {{"steel-plate", 6}, {"plastic-bar", 6}, {"explosives", 18}},
    result = "explosive-artillery-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 12},
      {"plastic-bar", 12},
      {"explosives", 18}
    },
    result = "explosive-artillery-shell"
  }
}, {
  type = "recipe",
  name = "distractor-artillery-shell",
  normal = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 6},
      {"plastic-bar", 6},
      {"explosives", 3},
      {"distractor-capsule", 5}
    },
    result = "distractor-artillery-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 15,
    ingredients = {
      {"steel-plate", 12},
      {"plastic-bar", 12},
      {"explosives", 3},
      {"distractor-capsule", 5}
    },
    result = "distractor-artillery-shell"
  }
}, {
  type = "recipe",
  name = "atomic-artillery-shell",
  normal = {
    enabled = false,
    energy_required = 50,
    ingredients = {
      {"steel-plate", 6},
      {"plastic-bar", 6},
      {"explosives", 15},
      {"uranium-235", 30}
    },
    result = "atomic-artillery-shell"
  },
  expensive = {
    enabled = false,
    energy_required = 50,
    ingredients = {
      {"steel-plate", 12},
      {"plastic-bar", 12},
      {"explosives", 15},
      {"uranium-235", 30}
    },
    result = "atomic-artillery-shell"
  }
}})

data:extend({{
  type = "recipe",
  name = "plasma-bullet-magazine",
  subgroup = "bob-ammo",
  enabled = false,
  energy_required = 3,
  ingredients = {{"plasma-bullet", 5}, {"magazine", 1}},
  result = "plasma-bullet-magazine"
}, {
  type = "recipe",
  name = "shotgun-plasma-shell",
  subgroup = "bob-ammo",
  energy_required = 0.6,
  enabled = false,
  ingredients = {},
  result = "shotgun-plasma-shell",
  result_count = 6
}, {
  type = "recipe",
  name = "bob-plasma-rocket",
  enabled = false,
  energy_required = 8,
  ingredients = {{"rocket-body", 1}, {"plasma-rocket-warhead", 1}},
  result = "bob-plasma-rocket"
}})