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
    name = "green",
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
    name = "module-intermediates",
    group = "bobmodules",
    order = "f-0",
  },
  {
    type = "item-subgroup",
    name = "speed-module",
    group = "bobmodules",
    order = "f-1",
  },
  {
    type = "item-subgroup",
    name = "efficiency-module",
    group = "bobmodules",
    order = "f-2",
  },
  {
    type = "item-subgroup",
    name = "productivity-module",
    group = "bobmodules",
    order = "f-3",
  },
  {
    type = "item-subgroup",
    name = "pollution-create-module",
    group = "bobmodules",
    order = "f-4",
  },
  {
    type = "item-subgroup",
    name = "pollution-clean-module",
    group = "bobmodules",
    order = "f-5",
  },
  {
    type = "item-subgroup",
    name = "god-module",
    group = "bobmodules",
    order = "f-9",
  },
  {
    type = "item-subgroup",
    name = "module-beacon",
    group = "bobmodules",
    order = "f-z",
  },
})

if mods["quality"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "quality-module",
      group = "bobmodules",
      order = "f-6",
    },
  })
end
