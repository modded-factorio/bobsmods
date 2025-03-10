if settings.startup["bobmods-plates-groundwater"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-lithia-water",
      icon = "__bobplates__/graphics/icons/lithia-water.png",
      icon_size = 32,
      subgroup = "bob-fluid-pump",
      order = "b[fluid-chemistry]-b[bob-lithia-water]",
      category = "bob-water-pump",
      enabled = false,
      energy_required = 1,
      ingredients = {},
      results = {
        { type = "fluid", name = "bob-lithia-water", amount = 100 },
      },
      allow_decomposition = false,
    },

    {
      type = "recipe",
      name = "bob-ground-water",
      localised_name = { "fluid-name.water" },
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64,
      subgroup = "bob-fluid-pump",
      order = "b[fluid-chemistry]-b[water]",
      category = "bob-water-pump",
      enabled = false,
      energy_required = 1,
      ingredients = {},
      results = {
        { type = "fluid", name = "water", amount = 100 },
      },
      allow_decomposition = false,
    },
  })

  if settings.startup["bobmods-plates-purewater"].value == true then
    data:extend({
      {
        type = "recipe",
        name = "bob-pure-water-pump",
        localised_name = { "fluid-name.bob-pure-water" },
        icon = "__bobplates__/graphics/icons/pure-water.png",
        icon_size = 64,
        subgroup = "bob-fluid-pump",
        order = "b[fluid-chemistry]-b[bob-pure-water]",
        category = "bob-water-pump",
        enabled = false,
        energy_required = 1,
        ingredients = {},
        results = {
          { type = "fluid", name = "bob-pure-water", amount = 100 },
        },
        allow_decomposition = false,
      },
    })
  end
end

if settings.startup["bobmods-plates-purewater"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-pure-water",
      icon = "__bobplates__/graphics/icons/pure-water.png",
      icon_size = 64,
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-b[pure-water-1]",
      category = "bob-distillery",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "water", amount = 100 },
      },
      results = {
        { type = "fluid", name = "bob-pure-water", amount = 100 },
      },
      crafting_machine_tint = {
        primary = { r = 0, g = 0.34, b = 0.6, a = 0.000 },
        secondary = { r = 0.3, g = 0.6, b = 0.8, a = 0.000 },
        tertiary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
      },
      allow_decomposition = false,
    },
    {
      type = "recipe",
      name = "bob-pure-water-from-lithia",
      localised_name = { "fluid-name.bob-pure-water" },
      icon = "__bobplates__/graphics/icons/pure-water.png",
      icon_size = 64,
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-b[pure-water-2]",
      category = "bob-distillery",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "bob-lithia-water", amount = 100 },
      },
      results = {
        { type = "fluid", name = "bob-pure-water", amount = 100 },
      },
      crafting_machine_tint = {
        primary = { r = 0, g = 0.34, b = 0.6, a = 0.000 },
        secondary = { r = 0.3, g = 0.6, b = 0.8, a = 0.000 },
        tertiary = { r = 0.7, g = 1.0, b = 1.0, a = 0.000 },
      },
      allow_decomposition = false,
    },
  })
end

