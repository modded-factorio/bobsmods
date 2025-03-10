if bobmods.plates and settings.startup["bobmods-revamp-hardmode"].value == true then
  local powder_drop_move = {
    filename = "__base__/sound/item/sulfur-inventory-move.ogg",
    volume = 0.7,
    speed = 1.3,
  }
  local powder_pick = {
    filename = "__base__/sound/item/landfill-inventory-pickup.ogg",
    volume = 0.6,
    speed = 1.2,
  }

  data:extend({
    {
      type = "fluid",
      name = "bob-carbon-dioxide",
      icon = "__bobrevamp__/graphics/icons/carbon-dioxide.png",
      icon_size = 64,
      subgroup = "fluid",
      order = "a[fluid]-g[carbon-dioxide]",
      default_temperature = 15,
      max_temperature = 100,
      gas_temperature = -56.6,
      heat_capacity = "1kJ",
      base_color = { r = 0.5, g = 0.0, b = 0.0 },
      flow_color = { r = 0.0, g = 0.0, b = 0.0 },
    },

    {
      type = "item",
      name = "bob-limestone",
      icon = "__bobrevamp__/graphics/icons/limestone.png",
      icon_size = 64,
      subgroup = "bob-resource-chemical",
      order = "f[limestone]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/resource-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/resource-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/resource-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "item",
      name = "bob-sodium-chlorate",
      icon = "__bobrevamp__/graphics/icons/sodium-chlorate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-chlorate]",
      stack_size = 100,
      drop_sound = powder_drop_move,
      inventory_move_sound = powder_drop_move,
      pick_sound = powder_pick,
    },
    {
      type = "item",
      name = "bob-sodium-perchlorate",
      icon = "__bobrevamp__/graphics/icons/sodium-perchlorate.png",
      icon_size = 32,
      subgroup = "bob-resource-chemical",
      order = "f[sodium-perchlorate]",
      stack_size = 100,
      drop_sound = powder_drop_move,
      inventory_move_sound = powder_drop_move,
      pick_sound = powder_pick,
    },

    {
      type = "recipe",
      name = "bob-limestone",
      icon = "__bobrevamp__/graphics/icons/limestone.png",
      icon_size = 64,
      subgroup = "bob-resource-chemical",
      order = "f[limestone]",
      category = "chemistry",
      energy_required = 2,
      enabled = false,
      auto_recycle = false,
      ingredients = {
        { type = "item", name = "stone", amount = 1 },
      },
      results = {
        { type = "item", name = "bob-limestone", amount = 1 },
        { type = "fluid", name = "bob-carbon-dioxide", amount = 25, ignored_by_productivity = 25 },
      },
      main_product = "bob-limestone",
      crafting_machine_tint = {
        primary = { r = 0.7, g = 0.5, b = 0.3, a = 0.000 },
        secondary = { r = 0.7, g = 0.7, b = 0.7, a = 0.000 },
        tertiary = { r = 0.8, g = 0.4, b = 0.4, a = 0.000 },
      },
      emissions_multiplier = 0.2,
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-sodium-chlorate",
      icon = "__bobrevamp__/graphics/icons/sodium-chlorate.png",
      icon_size = 32,
      subgroup = "bob-fluid-electrolysis",
      order = "b[fluid-chemistry]-b[sodium-chlorate]",
      category = "bob-electrolysis",
      enabled = false,
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-salt", amount = 1 },
        { type = "fluid", name = "water", amount = 30 },
      },
      main_product = "bob-sodium-chlorate",
      results = {
        { type = "item", name = "bob-sodium-chlorate", amount = 1 },
        { type = "fluid", name = "bob-hydrogen", amount = 60 },
      },
      allow_decomposition = false,
    },
    {
      type = "recipe",
      name = "bob-sodium-perchlorate",
      icon = "__bobrevamp__/graphics/icons/sodium-perchlorate.png",
      icon_size = 32,
      subgroup = "bob-fluid-electrolysis",
      order = "b[fluid-chemistry]-b[sodium-perchlorate]",
      category = "bob-electrolysis",
      enabled = false,
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-sodium-chlorate", amount = 1 },
        { type = "fluid", name = "water", amount = 10 },
      },
      main_product = "bob-sodium-perchlorate",
      results = {
        { type = "item", name = "bob-sodium-perchlorate", amount = 1 },
        { type = "fluid", name = "bob-hydrogen", amount = 20 },
      },
      allow_decomposition = false,
    },
    {
      type = "recipe",
      name = "bob-lithium-water-electrolysis",
      icon = "__bobplates__/graphics/icons/lithium-perchlorate.png",
      icon_size = 32,
      subgroup = "bob-fluid-electrolysis",
      order = "b[fluid-chemistry]-b[bob-lithium-perchlorate]",
      category = "bob-electrolysis",
      enabled = false,
      auto_recycle = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-lithium-chloride", amount = 1 },
        { type = "item", name = "bob-sodium-perchlorate", amount = 1 },
      },
      main_product = "bob-lithium-perchlorate",
      results = {
        { type = "item", name = "bob-lithium-perchlorate", amount = 1 },
        { type = "item", name = "bob-salt", amount = 1 },
      },
      allow_decomposition = false,
    },
    {
      type = "recipe",
      name = "bob-carbon-dioxide",
      category = "chemistry",
      subgroup = "fluid-recipes",
      enabled = false,
      energy_required = 1,
      main_product = "bob-carbon-dioxide",
      ingredients = {
        { type = "item", name = "bob-carbon", amount = 1 },
        { type = "fluid", name = "bob-oxygen", amount = 25 },
      },
      results = {
        { type = "fluid", name = "bob-carbon-dioxide", amount = 25 },
      },
    },
    {
      type = "recipe",
      name = "bob-carbon-dioxide-oil-processing",
      icon = "__bobrevamp__/graphics/icons/carbon-dioxide-oil-processing.png",
      icon_size = 64,
      subgroup = "fluid-recipes",
      order = "a[oil-processing]-c[carbon-dioxide-oil-processing]",
      category = "oil-processing",
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = "fluid", name = "bob-carbon-dioxide", amount = 50 },
        { type = "fluid", name = "crude-oil", amount = 100 },
      },
      results = {
        { type = "fluid", name = "heavy-oil", amount = 60 },
        { type = "fluid", name = "light-oil", amount = 40 },
        { type = "fluid", name = "petroleum-gas", amount = 25 },
      },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })

  if bobmods.plates.make_void_fluid_recipe then
    bobmods.plates.make_void_fluid_recipe("bob-carbon-dioxide", 25, 10)
  end

  bobmods.lib.recipe.replace_ingredient("concrete", "iron-ore", "bob-quartz")
  bobmods.lib.recipe.replace_ingredient("concrete", "stone-brick", "bob-limestone")
  bobmods.lib.tech.add_prerequisite("concrete", "bob-chemical-processing-2")
end
