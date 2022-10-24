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
    order = "d-a",
  },
  {
    type = "item-subgroup",
    name = "bob-intermediates",
    group = "intermediate-products",
    order = "e-1",
  },
  {
    type = "item-subgroup",
    name = "bob-robot-parts",
    group = "intermediate-products",
    order = "e-e",
  },
  {
    type = "item-subgroup",
    name = "mech-parts",
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
    name = "laser-rifle",
  },
  {
    type = "ammo-category",
    name = "artillery-shell",
  },
  {
    type = "ammo-category",
    name = "tank-laser",
  },
  {
    type = "ammo-category",
    name = "beam-rifle",
  },
})

if data.raw["item-group"]["bob-intermediate-products"] then
  data.raw["item-subgroup"]["bob-ammo-parts"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-intermediates"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-robot-parts"].group = "bob-intermediate-products"
end

if data.raw["item-group"]["bob-resource-products"] then
  data.raw["item-subgroup"]["bob-resource"].group = "bob-resource-products"
end
