local smallammopartsound = {
  filename = "__base__/sound/item/ammo-small-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "item",
    name = "bob-petroleum-jelly",
    icon = "__bobwarfare__/graphics/icons/petroleum-jelly.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[petroleum-jelly]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/raw-fish-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/raw-fish-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/raw-fish-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-gun-cotton",
    icon = "__bobwarfare__/graphics/icons/gun-cotton.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[gun-cotton]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/explosive-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "item",
    name = "bob-cordite",
    icon = "__bobwarfare__/graphics/icons/cordite.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fb1",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/explosive-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "item",
    name = "bob-bullet-casing",
    icon = "__bobwarfare__/graphics/icons/bullet-casing.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fb2",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-magazine",
    icon = "__bobwarfare__/graphics/icons/magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fb3",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc1",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-bullet",
    icon = "__bobwarfare__/graphics/icons/bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd1",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-ap-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/ap-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc2",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-ap-bullet",
    icon = "__bobwarfare__/graphics/icons/ap-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd2",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-he-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/he-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc5",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-he-bullet",
    icon = "__bobwarfare__/graphics/icons/he-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd5",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-flame-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/flame-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc7",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-flame-bullet",
    icon = "__bobwarfare__/graphics/icons/flame-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd7",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-acid-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/acid-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc4",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-acid-bullet",
    icon = "__bobwarfare__/graphics/icons/acid-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd4",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-poison-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/poison-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc6",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-poison-bullet",
    icon = "__bobwarfare__/graphics/icons/poison-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd6",
    stack_size = 100,
  },

  {
    type = "item",
    name = "bob-electric-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/electric-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc3",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-electric-bullet",
    icon = "__bobwarfare__/graphics/icons/electric-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd3",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-uranium-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/uranium-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc8",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-uranium-bullet",
    icon = "__bobwarfare__/graphics/icons/uranium-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd8",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-shotgun-shell-casing",
    icon = "__bobwarfare__/graphics/icons/shotgun-shell-casing.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fe2",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-shot",
    icon = "__bobwarfare__/graphics/icons/shot.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fe1",
    stack_size = 500,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-laser-rifle-battery-case",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-case.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fi",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-rocket-engine",
    icon = "__bobwarfare__/graphics/icons/rocket-engine.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "m[rocket-engine]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-rocket-body",
    icon = "__bobwarfare__/graphics/icons/rocket-body.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fg",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh1",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-piercing-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-pierce.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh2",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-electric-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-electric.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh3",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-explosive-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-explosive.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh5",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-acid-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-acid.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh4",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-flame-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-fire.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh7",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-poison-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-poison.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh6",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-plasma-bullet-projectile",
    icon = "__bobwarfare__/graphics/icons/plasma-bullet-projectile.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fc9",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-plasma-bullet",
    icon = "__bobwarfare__/graphics/icons/plasma-bullet.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fd9",
    stack_size = 100,
    drop_sound = smallammopartsound,
    inventory_move_sound = smallammopartsound,
    pick_sound = smallammopartsound,
  },

  {
    type = "item",
    name = "bob-plasma-rocket-warhead",
    icon = "__bobwarfare__/graphics/icons/missile-warhead-plasma.png",
    icon_size = 32,
    subgroup = "bob-ammo-parts",
    order = "fh8",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})