data:extend({
  {
    type = "recipe",
    name = "bob-liquid-air",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    icon_size = 32,
    subgroup = "bob-fluid-pump",
    order = "b[fluid-chemistry]-b[bob-liquid-air]",
    category = "bob-air-pump",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
      { type = "fluid", name = "bob-liquid-air", amount = 100 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-water-electrolysis",
    icon = "__bobplates__/graphics/icons/water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[bob-water-electrolysis]",
    category = "bob-electrolysis",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "water", amount = 10 },
    },
    results = {
      { type = "fluid", name = "bob-hydrogen", amount = 20 },
      { type = "fluid", name = "bob-oxygen", amount = 12.5 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-nitrogen",
    icon = "__bobplates__/graphics/icons/nitrogen.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-nitrogen]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "bob-liquid-air", amount = 25 },
    },
    results = {
      { type = "fluid", name = "bob-nitrogen", amount = 20 },
      { type = "fluid", name = "bob-oxygen", amount = 5 },
    },
    main_product = "bob-nitrogen",
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.8, b = 0.0, a = 0.000 },
      secondary = { r = 0.5, g = 1.0, b = 0.5, a = 0.000 },
      tertiary = { r = 0.25, g = 0.5, b = 0.25, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-salt-water-electrolysis",
    icon = "__bobplates__/graphics/icons/salt-water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[bob-salt-water-electrolysis]",
    category = "bob-electrolysis",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "bob-salt", amount = 1 },
      { type = "fluid", name = "water", amount = 10 },
    },
    results = {
      { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
      { type = "fluid", name = "bob-chlorine", amount = 25 },
      { type = "fluid", name = "bob-hydrogen", amount = 10 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-sodium-hydroxide-sink",
    icon = "__bobplates__/graphics/icons/sodium-hydroxide-sink.png",
    icon_size = 64,
    subgroup = "fluid",
    order = "b[fluid-chemistry]-b[bob-sodium-hydroxide-sink]",
    category = "chemistry",
    enabled = false,
    energy_required = 0.1,
    ingredients = {
      { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
      { type = "fluid", name = "water", amount = 5 },
    },
    results = {
      { type = "fluid", name = "steam", amount = 20, temperature = 500 },
    },
    main_product = "",
    crafting_machine_tint = {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 0.000 },
      secondary = { r = 0.5, g = 0.5, b = 0.5, a = 0.000 },
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-lithium-water-electrolysis",
    icon = "__bobplates__/graphics/icons/lithium-perchlorate.png",
    icon_size = 32,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[bob-lithium-water-electrolysis]",
    category = "bob-electrolysis",
    enabled = false,
    auto_recycle = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "bob-lithium-chloride", amount = 1 },
      { type = "fluid", name = "water", amount = 10 },
    },
    results = {
      { type = "item", name = "bob-lithium-perchlorate", amount = 1 },
      { type = "fluid", name = "bob-hydrogen", amount = 20 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-nitrogen-dioxide",
    icon = "__bobplates__/graphics/icons/nitrogen-dioxide.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-nitrogen-dioxide]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "bob-nitrogen", amount = 10 },
      { type = "fluid", name = "bob-oxygen", amount = 20 },
    },
    results = {
      { type = "fluid", name = "bob-nitrogen-dioxide", amount = 20 },
    },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
      secondary = { r = 0.7, g = 0.0, b = 0.0, a = 0.000 },
      tertiary = { r = 0.8, g = 0.0, b = 1.0, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-hydrogen-chloride",
    icon = "__bobplates__/graphics/icons/hydrogen-chloride.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-hydrogen-chloride]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "bob-chlorine", amount = 12.5 },
      { type = "fluid", name = "bob-hydrogen", amount = 10 },
    },
    results = {
      { type = "fluid", name = "bob-hydrogen-chloride", amount = 25 },
    },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.7, b = 0.2, a = 0.000 },
      secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
      tertiary = { r = 0.2, g = 0.7, b = 0.0, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-nitric-acid",
    icon = "__bobplates__/graphics/icons/nitric-acid.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-nitric-acid]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "water", amount = 20 },
      { type = "fluid", name = "bob-nitrogen-dioxide", amount = 20 },
    },
    results = {
      { type = "fluid", name = "bob-nitric-acid", amount = 20 },
    },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
      secondary = { r = 1.0, g = 0.7, b = 0.0, a = 0.000 },
      tertiary = { r = 0.0, g = 0.0, b = 0.7, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-ferric-chloride-solution",
    icon = "__bobplates__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[bob-ferric-chloride-solution]",
    category = "chemistry",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 1 },
      { type = "fluid", name = "bob-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "fluid", name = "bob-ferric-chloride-solution", amount = 50 },
    },
    crafting_machine_tint = {
      primary = { r = 0.7, g = 0.6, b = 0.2, a = 0.000 },
      secondary = { r = 0.2, g = 0.7, b = 0.0, a = 0.000 },
      tertiary = { r = 0.0, g = 0.7, b = 0.7, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-liquid-fuel",
    icon = "__bobplates__/graphics/icons/liquid-fuel.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-liquid-fuel]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "light-oil", amount = 10 },
    },
    results = {
      { type = "fluid", name = "bob-liquid-fuel", amount = 10 },
    },
    crafting_machine_tint = {
      primary = { r = 1.0, g = 0.9, b = 0.5, a = 0.000 },
      secondary = { r = 0.8, g = 0.7, b = 0.0, a = 0.000 },
      tertiary = { r = 0.9, g = 0.8, b = 0.25, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-sulfuric-acid-2",
    localised_name = { "fluid-name.sulfuric-acid" },
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "bob-sulfur-dioxide", amount = 50 },
    },
    results = {
      { type = "fluid", name = "sulfuric-acid", amount = 50 },
    },
    main_product = "sulfuric-acid",
    subgroup = "fluid-recipes",
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    icon_size = 64,
    order = "b[fluid-chemistry]-f[sulfuric-acid]",
    crafting_machine_tint = {
      primary = { r = 0.875, g = 0.735, b = 0.000, a = 0.000 }, -- #dfbb0000
      secondary = { r = 0.103, g = 0.940, b = 0.000, a = 0.000 }, -- #1aef0000
      tertiary = { r = 0.564, g = 0.795, b = 0.000, a = 0.000 }, -- #8fca0000
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-sulfur-dioxide",
    category = "chemistry",
    subgroup = "fluid-recipes",
    order = "a[fluid]-g[sulfur-dioxide]",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "bob-oxygen", amount = 50 },
    },
    results = {
      { type = "fluid", name = "bob-sulfur-dioxide", amount = 50 },
    },
    crafting_machine_tint = {
      primary = { r = 0.7, g = 0.7, b = 0.0, a = 0.000 },
      secondary = { r = 1.0, g = 1.0, b = 0.5, a = 0.000 },
      tertiary = { r = 0.9, g = 0.9, b = 0.25, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-petroleum-gas-cracking",
    icon = "__bobplates__/graphics/icons/petrolium-gas-cracking.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[hydrogen]",
    category = "chemistry",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
      { type = "fluid", name = "water", amount = 5 },
      { type = "fluid", name = "petroleum-gas", amount = 5 },
    },
    results = {
      { type = "fluid", name = "bob-hydrogen", amount = 250 },
    },
    main_product = "", -- Causes it to use the recipe name.
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.34, b = 0.5, a = 0.000 },
      secondary = { r = 0.3, g = 0.1, b = 0.3, a = 0.000 },
      tertiary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-oil-processing",
    icon = "__bobplates__/graphics/icons/bob-oil-processing.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100, fluidbox_index = 2 },
    },
    results = {
      { type = "fluid", name = "heavy-oil", amount = 50 },
      { type = "fluid", name = "light-oil", amount = 20 },
      { type = "fluid", name = "petroleum-gas", amount = 30 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "coal-cracking",
    icon = "__bobplates__/graphics/icons/coal-cracking.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[coal-cracking]",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "coal", amount = 3 },
      { type = "fluid", name = "water", amount = 15 },
    },
    results = {
      { type = "fluid", name = "heavy-oil", amount = 12 },
    },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.34, b = 0.5, a = 0.000 },
      secondary = { r = 0.1, g = 0.1, b = 0.1, a = 0.000 },
      tertiary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-salt",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 25 },
    },
    results = { { type = "item", name = "bob-salt", amount = 1 } },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-lithium-chloride",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "bob-lithia-water", amount = 25 },
    },
    results = { { type = "item", name = "bob-lithium-chloride", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-sulfur-2",
    localised_name = { "item-name.sulfur" },
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    order = "f[sulfur]",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "bob-sulfur-dioxide", amount = 50 },
      { type = "fluid", name = "bob-hydrogen", amount = 80 },
    },
    results = { { type = "item", name = "sulfur", amount = 5 } },
    crafting_machine_tint = {
      primary = { r = 1.000, g = 0.659, b = 0.000, a = 0.000 }, -- #ffa70000
      secondary = { r = 0.812, g = 1.000, b = 0.000, a = 0.000 }, -- #cfff0000
      tertiary = { r = 0.960, g = 0.806, b = 0.000, a = 0.000 }, -- #f4cd0000
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-calcium-chloride",
    subgroup = "bob-resource-chemical",
    order = "f[bob-calcium-chloride]",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "stone", amount = 1 },
      { type = "fluid", name = "bob-hydrogen-chloride", amount = 10 },
    },
    results = { { type = "item", name = "bob-calcium-chloride", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.5, b = 0.4, a = 0.000 },
      secondary = { r = 0.7, g = 0.5, b = 0.0, a = 0.000 },
      tertiary = { r = 0.5, g = 0.05, b = 0.4, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-alumina",
    category = "bob-chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
      { type = "item", name = "bob-bauxite-ore", amount = 1 },
    },
    results = { { type = "item", name = "bob-alumina", amount = 1 } },
    order = "f[bob-alumina]",
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-lead-oxide",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    icon_size = 64,
    subgroup = "bob-resource-chemical",
    order = "f[bob-lead-oxide]",
    category = "chemistry",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    emissions_multiplier = 0.25,
    ingredients = {
      { type = "item", name = "bob-lead-ore", amount = 1 },
      { type = "fluid", name = "bob-oxygen", amount = 10 },
    },
    results = {
      { type = "item", name = "bob-lead-oxide", amount = 1 },
      { type = "fluid", name = "bob-sulfur-dioxide", amount = 10 },
    },
    main_product = "bob-lead-oxide",
    crafting_machine_tint = {
      primary = { r = 0.1, g = 0.1, b = 0.1, a = 0.000 },
      secondary = { r = 0.7, g = 0.0, b = 0.0, a = 0.000 },
      tertiary = { r = 0.1, g = 0.01, b = 0.1, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-silver-nitrate",
    subgroup = "bob-resource-chemical",
    order = "f[bob-silver-nitrate]",
    category = "chemistry",
    enabled = false,
    auto_recycle = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "bob-silver-plate", amount = 1 },
      { type = "fluid", name = "bob-nitrogen-dioxide", amount = 10 },
    },
    results = { { type = "item", name = "bob-silver-nitrate", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.0, b = 1.0, a = 0.000 },
      secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
      tertiary = { r = 0.3, g = 0.03, b = 0.3, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-silver-oxide",
    subgroup = "bob-resource-chemical",
    order = "f[bob-silver-oxide]",
    category = "chemistry",
    enabled = false,
    auto_recycle = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "bob-silver-nitrate", amount = 1 },
      { type = "item", name = "bob-sodium-hydroxide", amount = 1 },
    },
    results = { { type = "item", name = "bob-silver-oxide", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.3, g = 0.3, b = 0.3, a = 0.000 },
      secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
      tertiary = { r = 0.3, g = 0.03, b = 0.3, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-powdered-tungsten",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 3.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-tungsten-oxide", amount = 1 },
      { type = "fluid", name = "bob-hydrogen", amount = 15 },
    },
    results = { { type = "item", name = "bob-powdered-tungsten", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-oxide",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 7,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-cobalt-ore", amount = 2 },
      { type = "item", name = "stone", amount = 1 },
    },
    results = { { type = "item", name = "bob-cobalt-oxide", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-oxide-from-copper",
    icon = "__bobplates__/graphics/icons/copper-cobalt-oxide.png",
    icon_size = 32,
    subgroup = "bob-material-chemical",
    order = "c-b[bob-cobalt-oxide-from-copper]",
    category = "bob-chemical-furnace",
    energy_required = 25,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 7 },
      { type = "item", name = "stone", amount = 1 },
      { type = "item", name = "bob-carbon", amount = 1 },
      { type = "fluid", name = "bob-hydrogen", amount = 5 },
    },
    results = {
      { type = "item", name = "copper-plate", amount_min = 7, amount_max = 11 },
      { type = "item", name = "bob-cobalt-oxide", amount_min = 1, amount_max = 3 },
    },
    main_product = "copper-plate",
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-silver-from-lead",
    icon = "__bobplates__/graphics/icons/lead-silver.png",
    icon_size = 32,
    subgroup = "bob-material-chemical",
    order = "c-b[silver-from-lead]",
    category = "bob-chemical-furnace",
    energy_required = 25,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-lead-oxide", amount = 7 },
      { type = "item", name = "bob-carbon", amount = 3 },
      { type = "item", name = "bob-nickel-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "bob-lead-plate", amount_min = 7, amount_max = 11 },
      { type = "item", name = "bob-silver-ore", amount_min = 1, amount_max = 3 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-silicon-carbide",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 7,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-silicon-powder", amount = 1 },
      { type = "item", name = "bob-carbon", amount = 1 },
    },
    results = { { type = "item", name = "bob-silicon-carbide", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-lead-oxide-2",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    icon_size = 64,
    subgroup = "bob-resource-chemical",
    order = "f[bob-lead-oxide-2]",
    category = "chemistry",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    emissions_multiplier = 0.25,
    ingredients = {
      { type = "item", name = "bob-lead-ore", amount = 1 },
      { type = "fluid", name = "water", amount = 4 },
    },
    results = {
      { type = "item", name = "bob-lead-oxide", amount = 1 },
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 10 },
    },
    main_product = "bob-lead-oxide",
    crafting_machine_tint = {
      primary = { r = 0.1, g = 0.1, b = 0.1, a = 0.000 },
      secondary = { r = 0, g = 0.3, b = 0.7, a = 0.000 },
      tertiary = { r = 0.5, g = 0.5, b = 0, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-hydrogen-sulfide",
    icon = "__bobplates__/graphics/icons/hydrogen-sulfide.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[fluid]-g[hydrogen-sulfide]",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "bob-hydrogen", amount = 80 },
    },
    results = {
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 50 },
    },
    crafting_machine_tint = {
      primary = { r = 0.7, g = 0.7, b = 0.0, a = 0.000 },
      secondary = { r = 1.0, g = 1.0, b = 1.0, a = 0.000 },
      tertiary = { r = 0.9, g = 0.9, b = 0.45, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-sulfur-3",
    localised_name = { "item-name.sulfur" },
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    order = "f[sulfur]",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 50 },
      { type = "fluid", name = "bob-oxygen", amount = 25 },
    },
    results = { { type = "item", name = "sulfur", amount = 5 } },
    crafting_machine_tint = {
      primary = { r = 1.000, g = 0.659, b = 0.000 },
      secondary = { r = 1.0, g = 0.000, b = 0.000 },
      tertiary = { r = 0.960, g = 0.806, b = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-sulfuric-acid-3",
    localised_name = { "fluid-name.sulfuric-acid" },
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    icon_size = 64,
    category = "chemistry",
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-f[sulfuric-acid]",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 50 },
      { type = "fluid", name = "bob-oxygen", amount = 100 },
    },
    results = {
      { type = "fluid", name = "sulfuric-acid", amount = 50 },
    },
    crafting_machine_tint = {
      primary = { r = 1.000, g = 0.659, b = 0.000 },
      secondary = { r = 1.0, g = 0.000, b = 0.000 },
      tertiary = { r = 0.564, g = 0.795, b = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-heavy-water",
    icon = "__bobplates__/graphics/icons/heavy-water.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-heavy-water]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "water", amount = 100 },
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 1 },
    },
    results = {
      { type = "fluid", name = "bob-heavy-water", amount = 0.5 },
      { type = "fluid", name = "water", amount = 99.5 },
    },
    crafting_machine_tint = {
      primary = { r = 0, g = 0.34, b = 0.6, a = 0.000 },
      secondary = { r = 0.3, g = 0.6, b = 0.8, a = 0.000 },
      tertiary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-heavy-water-electrolysis",
    icon = "__bobplates__/graphics/icons/heavy-water-electrolysis.png",
    icon_size = 64,
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[bob-heavy-water-electrolysis]",
    category = "bob-electrolysis",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "fluid", name = "bob-heavy-water", amount = 10 },
    },
    results = {
      { type = "fluid", name = "bob-deuterium", amount = 20 },
      { type = "fluid", name = "bob-oxygen", amount = 12.5 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-tungstic-acid",
    icon = "__bobplates__/graphics/icons/tungstic-acid.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[bob-tungstic-acid]",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "bob-tungsten-ore", amount = 2 },
      { type = "fluid", name = "bob-hydrogen-chloride", amount = 50 },
    },
    results = {
      { type = "fluid", name = "bob-tungstic-acid", amount = 20 },
      { type = "item", name = "bob-calcium-chloride", amount = 1 },
    },
    main_product = "bob-tungstic-acid",
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.2, b = 0.7, a = 0.000 },
      secondary = { r = 0.0, g = 0.7, b = 0.7, a = 0.000 },
      tertiary = { r = 0.0, g = 0.0, b = 0.7, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-tungsten-oxide",
    subgroup = "bob-material-chemical",
    category = "bob-chemical-furnace",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "bob-tungstic-acid", amount = 10 },
    },
    results = { { type = "item", name = "bob-tungsten-oxide", amount = 1 } },
    allow_productivity = true,
  },
})

if mods["bobpower"] then
  data.raw.recipe["bob-sodium-hydroxide-sink"].results[1].temperature = 465
end
