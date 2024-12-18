data:extend({
  {
    type = "armor",
    name = "heavy-armor-2",
    icon = "__bobwarfare__/graphics/icons/heavy-armor-2.png",
    icon_size = 32,

    resistances = {
      {
        type = "physical",
        decrease = 8,
        percent = 35,
      },
      {
        type = "acid",
        decrease = 7,
        percent = 35,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 40,
      },
      {
        type = "impact",
        percent = 100,
      },
      {
        type = "poison",
        percent = 10,
      },
      {
        type = "fire",
        percent = 10,
      },
      {
        type = "electric",
        percent = 30,
      },
      {
        type = "bob-pierce",
        decrease = 10,
        percent = 25,
      },
      {
        type = "laser",
        percent = 10,
      },
      {
        type = "plasma",
        percent = 50,
      },
    },
    subgroup = "armor",
    infinite = true,
    order = "c-a",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/armor-small-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/armor-small-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-small-inventory-pickup.ogg",
      volume = 0.7
    },
  },
  {
    type = "armor",
    name = "heavy-armor-3",
    icon = "__bobwarfare__/graphics/icons/heavy-armor-3.png",
    icon_size = 32,

    resistances = {
      {
        type = "physical",
        decrease = 12,
        percent = 45,
      },
      {
        type = "acid",
        decrease = 12,
        percent = 45,
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 50,
      },
      {
        type = "impact",
        percent = 100,
      },
      {
        type = "poison",
        percent = 25,
      },
      {
        type = "fire",
        percent = 25,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 50,
      },
      {
        type = "bob-pierce",
        decrease = 20,
        percent = 30,
      },
      {
        type = "laser",
        decrease = 10,
        percent = 30,
      },
      {
        type = "plasma",
        percent = 100,
      },
    },
    subgroup = "armor",
    infinite = true,
    order = "c-b",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/armor-small-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/armor-small-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-small-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "armor",
    name = "bob-power-armor-mk3",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk3.png",
    icon_size = 32,

    resistances = {
      {
        type = "physical",
        decrease = 12,
        percent = 45,
      },
      {
        type = "acid",
        decrease = 12,
        percent = 45,
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 10,
        percent = 30,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 30,
      },
      {
        type = "fire",
        decrease = 10,
        percent = 30,
      },
      {
        type = "laser",
        decrease = 10,
        percent = 30,
      },
      {
        type = "plasma",
        decrease = 20,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 30,
      },
      {
        type = "bob-pierce",
        decrease = 10,
        percent = 30,
      },
    },
    subgroup = "armor",
    infinite = true,
    order = "f[power-armor-mk3]",
    stack_size = 1,
    equipment_grid = "power-armor-equipment-grid-mk3",
    open_sound = "__base__/sound/armor-open.ogg",
    close_sound = "__base__/sound/armor-close.ogg",
    drop_sound = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7
    },
    inventory_size_bonus = 40,
  },

  {
    type = "armor",
    name = "bob-power-armor-mk4",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk4.png",
    icon_size = 32,

    resistances = {
      {
        type = "physical",
        decrease = 15,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 15,
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 15,
        percent = 40,
      },
      {
        type = "poison",
        decrease = 15,
        percent = 40,
      },
      {
        type = "fire",
        decrease = 15,
        percent = 40,
      },
      {
        type = "laser",
        decrease = 15,
        percent = 40,
      },
      {
        type = "electric",
        decrease = 15,
        percent = 40,
      },
      {
        type = "bob-pierce",
        decrease = 15,
        percent = 40,
      },
      {
        type = "plasma",
        decrease = 25,
        percent = 75,
      },
    },
    subgroup = "armor",
    infinite = true,
    order = "g[power-armor-mk4]",
    stack_size = 1,
    equipment_grid = "power-armor-equipment-grid-mk4",
    open_sound = "__base__/sound/armor-open.ogg",
    close_sound = "__base__/sound/armor-close.ogg",
    drop_sound = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7
    },
    inventory_size_bonus = 50,
  },

  {
    type = "armor",
    name = "bob-power-armor-mk5",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk5.png",
    icon_size = 32,

    resistances = {
      {
        type = "physical",
        decrease = 20,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 20,
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 20,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 20,
        percent = 50,
      },
      {
        type = "fire",
        decrease = 20,
        percent = 50,
      },
      {
        type = "laser",
        decrease = 20,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 20,
        percent = 50,
      },
      {
        type = "bob-pierce",
        decrease = 20,
        percent = 50,
      },
      {
        type = "plasma",
        percent = 100,
      },
    },
    subgroup = "armor",
    infinite = true,
    order = "h[power-armor-mk5]",
    stack_size = 1,
    equipment_grid = "power-armor-equipment-grid-mk5",
    open_sound = "__base__/sound/armor-open.ogg",
    close_sound = "__base__/sound/armor-close.ogg",
    drop_sound = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7
    },
    inventory_size_bonus = 60,
  },
})

table.insert(data.raw.character.character.animations[2].armors, "heavy-armor-2")
table.insert(data.raw.character.character.animations[2].armors, "heavy-armor-3")
table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk3")
table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk4")
table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk5")

data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["heavy-armor-2"] = 2
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["heavy-armor-3"] = 2
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk3"] = 3
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk4"] = 3
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk5"] = 3
