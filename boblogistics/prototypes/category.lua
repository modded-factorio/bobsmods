data:extend(
{
   {
    type = "item-group",
    name = "bob-logistics",
    order = "aaa-a",
    inventory_order = "c-a",
    icon = "__boblogistics__/graphics/icons/technology/logistics.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-storage",
    group = "bob-logistics",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-storage-tank",
    group = "logistics",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-belt",
    group = "bob-logistics",
    order = "b-a",
  },

  {
    type = "item-subgroup",
    name = "bob-logistic-tier-0",
    group = "bob-logistics",
    order = "b-0",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-1",
    group = "bob-logistics",
    order = "b-1",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-2",
    group = "bob-logistics",
    order = "b-2",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-3",
    group = "bob-logistics",
    order = "b-3",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-4",
    group = "bob-logistics",
    order = "b-4",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-tier-5",
    group = "bob-logistics",
    order = "b-5",
  },

  {
    type = "item-subgroup",
    name = "bob-smart-inserter",
    group = "bob-logistics",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "bob-purple-inserter",
    group = "bob-logistics",
    order = "c-c",
  },
  {
    type = "item-subgroup",
    name = "pipe",
    group = "bob-logistics",
    order = "d-a-1"
  },
  {
    type = "item-subgroup",
    name = "pipe-to-ground",
    group = "bob-logistics",
    order = "d-a-2"
  },
  {
    type = "item-subgroup",
    name = "bob-transport",
    group = "bob-logistics",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "bob-locomotive",
    group = "logistics",
    order = "e-a1",
  },
  {
    type = "item-subgroup",
    name = "bob-cargo-wagon",
    group = "logistics",
    order = "e-a2",
  },
  {
    type = "item-subgroup",
    name = "bob-fluid-wagon",
    group = "logistics",
    order = "e-a3",
  },
  {
    type = "item-subgroup",
    name = "logistic-chests-2",
    group = "logistics",
    order = "f-2",
  },
  {
    type = "item-subgroup",
    name = "logistic-chests-3",
    group = "logistics",
    order = "f-3",
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
    order = "e-d"
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-antenna",
    group = "intermediate-products",
    order = "e-d1"
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-door",
    group = "intermediate-products",
    order = "e-d2"
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts-charge",
    group = "intermediate-products",
    order = "e-d3"
  },

  {
    type = "item-subgroup",
    name = "bob-robot-parts",
    group = "intermediate-products",
    order = "e-e"
  },
}
)

if data.raw["item-group"]["bob-intermediate-products"] then
  data.raw["item-subgroup"]["bob-roboport-parts"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-roboport-parts-antenna"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-roboport-parts-door"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-roboport-parts-charge"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-robot-parts"].group = "bob-intermediate-products"
end

