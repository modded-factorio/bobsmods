bobmods.lib.recipe.replace_ingredient("energy-shield-equipment", "advanced-circuit", "electronic-circuit")
data.raw.recipe["energy-shield-mk2-equipment"].ingredients = {
  { type = "item", name = "energy-shield-equipment", amount = 1 },
  { type = "item", name = "advanced-circuit", amount = 5 },
  { type = "item", name = "productivity-module", amount = 1 },
}

data:extend({
  {
    type = "recipe",
    name = "bob-energy-shield-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "energy-shield-mk2-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-2", amount = 1 },
    },
    results = { { type = "item", name = "bob-energy-shield-mk3-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-energy-shield-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-energy-shield-mk3-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-energy-shield-mk4-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-energy-shield-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-energy-shield-mk4-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-energy-shield-mk5-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-energy-shield-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-energy-shield-mk5-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-energy-shield-mk6-equipment", amount = 1 } },
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
    name = "bob-battery-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery-mk2-equipment", amount = 2 },
      { type = "item", name = "battery", amount = 10 },
    },
    results = { { type = "item", name = "bob-battery-mk3-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-battery-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-battery-mk3-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "bob-battery-mk4-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-battery-mk5-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-battery-mk4-equipment", amount = 2 },
      { type = "item", name = "battery", amount = 20 },
    },
    results = { { type = "item", name = "bob-battery-mk5-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-battery-mk6-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-battery-mk5-equipment", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "bob-battery-mk6-equipment", amount = 1 } },
  },
})

data.raw.recipe["fission-reactor-equipment"].ingredients = {
  { type = "item", name = "advanced-circuit", amount = 100 },
  { type = "item", name = "steel-plate", amount = 250 },
  { type = "item", name = "uranium-fuel-cell", amount = 24 },
}

data:extend({
  {
    type = "recipe",
    name = "bob-fission-reactor-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "fission-reactor-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 36 },
      { type = "item", name = "low-density-structure", amount = 50 },
    },
    results = { { type = "item", name = "bob-fission-reactor-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-fission-reactor-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-fission-reactor-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 48 },
    },
    results = { { type = "item", name = "bob-fission-reactor-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-fission-reactor-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-fission-reactor-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 60 },
    },
    results = { { type = "item", name = "bob-fission-reactor-equipment-4", amount = 1 } },
  },
})

bobmods.lib.recipe.replace_ingredient("night-vision-equipment", "advanced-circuit", "electronic-circuit")
data:extend({
  {
    type = "recipe",
    name = "bob-night-vision-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "night-vision-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = { { type = "item", name = "bob-night-vision-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-night-vision-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-night-vision-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = { { type = "item", name = "bob-night-vision-equipment-3", amount = 1 } },
  },
})

data.raw.recipe["solar-panel-equipment"].energy_required = 5
data.raw.recipe["solar-panel-equipment"].ingredients = {
  { type = "item", name = "electronic-circuit", amount = 8 },
  { type = "item", name = "steel-plate", amount = 4 },
  { type = "item", name = "copper-plate", amount = 4 },
  { type = "item", name = "copper-cable", amount = 8 },
}

data:extend({
  {
    type = "recipe",
    name = "bob-solar-panel-equipment-2",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "solar-panel-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 4 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "copper-plate", amount = 8 },
      { type = "item", name = "copper-cable", amount = 16 },
    },
    results = { { type = "item", name = "bob-solar-panel-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-solar-panel-equipment-3",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "bob-solar-panel-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
      { type = "item", name = "steel-plate", amount = 12 },
      { type = "item", name = "copper-plate", amount = 12 },
      { type = "item", name = "copper-cable", amount = 24 },
    },
    results = { { type = "item", name = "bob-solar-panel-equipment-3", amount = 1 } },
  },
})

if data.raw.item["bob-alien-artifact"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-solar-panel-equipment-4",
      enabled = false,
      energy_required = 7.5,
      ingredients = {
        { type = "item", name = "bob-solar-panel-equipment-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 6 },
        { type = "item", name = "bob-alien-artifact", amount = 5 },
        { type = "item", name = "steel-plate", amount = 16 },
        { type = "item", name = "copper-plate", amount = 16 },
      },
      results = { { type = "item", name = "bob-solar-panel-equipment-4", amount = 1 } },
    },
  })
  if data.raw.item["bob-alien-orange-alloy"] and data.raw.fluid["bob-alien-acid"] then
    data:extend({
      {
        type = "recipe",
        name = "bob-solar-panel-equipment-5",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 10,
        ingredients = {
          { type = "item", name = "bob-solar-panel-equipment-4", amount = 1 },
          { type = "item", name = "processing-unit", amount = 8 },
          { type = "item", name = "bob-alien-orange-alloy", amount = 10 },
          { type = "fluid", name = "bob-alien-acid", amount = 50 },
        },
        results = { { type = "item", name = "bob-solar-panel-equipment-5", amount = 1 } },
      },
    })
  end
end

data.raw.recipe["personal-laser-defense-equipment"].ingredients = {
  { type = "item", name = "steel-plate", amount = 5 },
  { type = "item", name = "electronic-circuit", amount = 5 },
  { type = "item", name = "battery", amount = 3 },
}

data:extend({
  {
    type = "recipe",
    name = "bob-personal-laser-defense-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "personal-laser-defense-equipment", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = { { type = "item", name = "bob-personal-laser-defense-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-laser-defense-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-personal-laser-defense-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "bob-personal-laser-defense-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-laser-defense-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-personal-laser-defense-equipment-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 16 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "bob-personal-laser-defense-equipment-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-laser-defense-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-personal-laser-defense-equipment-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 24 },
      { type = "item", name = "battery", amount = 18 },
    },
    results = { { type = "item", name = "bob-personal-laser-defense-equipment-5", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-laser-defense-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-personal-laser-defense-equipment-5", amount = 1 },
      { type = "item", name = "processing-unit", amount = 15 },
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-personal-laser-defense-equipment-6", amount = 1 } },
  },
})

bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment", "processing-unit", "advanced-circuit")
data:extend({
  {
    type = "recipe",
    name = "bob-exoskeleton-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "exoskeleton-equipment", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "speed-module-2", amount = 1 },
    },
    results = { { type = "item", name = "bob-exoskeleton-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-exoskeleton-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-exoskeleton-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "speed-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-exoskeleton-equipment-3", amount = 1 } },
  },
})

bobmods.lib.recipe.replace_ingredient("belt-immunity-equipment", "advanced-circuit", "electronic-circuit")
