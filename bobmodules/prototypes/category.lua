data:extend({
  {
    type = "module-category",
    name = "pollution-clean",
  },
  {
    type = "module-category",
    name = "pollution-create",
  },
  {
    type = "module-category",
    name = "god",
  },
})

data:extend({
  {
    type = "item-group",
    name = "bobmodules",
    order = "b-m",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 256,
  },

  {
    type = "item-subgroup",
    name = "bob-module-intermediates-1",
    group = "bobmodules",
    order = "f-00",
  },
  {
    type = "item-subgroup",
    name = "bob-module-intermediates-2",
    group = "bobmodules",
    order = "f-01",
  },
  {
    type = "item-subgroup",
    name = "bob-module-intermediates-3",
    group = "bobmodules",
    order = "f-02",
  },
  {
    type = "item-subgroup",
    name = "bob-module-intermediates-4",
    group = "bobmodules",
    order = "f-03",
  },
  {
    type = "item-subgroup",
    name = "speed-module",
    group = "bobmodules",
    order = "f-04",
  },
  {
    type = "item-subgroup",
    name = "efficiency-module",
    group = "bobmodules",
    order = "f-05",
  },
  {
    type = "item-subgroup",
    name = "productivity-module",
    group = "bobmodules",
    order = "f-06",
  },
  {
    type = "item-subgroup",
    name = "pollution-clean-module",
    group = "bobmodules",
    order = "f-07",
  },
  {
    type = "item-subgroup",
    name = "pollution-create-module",
    group = "bobmodules",
    order = "f-08",
  },
  {
    type = "item-subgroup",
    name = "god-module",
    group = "bobmodules",
    order = "f-aa",
  },
  {
    type = "item-subgroup",
    name = "module-beacon",
    group = "bobmodules",
    order = "f-zz",
  },
})

if mods["quality"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "quality-module",
      group = "bobmodules",
      order = "f-09",
    },
  })
end
