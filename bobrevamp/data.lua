if not bobmods then bobmods = {} end
if not bobmods.revamp then bobmods.revamp = {} end

require("prototypes.rocket-fuel")
require("prototypes.rocket-parts")
require("prototypes.hard-mode")
require("prototypes.rtg")

-- oil overhaul
if settings.startup["bobmods-revamp-old-oil"].value == true or settings.startup["bobmods-revamp-oil"].value == true then
  data:extend(
  {
    {
      type = "technology",
      name = "pumpjack",
      icon = "__base__/graphics/technology/oil-gathering.png",
      icon_size = 256,
      icon_mipmaps = 4,
      order = "d-a-c",
      prerequisites =
      {
        "steel-processing",
        "logistic-science-pack",
      },
      unit =
      {
        count = 30,
        time = 30,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "pumpjack"
        },
      },
    },
    {
      type = "technology",
      name = "chemical-plant",
      icon = "__bobrevamp__/graphics/icons/technology/chemical-plant.png",
      icon_size = 128,
      order = "d-a-c",
      prerequisites =
      {
        "logistic-science-pack",
      },
      unit =
      {
        count = 30,
        time = 30,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "chemical-plant"
        },
      },
    },
    {
      type = "technology",
      name = "solid-fuel",
      icon = "__base__/graphics/icons/solid-fuel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      order = "d-a-d",
      prerequisites =
      {
        "oil-processing",
      },
      unit =
      {
        count = 30,
        time = 30,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-from-light-oil"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-from-petroleum-gas"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-from-heavy-oil"
        },
      },
    },
  }
  )
end

--old oil overhaul
if settings.startup["bobmods-revamp-old-oil"].value == true and not settings.startup["bobmods-revamp-oil"].value == true then
  data:extend(
  {
    {
      type = "recipe",
      name = "oil-processing-with-sulfur",
      icon = "__bobrevamp__/graphics/icons/oil-processing-with-sulfur.png",
      icon_size = 64,
      category = "oil-processing",
      subgroup = "fluid-recipes",
      order = "a[oil-processing]-d[oil-processing-with-sulfur]",
      enabled = false,
      energy_required = 5,
      ingredients =
      {
        {type = "fluid", name = "crude-oil", amount = 100}
      },
      results =
      {
        {type = "fluid", name = "heavy-oil", amount = 25},
        {type = "fluid", name = "light-oil", amount = 25},
        {type = "fluid", name = "petroleum-gas", amount = 30},
        {type = "item", name = "sulfur", amount = 2}
      },
    },
  }
  )

  if data.raw.fluid["sulfur-dioxide"] then
    data:extend(
    {
      {
        type = "recipe",
        name = "oil-processing-with-sulfur-dioxide",
        icon = "__bobrevamp__/graphics/icons/oil-processing-with-sulfur-dioxide-1.png",
        icon_size = 64,
        category = "oil-processing",
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-e[oil-processing-with-sulfur-dioxide-1]",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
          {type = "fluid", name = "water", amount = 50},
          {type = "fluid", name = "crude-oil", amount = 100}
        },
        results =
        {
          {type = "fluid", name = "sulfur-dioxide", amount = 40},
          {type = "fluid", name = "light-oil", amount = 30},
          {type = "fluid", name = "petroleum-gas", amount = 40}
        },
      },

      {
        type = "recipe",
        name = "oil-processing-with-sulfur-dioxide-2",
        icon = "__bobrevamp__/graphics/icons/oil-processing-with-sulfur-dioxide-2.png",
        icon_size = 64,
        category = "oil-processing",
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-e[oil-processing-with-sulfur-dioxide-2]",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
          {type = "fluid", name = "water", amount = 40},
          {type = "fluid", name = "crude-oil", amount = 100}
        },
        results =
        {
          {type = "fluid", name = "heavy-oil", amount = 30},
          {type = "fluid", name = "sulfur-dioxide", amount = 40},
          {type = "fluid", name = "petroleum-gas", amount = 40}
        },
      },

      {
        type = "recipe",
        name = "oil-processing-with-sulfur-dioxide-3",
        icon = "__bobrevamp__/graphics/icons/oil-processing-with-sulfur-dioxide-3.png",
        icon_size = 64,
        category = "oil-processing",
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-e[oil-processing-with-sulfur-dioxide-3]",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
          {type = "fluid", name = "water", amount = 20},
          {type = "fluid", name = "crude-oil", amount = 100}
        },
        results =
        {
          {type = "fluid", name = "heavy-oil", amount = 30},
          {type = "fluid", name = "light-oil", amount = 30},
          {type = "fluid", name = "sulfur-dioxide", amount = 50}
        },
      },
    }
    )
  end
