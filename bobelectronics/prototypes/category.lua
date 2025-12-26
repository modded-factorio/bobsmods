data:extend({
  {
    type = "item-subgroup",
    name = "bob-resource",
    group = "intermediate-products",
    order = "e-a1",
  },
  {
    type = "item-subgroup",
    name = "bob-electronic-components",
    group = "intermediate-products",
    order = "e-a2",
  },
  {
    type = "item-subgroup",
    name = "bob-boards",
    group = "intermediate-products",
    order = "e-a3",
  },
  {
    type = "item-subgroup",
    name = "bob-electronic-boards",
    group = "intermediate-products",
    order = "e-a4",
  },
})

if data.raw["item-group"]["bob-resource-products"] then
  data.raw["item-subgroup"]["bob-resource"].group = "bob-resource-products"
  data.raw["item-subgroup"]["bob-resource"].order = "b-b"
end
