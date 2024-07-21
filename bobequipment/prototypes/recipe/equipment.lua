bobmods.lib.recipe.replace_ingredient("energy-shield-equipment", "advanced-circuit", "electronic-circuit")
data.raw.recipe["energy-shield-mk2-equipment"].ingredients = {
  { "energy-shield-equipment", 2 },
  { "advanced-circuit", 5 },
  { "productivity-module", 1 },
}

data:extend({
  {
    type = "recipe",
    name = "energy-shield-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "energy-shield-mk2-equipment", 2 },
      { "processing-unit", 5 },
      { "productivity-module-2", 1 },
    },
    results = {{ type = "item", name = "energy-shield-mk3-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "energy-shield-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "energy-shield-mk3-equipment", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    results = {{ type = "item", name = "energy-shield-mk4-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "energy-shield-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "energy-shield-mk4-equipment", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    results = {{ type = "item", name = "energy-shield-mk5-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "energy-shield-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "energy-shield-mk5-equipment", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    results = {{ type = "item", name = "energy-shield-mk6-equipment", amount = 1 }},
  },
})

bobmods.lib.recipe.remove_ingredient("battery-equipment", "steel-plate")
bobmods.lib.recipe.add_ingredient("battery-equipment", { "electronic-circuit", 5 })

data.raw.recipe["battery-mk2-equipment"].ingredients = {
  { "battery-equipment", 2 },
  { "advanced-circuit", 5 },
}

data:extend({
  {
    type = "recipe",
    name = "battery-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "battery-mk2-equipment", 2 },
      { "battery", 5 },
    },
    results = {{ type = "item", name = "battery-mk3-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "battery-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "battery-mk3-equipment", 2 },
      { "processing-unit", 5 },
    },
    results = {{ type = "item", name = "battery-mk4-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "battery-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "battery-mk4-equipment", 2 },
      { "battery", 5 },
    },
    results = {{ type = "item", name = "battery-mk5-equipment", amount = 1 }},
  },
  {
    type = "recipe",
    name = "battery-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "battery-mk5-equipment", 2 },
      { "processing-unit", 5 },
    },
    results = {{ type = "item", name = "battery-mk6-equipment", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "fusion-reactor-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "fusion-reactor-equipment", 1 },
      { "processing-unit", 50 },
      { "effectivity-module-3", 2 },
      { "speed-module-3", 2 },
      { "productivity-module-3", 2 },
    },
    results = {{ type = "item", name = "fusion-reactor-equipment-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "fusion-reactor-equipment-2", 1 },
      { "processing-unit", 50 },
      { "effectivity-module-3", 2 },
      { "speed-module-3", 2 },
      { "productivity-module-3", 2 },
    },
    results = {{ type = "item", name = "fusion-reactor-equipment-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "fusion-reactor-equipment-3", 1 },
      { "processing-unit", 50 },
      { "effectivity-module-3", 2 },
      { "speed-module-3", 2 },
      { "productivity-module-3", 2 },
    },
    results = {{ type = "item", name = "fusion-reactor-equipment-4", amount = 1 }},
  },
})

bobmods.lib.recipe.replace_ingredient("night-vision-equipment", "advanced-circuit", "electronic-circuit")
data:extend({
  {
    type = "recipe",
    name = "night-vision-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "night-vision-equipment", 1 },
      { "advanced-circuit", 5 },
      { "plastic-bar", 2 },
    },
    results = {{ type = "item", name = "night-vision-equipment-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "night-vision-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "night-vision-equipment-2", 1 },
      { "processing-unit", 5 },
      { "plastic-bar", 2 },
    },
    results = {{ type = "item", name = "night-vision-equipment-3", amount = 1 }},
  },
})

data.raw.recipe["solar-panel-equipment"].ingredients =
  { { "steel-plate", 2 }, { "electronic-circuit", 5 }, { "copper-cable", 4 } }

data:extend({
  {
    type = "recipe",
    name = "solar-panel-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "solar-panel-equipment", 1 },
      { "steel-plate", 2 },
      { "advanced-circuit", 5 },
      { "copper-plate", 2 },
    },
    results = {{ type = "item", name = "solar-panel-equipment-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "solar-panel-equipment-2", 1 },
      { "steel-plate", 2 },
      { "processing-unit", 5 },
      { "copper-plate", 2 },
    },
    results = {{ type = "item", name = "solar-panel-equipment-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "solar-panel-equipment-3", 1 },
      { "steel-plate", 2 },
      { "processing-unit", 5 },
      { "copper-cable", 5 },
    },
    results = {{ type = "item", name = "solar-panel-equipment-4", amount = 1 }},
  },
})

data.raw.recipe["personal-laser-defense-equipment"].ingredients = {
  { "steel-plate", 5 },
  { "advanced-circuit", 5 },
  { "battery", 3 },
}

data:extend({
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "personal-laser-defense-equipment", 1 },
      { "steel-plate", 5 },
      { "advanced-circuit", 5 },
      { "battery", 3 },
    },
    results = {{ type = "item", name = "personal-laser-defense-equipment-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "personal-laser-defense-equipment-2", 1 },
      { "steel-plate", 5 },
      { "processing-unit", 5 },
      { "battery", 3 },
    },
    results = {{ type = "item", name = "personal-laser-defense-equipment-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "personal-laser-defense-equipment-3", 1 },
      { "steel-plate", 5 },
      { "processing-unit", 5 },
      { "battery", 3 },
    },
    results = {{ type = "item", name = "personal-laser-defense-equipment-4", amount = 1 }},
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "personal-laser-defense-equipment-4", 1 },
      { "steel-plate", 5 },
      { "processing-unit", 5 },
      { "battery", 3 },
    },
    results = {{ type = "item", name = "personal-laser-defense-equipment-5", amount = 1 }},
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "personal-laser-defense-equipment-5", 1 },
      { "steel-plate", 5 },
      { "processing-unit", 5 },
      { "battery", 3 },
    },
    results = {{ type = "item", name = "personal-laser-defense-equipment-6", amount = 1 }},
  },
})

bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment", "processing-unit", "advanced-circuit")
data:extend({
  {
    type = "recipe",
    name = "exoskeleton-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "exoskeleton-equipment", 1 },
      { "processing-unit", 10 },
      { "iron-gear-wheel", 30 },
      { "steel-plate", 20 },
    },
    results = {{ type = "item", name = "exoskeleton-equipment-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "exoskeleton-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "exoskeleton-equipment-2", 1 },
      { "processing-unit", 10 },
      { "iron-gear-wheel", 30 },
      { "steel-plate", 20 },
    },
    results = {{ type = "item", name = "exoskeleton-equipment-3", amount = 1 }},
  },
})

bobmods.lib.recipe.replace_ingredient("belt-immunity-equipment", "advanced-circuit", "electronic-circuit")
