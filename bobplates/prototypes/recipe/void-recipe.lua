function bobmods.plates.get_void_icon(name)
  local icons = { { icon = "__bobplates__/graphics/icons/void.png", icon_size = 64 } }
  return util.combine_icons(icons, bobmods.lib.icons_from_item(data.raw.fluid[name]), { scale = 0.5 })
end

function bobmods.plates.make_void_fluid_recipe(name, amount, polution)
  if type(name) == "string" and data.raw.fluid[name] then
    data:extend({
      {
        type = "recipe",
        name = "void-" .. name,
        localised_name = { "recipe-name.bob-void", name },
        icons = bobmods.plates.get_void_icon(name),
        subgroup = "bob-void",
        order = name,
        category = "bob-void-fluid",
        hide_from_player_crafting = true,
        show_amount_in_title = false,
        energy_required = 1,
        ingredients = {
          { type = "fluid", name = name, amount = amount or 25 },
        },
        results = {},
        emissions_multiplier = polution,
      },
    })
  else
    bobmods.lib.error.item_of_type(name, "fluid", "Fluid")
  end
end

bobmods.plates.make_void_fluid_recipe("bob-oxygen", 25, -1)
bobmods.plates.make_void_fluid_recipe("bob-hydrogen", 20, 0.1)
bobmods.plates.make_void_fluid_recipe("bob-nitrogen", 25, -0.2)
bobmods.plates.make_void_fluid_recipe("bob-chlorine", 25, 25)
bobmods.plates.make_void_fluid_recipe("bob-hydrogen-chloride", 25, 13)
bobmods.plates.make_void_fluid_recipe("bob-sulfur-dioxide", 25, 50)
bobmods.plates.make_void_fluid_recipe("steam", 10, 0)
bobmods.plates.make_void_fluid_recipe("petroleum-gas", 10, 35)
bobmods.plates.make_void_fluid_recipe("bob-deuterium", 20, 0.1)
bobmods.plates.make_void_fluid_recipe("bob-hydrogen-sulfide", 25, 50)
