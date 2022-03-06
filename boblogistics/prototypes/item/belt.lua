if settings.startup["bobmods-logistics-beltoverhaul"].value == true then

data:extend(
{
  {
    type = "item",
    name = "basic-transport-belt",
    icon = "__boblogistics__/graphics/icons/black-transport-belt.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-0",
    order = "a[transport-belt]-1[basic-transport-belt]",
    place_result = "basic-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "basic-underground-belt",
    icon = "__boblogistics__/graphics/icons/black-underground-belt.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-0",
    order = "b[underground-belt]-1[basic-underground-belt]",
    place_result = "basic-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-splitter",
    icon = "__boblogistics__/graphics/icons/black-splitter.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-0",
    order = "c[splitter]-1[basic-splitter]",
    place_result = "basic-splitter",
    stack_size = 50
  },
}
)
end

data:extend(
{
  {
    type = "item",
    name = "turbo-transport-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-4",
    order = "a[transport-belt]-d[turbo-transport-belt]",
    place_result = "turbo-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "turbo-underground-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-4",
    order = "b[underground-belt]-d[turbo-underground-belt]",
    place_result = "turbo-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "turbo-splitter",
    icon = "__boblogistics__/graphics/icons/purple-splitter.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-4",
    order = "c[splitter]-d[turbo-splitter]",
    place_result = "turbo-splitter",
    stack_size = 50
  },

  {
    type = "item",
    name = "ultimate-transport-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-5",
    order = "a[transport-belt]-e[ultimate-transport-belt]",
    place_result = "ultimate-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "ultimate-underground-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt-to-ground.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-5",
    order = "b[underground-belt]-e[ultimate-underground-belt]",
    place_result = "ultimate-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "ultimate-splitter",
    icon = "__boblogistics__/graphics/icons/green-splitter.png",
    icon_size = 32,
    
    subgroup = "bob-logistic-tier-5",
    order = "c[splitter]-e[ultimate-splitter]",
    place_result = "ultimate-splitter",
    stack_size = 50
  },
}
)
