-- Presets for Milestones mod
local function milestones_preset_addons()
  local grouped_milestones = {}

  -- Resources
  grouped_milestones["resorces"] = {
    { type = "group", name = "Science" },
    --    { type="item",       name = "automation-science-pack",            quantity = 1 },
    --    { type="item",       name = "logistic-science-pack",              quantity = 1 },
    --    { type="item",       name = "military-science-pack",              quantity = 1 },
    --    { type="item",       name = "chemical-science-pack",              quantity = 1 },
    --    { type="item",       name = "production-science-pack",            quantity = 1 },
    { type = "item", name = "bob-advanced-logistic-science-pack", quantity = 1 },
    --    { type="item",       name = "utility-science-pack",               quantity = 1 },
    --    { type="item",       name = "space-science-pack",                 quantity = 1 },
    --    { type="item",       name = "automation-science-pack",            quantity = 1000, next = "x10" },
    --    { type="item",       name = "logistic-science-pack",              quantity = 1000, next = "x10" },
    --    { type="item",       name = "military-science-pack",              quantity = 1000, next = "x10" },
    --    { type="item",       name = "chemical-science-pack",              quantity = 1000, next = "x10" },
    --    { type="item",       name = "production-science-pack",            quantity = 1000, next = "x10" },
    { type = "item", name = "bob-advanced-logistic-science-pack", quantity = 1000, next = "x10" },
    --    { type="item",       name = "utility-science-pack",               quantity = 1000, next = "x10" },
    --    { type="item",       name = "space-science-pack",                 quantity = 10000, next = "x10" },
  }

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Bob's Tech"] = {
      required_mods = { "bobtech" },
      forbidden_mods = { "SeaBlock", "ScienceCostTweakerM", "angelsindustries" },
      milestones = milestones,
    },
  }
end

remote.add_interface("bobtech", {
  milestones_preset_addons = milestones_preset_addons,
})
