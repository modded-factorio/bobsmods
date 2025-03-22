data.raw["item-subgroup"]["logistic-network"].group = "bob-logistics"
data.raw["item-subgroup"]["train-transport"].group = "bob-logistics"
data.raw["item-subgroup"]["transport"].group = "bob-logistics"

data:extend({
  {
    type = "item-group",
    name = "bob-logistics",
    order = "aaa-a",
    icon = "__boblogistics__/graphics/icons/technology/logistics.png",
    icon_size = 128,
  },

  {
    type = "item-subgroup",
    name = "bob-storage-tank",
    group = "logistics",
    order = "e-3",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-0",
    group = "logistics",
    order = "b-0",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-1",
    group = "logistics",
    order = "b-1",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-2",
    group = "logistics",
    order = "b-2",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-3",
    group = "logistics",
    order = "b-3",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-4",
    group = "logistics",
    order = "b-4",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-5",
    group = "logistics",
    order = "b-5",
  },
  {
    type = "item-subgroup",
    name = "bob-pipe",
    group = "logistics",
    order = "e-1",
  },
  {
    type = "item-subgroup",
    name = "bob-pipe-to-ground",
    group = "logistics",
    order = "e-2",
  },
  {
    type = "item-subgroup",
    name = "bob-locomotive",
    group = "bob-logistics",
    order = "e-a1",
  },
  {
    type = "item-subgroup",
    name = "bob-cargo-wagon",
    group = "bob-logistics",
    order = "e-a2",
  },
  {
    type = "item-subgroup",
    name = "bob-fluid-wagon",
    group = "bob-logistics",
    order = "e-a3",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-chests-2",
    group = "bob-logistics",
    order = "g-2",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-chests-3",
    group = "bob-logistics",
    order = "g-3",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-robots",
    group = "bob-logistics",
    order = "f-a",
  },
  {
    type = "item-subgroup",
    name = "bob-construction-robots",
    group = "bob-logistics",
    order = "f-a2",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport",
    group = "bob-logistics",
    order = "f-b",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport-zone",
    group = "bob-logistics",
    order = "f-b1",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport-chest",
    group = "bob-logistics",
    order = "f-b2",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport-charge",
    group = "bob-logistics",
    order = "f-b3",
  },

  {
    type = "item-subgroup",
    name = "bob-roboport-parts",
    group = "intermediate-products",
    order = "e-d",
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-antenna",
    group = "intermediate-products",
    order = "e-d1",
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-door",
    group = "intermediate-products",
    order = "e-d2",
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-charge",
    group = "intermediate-products",
    order = "e-d3",
  },

  {
    type = "item-subgroup",
    name = "bob-robot-parts",
    group = "intermediate-products",
    order = "e-e",
  },
})
