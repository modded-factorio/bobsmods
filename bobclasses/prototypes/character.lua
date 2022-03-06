bobmods.classes.characters = {}

data.raw.character.character.fast_replaceable_group = "character"

data.raw.character.character.icon = "__bobclasses__/icons/character.png"
data.raw.character.character.icon_size = 128
data.raw.character.character.icon_mipmaps = 4


bobmods.classes.characters["bob-character-miner"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-miner",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, 0}
      } 
    },
    max_health = 200,
    healing_per_tick = 0.12,
--    crafting_categories = {"crafting", "smelting"},
    inventory_size = 80,
    build_distance = 8,
    reach_distance = 8,
    reach_resource_distance = 3.5,
    running_speed = 0.12,
    mining_speed = 1,
  }
}
table.insert(bobmods.classes.characters["bob-character-miner"].crafting_categories, "smelting")

bobmods.classes.characters["bob-character-fighter"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-fighter",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, 0}
      } 
    },
    max_health = 300,
    healing_per_tick = 0.18,
    inventory_size = 60,
    build_distance = 8,
    reach_distance = 8,
    running_speed = 0.2,
  }
}

bobmods.classes.characters["bob-character-builder"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-builder",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, 0}
      } 
    },
    max_health = 200,
    healing_per_tick = 0.12,
    inventory_size = 106,
    build_distance = 12,
    reach_distance = 12,
    running_speed = 0.12,
  }
}



bobmods.classes.characters["bob-character-balanced-2"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-balanced-2",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {8, 8}
      } 
    },
    max_health = 300,
    healing_per_tick = 0.18,

    crafting_categories = {"crafting"},
    mining_categories = {"basic-solid"},

    inventory_size = 100,

    build_distance = 12,
    reach_distance = 12,
    reach_resource_distance = 3.25,

    running_speed = 0.18,
    mining_speed = 0.6,
  }
}


bobmods.classes.characters["bob-character-miner-2"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-miner-2",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/miner.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, -8}
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {8, 8}
      } 
    },
    max_health = 250,
    healing_per_tick = 0.15,
--    crafting_categories = {"crafting", "smelting"},
    inventory_size = 100,
    build_distance = 10,
    reach_distance = 10,
    reach_resource_distance = 4.2,
    running_speed = 0.15,
    mining_speed = 1.2,
  }
}
table.insert(bobmods.classes.characters["bob-character-miner-2"].crafting_categories, "smelting")

bobmods.classes.characters["bob-character-fighter-2"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-fighter-2",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, -8}
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {8, 8}
      } 
    },
    max_health = 375,
    healing_per_tick = 0.225,
    inventory_size = 80,
    build_distance = 10,
    reach_distance = 10,
    reach_resource_distance = 3.25,
    running_speed = 0.24,
    mining_speed = 0.6,
  }
}

bobmods.classes.characters["bob-character-builder-2"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-builder-2",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, -8}
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {8, 8}
      } 
    },
    max_health = 250,
    healing_per_tick = 0.15,
    inventory_size = 133,
    build_distance = 15,
    reach_distance = 15,
    reach_resource_distance = 3.25,
    running_speed = 0.15,
    mining_speed = 0.6,
  }
}



bobmods.classes.characters["bob-character-engineer"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-engineer",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/engineer.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, 0}
      },
    },
    max_health = 250,
    healing_per_tick = 0.15,
--    crafting_categories = {"crafting", "smelting"},
    inventory_size = 100,
    build_distance = 12,
    reach_distance = 12,
    reach_resource_distance = 3.5,
    running_speed = 0.15,
    mining_speed = 1,
  }
}
table.insert(bobmods.classes.characters["bob-character-engineer"].crafting_categories, "smelting")

bobmods.classes.characters["bob-character-prospector"] = util.merge{data.raw.character.character,
  {
    name = "bob-character-prospector",
    icons =
    {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        icon_mipmaps = 4,
        shift = {-5, 0}
      },
      {
        icon = "__bobclasses__/icons/prospector.png",
        icon_size = 32,
        scale = 0.5,
        shift = {8, 0}
      },
    },
    max_health = 300,
    healing_per_tick = 0.18,
--    crafting_categories = {"crafting", "smelting"},
    inventory_size = 80,
    build_distance = 10,
    reach_distance = 10,
    reach_resource_distance = 3.5,
    running_speed = 0.18,
    mining_speed = 1,
  }
}
table.insert(bobmods.classes.characters["bob-character-prospector"].crafting_categories, "smelting")


for index, character in pairs(bobmods.classes.characters) do
  data:extend{
    bobmods.classes.characters[index]
  }
end



--[[DEFAULTS
  {
    name = "character",

    max_health = 250,
    healing_per_tick = 0.15,

    crafting_categories = {"crafting"},
    mining_categories = {"basic-solid"},

    inventory_size = 80,

    build_distance = 10,
    reach_distance = 10,
    reach_resource_distance = 2.7,

    drop_item_distance = 10,
    item_pickup_distance = 1,
    loot_pickup_distance = 2,

    running_speed = 0.15,

    mining_speed = 0.5,
  },
]]--

