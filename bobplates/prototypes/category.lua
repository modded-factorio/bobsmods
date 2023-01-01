data:extend({
  {
    type = "recipe-category",
    name = "electrolysis",
  },
  {
    type = "recipe-category",
    name = "chemical-furnace",
  },
  {
    type = "recipe-category",
    name = "mixing-furnace",
  },
  {
    type = "recipe-category",
    name = "air-pump",
  },
  {
    type = "recipe-category",
    name = "water-pump",
  },
  {
    type = "recipe-category",
    name = "barrelling",
  },
  {
    type = "recipe-category",
    name = "void",
  },
  {
    type = "recipe-category",
    name = "void-fluid",
  },
  {
    type = "recipe-category",
    name = "crafting-machine",
  },
  {
    type = "recipe-category",
    name = "distillery",
  },

  {
    type = "item-group",
    name = "bob-logistics",
    order = "aaa-a",
    icon = "__bobplates__/graphics/icons/technology/logistics.png",
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
    name = "bob-belt",
    group = "bob-logistics",
    order = "b-a",
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
    order = "d-a-1",
  },
  {
    type = "item-subgroup",
    name = "pipe-to-ground",
    group = "bob-logistics",
    order = "d-a-2",
  },
  {
    type = "item-subgroup",
    name = "bob-transport",
    group = "bob-logistics",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-robots",
    group = "bob-logistics",
    order = "f-a",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport",
    group = "bob-logistics",
    order = "f-b",
  },

  {
    type = "item-subgroup",
    name = "bob-tool",
    group = "production",
    order = "a-1",
  },
  {
    type = "item-subgroup",
    name = "bob-energy-boiler",
    group = "production",
    order = "b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-energy-steam-engine",
    group = "production",
    order = "b-b",
  },
  {
    type = "item-subgroup",
    name = "bob-energy-solar-panel",
    group = "production",
    order = "b-c",
  },
  {
    type = "item-subgroup",
    name = "bob-energy-accumulator",
    group = "production",
    order = "b-d",
  },
  {
    type = "item-subgroup",
    name = "bob-extraction-machine",
    group = "production",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "bob-pump",
    group = "production",
    order = "c-b",
  },
  {
    type = "item-subgroup",
    name = "bob-smelting-machine",
    group = "production",
    order = "d-a",
  },
  {
    type = "item-subgroup",
    name = "bob-base-smelting-machine-convert",
    group = "production",
    order = "d-2",
  },
  {
    type = "item-subgroup",
    name = "bob-smelting-machine-convert",
    group = "production",
    order = "d-a-2",
  },
  {
    type = "item-subgroup",
    name = "bob-production-machine",
    group = "production",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "bob-assembly-machine",
    group = "production",
    order = "e-b",
  },
  {
    type = "item-subgroup",
    name = "bob-chemical-machine",
    group = "production",
    order = "e-c",
  },
  {
    type = "item-subgroup",
    name = "bob-electrolyser-machine",
    group = "production",
    order = "e-d",
  },
  {
    type = "item-subgroup",
    name = "bob-refinery-machine",
    group = "production",
    order = "e-e",
  },

  {
    type = "item-group",
    name = "bob-fluid-products",
    order = "c-f",
    icon = "__bobplates__/graphics/icons/technology/fluids.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-fluid",
    group = "bob-fluid-products",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-fluid-electrolysis",
    group = "bob-fluid-products",
    order = "a-b",
  },
  {
    type = "item-subgroup",
    name = "bob-fluid-pump",
    group = "bob-fluid-products",
    order = "a-c",
  },
  {
    type = "item-subgroup",
    name = "bob-gas-bottle",
    group = "bob-fluid-products",
    order = "a-d",
  },
  {
    type = "item-subgroup",
    name = "bob-empty-gas-bottle",
    group = "bob-fluid-products",
    order = "a-d2",
  },
  {
    type = "item-subgroup",
    name = "bob-barrel",
    group = "bob-fluid-products",
    order = "a-e",
  },
  {
    type = "item-subgroup",
    name = "bob-empty-barrel",
    group = "bob-fluid-products",
    order = "a-e2",
  },
  {
    type = "item-subgroup",
    name = "bob-canister",
    group = "bob-fluid-products",
    order = "a-f",
  },
  {
    type = "item-subgroup",
    name = "bob-empty-canister",
    group = "bob-fluid-products",
    order = "a-f2",
  },

  {
    type = "item-group",
    name = "bob-resource-products",
    order = "c-g",
    icon = "__bobplates__/graphics/icons/technology/resources.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-ores",
    group = "bob-resource-products",
    order = "b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-resource",
    group = "bob-resource-products",
    order = "b-b",
  },
  {
    type = "item-subgroup",
    name = "bob-resource-chemical",
    group = "bob-resource-products",
    order = "b-b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-material",
    group = "bob-resource-products",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "bob-material-smelting",
    group = "bob-resource-products",
    order = "c-a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-material-chemical",
    group = "bob-resource-products",
    order = "c-a-b",
  },
  {
    type = "item-subgroup",
    name = "bob-material-electrolysis",
    group = "bob-resource-products",
    order = "c-a-c",
  },
  {
    type = "item-subgroup",
    name = "bob-alloy",
    group = "bob-resource-products",
    order = "c-b",
  },
  {
    type = "item-subgroup",
    name = "bob-alien-resource",
    group = "bob-resource-products",
    order = "c-c",
  },

  {
    type = "item-group",
    name = "bob-intermediate-products",
    order = "c-i",
    icon = "__bobplates__/graphics/icons/technology/intermediates.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "bob-intermediates",
    group = "bob-intermediate-products",
    order = "e-1",
  },
  {
    type = "item-subgroup",
    name = "bob-electronic-components",
    group = "bob-intermediate-products",
    order = "e-a1",
  },
  {
    type = "item-subgroup",
    name = "bob-boards",
    group = "bob-intermediate-products",
    order = "e-a2",
  },
  {
    type = "item-subgroup",
    name = "bob-electronic-boards",
    group = "bob-intermediate-products",
    order = "e-a3",
  },
  {
    type = "item-subgroup",
    name = "bob-gears",
    group = "bob-intermediate-products",
    order = "e-b",
  },
  {
    type = "item-subgroup",
    name = "bob-bearings",
    group = "bob-intermediate-products",
    order = "e-c",
  },
  {
    type = "item-subgroup",
    name = "bob-roboport-parts",
    group = "bob-intermediate-products",
    order = "e-d",
  },
  {
    type = "item-subgroup",
    name = "bob-nuclear",
    group = "intermediate-products",
    order = "f-a",
  },
  {
    type = "item-subgroup",
    name = "bob-fuel-cells",
    group = "intermediate-products",
    order = "f-b",
  },

  {
    type = "item-group",
    name = "void",
    order = "aaaaa",
    icon = "__bobplates__/graphics/icons/technology/void.png",
    icon_size = 128,
  },
  {
    type = "item-subgroup",
    name = "void",
    group = "void",
    order = "a-a",
  },
})

data:extend({
  {
    type = "item-group",
    name = "bob-gems",
    order = "d-g",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "bob-gems-ore",
    group = "bob-gems",
    order = "2",
  },
  {
    type = "item-subgroup",
    name = "bob-gems-raw",
    group = "bob-gems",
    order = "4",
  },
  {
    type = "item-subgroup",
    name = "bob-gems-cut",
    group = "bob-gems",
    order = "5",
  },
  {
    type = "item-subgroup",
    name = "bob-gems-polished",
    group = "dytechgem",
    group = "bob-gems",
    order = "6",
  },
})

if data.raw["item-group"]["dytechgem"] then
  data.raw["item-subgroup"]["bob-gems-ore"].group = "dytechgem"
  data.raw["item-subgroup"]["bob-gems-raw"].group = "dytechgem"
  data.raw["item-subgroup"]["bob-gems-cut"].group = "dytechgem"
  data.raw["item-subgroup"]["bob-gems-polished"].group = "dytechgem"
end
