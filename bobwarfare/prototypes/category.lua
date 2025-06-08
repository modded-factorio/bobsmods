data:extend({
  {
    type = "item-subgroup",
    name = "bob-resource",
    group = "intermediate-products",
    order = "b-b",
  },
  {
    type = "item-subgroup",
    name = "bob-ammo-parts",
    group = "intermediate-products",
    order = "x-a",
  },
  {
    type = "item-subgroup",
    name = "bob-robot-parts",
    group = "intermediate-products",
    order = "e-e",
  },
  {
    type = "item-subgroup",
    name = "bob-mech-parts",
    group = "intermediate-products",
    order = "e-f",
  },

  {
    type = "item-subgroup",
    name = "bob-gun",
    group = "combat",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-ammo",
    group = "combat",
    order = "b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-capsule",
    group = "combat",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "bob-combat-robots",
    group = "combat",
    order = "c-b",
  },
  {
    type = "item-subgroup",
    name = "bob-armor",
    group = "combat",
    order = "d-a",
  },
  {
    type = "item-subgroup",
    name = "bob-equipment",
    group = "combat",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "bob-defensive-structure",
    group = "combat",
    order = "f-a",
  },
})

data:extend({
  {
    type = "ammo-category",
    name = "bob-laser-rifle",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-ammo-category.png",
    icon_size = 32,
    subgroup = "ammo-category",
  },
})

if data.raw["item-group"]["bob-resource-products"] then
  data.raw["item-subgroup"]["bob-resource"].group = "bob-resource-products"
end