end

--new oil overhaul
if settings.startup["bobmods-revamp-oil"].value == true then
  data:extend(
  {
    {
      type = "fluid",
      name = "sour-gas",
      icon = "__bobrevamp__/graphics/icons/sour-gas.png",
      icon_size = 64,
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r=0.4, g=0.1, b=0.3},
      flow_color = {r=0.8, g=0.2, b=0.6},
      max_temperature = 100,
      gas_temperature = -42,
      emissions_multiplier = 2,
      fuel_value = "2.3MJ", --"4.6MJ",
      order = "a[fluid]-f[sour-gas]",
      auto_barrel = false
    },
    {
      type = "recipe",
      name = "petroleum-gas-sweetening",
      category = "chemistry",
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-f[petroleum-gas-sweetening]",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {type="fluid", name="sour-gas", amount=20}
      },
      results=
      {
        {type="fluid", name="petroleum-gas", amount=20}
      },
      main_product= "petroleum-gas",
      crafting_machine_tint =
      {
        primary = {r = 0.8, g = 0.2, b = 0.6},
        secondary = {r = 0.6, g = 0.2, b = 0.6},
        tertiary = {r = 0.7, g = 0.2, b = 0.6},
      }
    },
    {
      type = "recipe",
      name = "solid-fuel-from-sour-gas",
      icon = "__bobrevamp__/graphics/icons/solid-fuel-from-sour-gas.png",
      icon_size = 32,
      category = "chemistry",
      subgroup = "fluid-recipes",
      order = "b[fluid-chemistry]-d[solid-fuel-from-sour-gas]",
      enabled = false,
      energy_required = 2,
      emissions_multiplier = 2,
      ingredients =
      {
        {type="fluid", name="sour-gas", amount=20}
      },
      results=
      {
        {type="item", name="solid-fuel", amount=1}
      },
      crafting_machine_tint =
      {
        primary = {r = 0.510, g = 0.075, b = 0.310},
        secondary = {r = 0.789, g = 0.540, b = 0.615},
        tertiary = {r = 0.669, g = 0.145, b = 0.695},
      }
    },
  }
  )

  if data.raw["recipe-category"]["void-fluid"] and data.raw.item.void then
    if bobmods.plates and bobmods.plates.make_void_fluid_recipe then
      bobmods.plates.make_void_fluid_recipe("sour-gas", 25, 55)
    else
    data:extend(
    {
      {
        type = "recipe",
        name = "void-sour-gas",
        icons =
        {
          {
            icon = "__bobrevamp__/graphics/icons/void.png",
            icon_size = 64,
            scale = 0.5
          },
          {
            icon = "__bobrevamp__/graphics/icons/sour-gas.png",
            icon_size = 64,
            scale = 0.25
          },
        },
        subgroup = "void",
        order = "sour-gas",
        category = "void-fluid",
        hide_from_player_crafting = true,
        energy_required = 1,
        ingredients =
        {
          {type="fluid", name="sour-gas", amount=25},
        },
        results=
        {
          {type="item", name="void", amount=1, probability=0},
        },
        emissions_multiplier = 55,
      },
    }
    )
    end
  end
end
