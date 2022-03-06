data:extend(
{
  {
    type = "recipe-category",
    name = "crafting-machine"
  },
  {
    type = "recipe-category",
    name = "electronics"
  },
  {
    type = "recipe-category",
    name = "electronics-machine"
  },


  {
    type = "item-group",
    name = "bob-fluid-products",
    order = "c-f",
    inventory_order = "a-a",
    icon = "__bobelectronics__/graphics/icons/technology/fluids.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-fluid",
    group = "bob-fluid-products",
    order = "a-a"
  },


  {
    type = "item-group",
    name = "bob-resource-products",
    order = "c-g",
    inventory_order = "a-b",
    icon = "__bobelectronics__/graphics/icons/technology/resources.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-resource",
    group = "bob-resource-products",
    order = "b-b"
  },
  {
    type = "item-subgroup",
    name = "bob-resource-chemical",
    group = "bob-resource-products",
    order = "b-b-a"
  },
  {
    type = "item-subgroup",
    name = "bob-material-smelting",
    group = "bob-resource-products",
    order = "c-a-a"
  },
  {
    type = "item-subgroup",
    name = "bob-material-chemical",
    group = "bob-resource-products",
    order = "c-a-b"
  },
  {
    type = "item-subgroup",
    name = "bob-alloy",
    group = "bob-resource-products",
    order = "c-b"
  },


  {
    type = "item-group",
    name = "bob-intermediate-products",
    order = "c-i",
    inventory_order = "a-c",
    icon = "__bobelectronics__/graphics/icons/technology/intermediates.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-electronic-components",
    group = "bob-intermediate-products",
    order = "e-a1"
  },
  {
    type = "item-subgroup",
    name = "bob-boards",
    group = "bob-intermediate-products",
    order = "e-a2"
  },
  {
    type = "item-subgroup",
    name = "bob-electronic-boards",
    group = "bob-intermediate-products",
    order = "e-a3"
  },
}
)
