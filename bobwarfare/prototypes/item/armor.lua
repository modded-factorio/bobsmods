--Remember when making any change to power armor to duplicate the edits in Bob's Personal Equipment mod

data.raw.armor["power-armor"].resistances = {
  {
    type = "physical",
    decrease = 8,
    percent = 30,
  },
  {
    type = "acid",
    decrease = 4,
    percent = 60,
  },
  {
    type = "explosion",
    decrease = 40,
    percent = 40,
  },
  {
    type = "poison",
    decrease = 2,
    percent = 30,
  },
  {
    type = "fire",
    decrease = 2,
    percent = 50,
  },
  {
    type = "laser",
    percent = 10,
  },
  {
    type = "electric",
    percent = 10,
  },
}

data.raw.armor["power-armor-mk2"].resistances = {
  {
    type = "physical",
    decrease = 10,
    percent = 40,
  },
  {
    type = "acid",
    decrease = 6,
    percent = 70,
  },
  {
    type = "explosion",
    decrease = 60,
    percent = 50,
  },
  {
    type = "poison",
    decrease = 4,
    percent = 40,
  },
  {
    type = "fire",
    decrease = 4,
    percent = 60,
  },
  {
    type = "laser",
    decrease = 5,
    percent = 20,
  },
  {
    type = "electric",
    decrease = 2,
    percent = 20,
  },
  {
    type = "bob-pierce",
    percent = 20,
  },
}

local make_armor = function(name)
  return [[
    game.simulation.camera_zoom = 4
    game.simulation.camera_position = {0.5, -0.25}
    local character = game.surfaces[1].create_entity{name = "character", position = {0.5, 0.5}, force = "player", direction = defines.direction.south}
    character.insert{name = "]] .. name .. [["}
  ]]
end

data:extend({
  {
    type = "armor",
    name = "bob-power-armor-mk3",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk3.png",
    icon_size = 32,
    factoriopedia_simulation = { init = make_armor("bob-power-armor-mk3") },
    resistances = {
      {
        type = "physical",
        decrease = 12,
        percent = 45,
      },
      {
        type = "acid",
        decrease = 8,
        percent = 75,
      },
      {
        type = "explosion",
        decrease = 60,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 10,
        percent = 30,
      },
      {
        type = "poison",
        decrease = 6,
        percent = 50,
      },
      {
        type = "fire",
        decrease = 6,
        percent = 70,
      },
      {
        type = "laser",
        decrease = 10,
        percent = 30,
      },
      {
        type = "bob-plasma",
        decrease = 20,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 5,
        percent = 30,
      },
      {
        type = "bob-pierce",
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
      volume = 0.7,
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7,
    },
    inventory_size_bonus = 40,
  },

  {
    type = "armor",
    name = "bob-power-armor-mk4",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk4.png",
    icon_size = 32,
    factoriopedia_simulation = { init = make_armor("bob-power-armor-mk4") },
    resistances = {
      {
        type = "physical",
        decrease = 15,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 12,
        percent = 80,
      },
      {
        type = "explosion",
        decrease = 60,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 15,
        percent = 40,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 60,
      },
      {
        type = "fire",
        decrease = 10,
        percent = 80,
      },
      {
        type = "laser",
        decrease = 15,
        percent = 40,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 40,
      },
      {
        type = "bob-pierce",
        percent = 35,
      },
      {
        type = "bob-plasma",
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
      volume = 0.7,
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7,
    },
    inventory_size_bonus = 50,
  },

  {
    type = "armor",
    name = "bob-power-armor-mk5",
    icon = "__bobwarfare__/graphics/icons/power-armor-mk5.png",
    icon_size = 32,
    factoriopedia_simulation = { init = make_armor("bob-power-armor-mk5") },
    resistances = {
      {
        type = "physical",
        decrease = 20,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 16,
        percent = 85,
      },
      {
        type = "explosion",
        decrease = 80,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 20,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 70,
      },
      {
        type = "fire",
        decrease = 15,
        percent = 90,
      },
      {
        type = "laser",
        decrease = 20,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 15,
        percent = 50,
      },
      {
        type = "bob-pierce",
        percent = 45,
      },
      {
        type = "bob-plasma",
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
      volume = 0.7,
    },
    inventory_size_bonus = {
      filename = "__base__/sound/item/armor-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
      volume = 0.7,
    },
    inventory_size_bonus = 60,
  },
})

table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk3")
table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk4")
table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk5")

data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk3"] = 3
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk4"] = 3
data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk5"] = 3
