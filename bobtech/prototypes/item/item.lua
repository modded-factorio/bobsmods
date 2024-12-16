local science_drop_move = {
  filename = "__base__/sound/item/science-inventory-move.ogg",
  volume = 0.6,
}
local science_pick = {
  filename = "__base__/sound/item/science-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "tool",
    name = "advanced-logistic-science-pack",
    localised_name = { "item-name.logistic-science-pack" },
    icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
    subgroup = "science-pack",
    order = "e[advanced-logistic-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    drop_sound = science_drop_move,
    inventory_move_sound = science_drop_move,
    pick_sound = science_pick,
  },
  {
    type = "item",
    name = "lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    subgroup = "production-machine",
    order = "z[lab]-2",
    place_result = "lab-2",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/lab-inventory-move.ogg",
      volume = 0.8,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/lab-inventory-move.ogg",
      volume = 0.8,
    },
    pick_sound = {
      filename = "__base__/sound/item/lab-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "tool",
      name = "steam-science-pack",
      icon = "__bobtech__/graphics/icons/steam-science-pack.png",
      subgroup = "science-pack",
      order = "0[steam-science-pack]",
      stack_size = 200,
      durability = 1,
      durability_description_key = "description.science-pack-remaining-amount-key",
      durability_description_value = "description.science-pack-remaining-amount-value",
      drop_sound = science_drop_move,
      inventory_move_sound = science_drop_move,
      pick_sound = science_pick,
    },
    {
      type = "item",
      name = "burner-lab",
      icon = "__bobtech__/graphics/icons/lab-red.png",
      subgroup = "production-machine",
      order = "z",
      place_result = "burner-lab",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/lab-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/lab-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/lab-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
  })
end

data.raw.tool["logistic-science-pack"].localised_name = { "item-name.transport-science-pack" }
