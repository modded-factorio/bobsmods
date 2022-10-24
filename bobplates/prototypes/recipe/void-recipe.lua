function bobmods.plates.get_void_icon(name)
  local icons = bobmods.lib.icons_from_item(data.raw.item.void)
  return util.combine_icons(icons, bobmods.lib.icons_from_item(data.raw.fluid[name]), { scale = 0.5 })
end

function bobmods.plates.make_void_fluid_recipe(name, amount, polution)
  if type(name) == "string" and data.raw.fluid[name] then
    data:extend({
      {
        type = "recipe",
        name = "void-" .. name,
        icons = bobmods.plates.get_void_icon(name),
        subgroup = "void",
        order = name,
        category = "void-fluid",
        hide_from_player_crafting = true,
        energy_required = 1,
        ingredients = {
          { type = "fluid", name = name, amount = amount or 25 },
        },
        results = {
          { type = "item", name = "void", amount = 1, probability = 0 },
        },
        emissions_multiplier = polution,
      },
    })
  else
    bobmods.lib.error.item_of_type(name, "fluid", "Fluid")
  end
end

bobmods.plates.make_void_fluid_recipe("oxygen", 25, -1)
bobmods.plates.make_void_fluid_recipe("hydrogen", 20, 0.1)
bobmods.plates.make_void_fluid_recipe("nitrogen", 25, -0.2)
bobmods.plates.make_void_fluid_recipe("chlorine", 25, 25)
bobmods.plates.make_void_fluid_recipe("hydrogen-chloride", 25, 13)
bobmods.plates.make_void_fluid_recipe("sulfur-dioxide", 25, 50)
bobmods.plates.make_void_fluid_recipe("steam", 10, 0)
bobmods.plates.make_void_fluid_recipe("petroleum-gas", 10, 35)
bobmods.plates.make_void_fluid_recipe("deuterium", 20, 0.1)
bobmods.plates.make_void_fluid_recipe("hydrogen-sulfide", 25, 50)
