bobmods.lib.recipe.replace_ingredient("energy-shield-equipment", "advanced-circuit", "electronic-circuit")
data.raw.recipe["energy-shield-mk2-equipment"].ingredients = {
  { type = "item", name = "energy-shield-equipment", amount = 2 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "productivity-module", amount = 1 },
}

data:extend({
  {
    type = "recipe",
    name = "energy-shield-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "energy-shield-mk2-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-2", amount = 1 },
    },
    results = { { type = "item", name = "energy-shield-mk3-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "energy-shield-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "energy-shield-mk3-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "energy-shield-mk4-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "energy-shield-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "energy-shield-mk4-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "energy-shield-mk5-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "energy-shield-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "energy-shield-mk5-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "energy-shield-mk6-equipment", amount = 1 } },
  },
})

bobmods.lib.recipe.remove_ingredient("battery-equipment", "steel-plate")
bobmods.lib.recipe.add_ingredient("battery-equipment", { type = "item", name = "electronic-circuit", amount = 5 })

data.raw.recipe["battery-mk2-equipment"].ingredients = {
  { type = "item", name = "battery-equipment", amount = 2 },
  { type = "item", name = "advanced-circuit", amount = 5 },
}

data:extend({
  {
    type = "recipe",
    name = "battery-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery-mk2-equipment", amount = 2 },
      { type = "item", name = "battery", amount = 5 },
    },
    results = { { type = "item", name = "battery-mk3-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "battery-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery-mk3-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "battery-mk4-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "battery-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery-mk4-equipment", amount = 2 },
      { type = "item", name = "battery", amount = 5 },
    },
    results = { { type = "item", name = "battery-mk5-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "battery-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery-mk5-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "battery-mk6-equipment", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "fission-reactor-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "fission-reactor-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "fission-reactor-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "fission-reactor-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "fission-reactor-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "fission-reactor-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "fission-reactor-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "fission-reactor-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "fission-reactor-equipment-4", amount = 1 } },
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
      { type = "item", name = "night-vision-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = { { type = "item", name = "night-vision-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "night-vision-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "night-vision-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = { { type = "item", name = "night-vision-equipment-3", amount = 1 } },
  },
})

data.raw.recipe["solar-panel-equipment"].ingredients = {
  { type = "item", name = "steel-plate", amount = 2 },
  { type = "item", name = "electronic-circuit", amount = 5 },
  { type = "item", name = "copper-cable", amount = 4 },
}

data:extend({
  {
    type = "recipe",
    name = "solar-panel-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "solar-panel-equipment", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "solar-panel-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "solar-panel-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "solar-panel-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "solar-panel-equipment-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-cable", amount = 5 },
    },
    results = { { type = "item", name = "solar-panel-equipment-4", amount = 1 } },
  },
})

data.raw.recipe["personal-laser-defense-equipment"].ingredients = {
  { type = "item", name = "steel-plate", amount = 5 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "battery", amount = 3 },
}

data:extend({
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "personal-laser-defense-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "personal-laser-defense-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "personal-laser-defense-equipment-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "personal-laser-defense-equipment-5", amount = 1 } },
  },
  {
    type = "recipe",
    name = "personal-laser-defense-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment-5", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "personal-laser-defense-equipment-6", amount = 1 } },
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
      { type = "item", name = "exoskeleton-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "exoskeleton-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "exoskeleton-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "exoskeleton-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "exoskeleton-equipment-3", amount = 1 } },
  },
})

bobmods.lib.recipe.replace_ingredient("belt-immunity-equipment", "advanced-circuit", "electronic-circuit")
