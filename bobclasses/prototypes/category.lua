data:extend({
  {
    type = "item-subgroup",
    name = "bob-bodies",
    group = "logistics",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "bob-body-parts",
    group = "intermediate-products",
    order = "e-e2",
  },
})

if data.raw["item-group"]["bob-logistics"] then
  data.raw["item-subgroup"]["bob-bodies"].group = "bob-logistics"
end
