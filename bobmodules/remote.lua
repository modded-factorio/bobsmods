-- Presets for Milestones mod
local function milestones_preset_addons()
  local grouped_milestones = {}

  -- Kills
  grouped_milestones["modules"] = {
    { type = "group", name = "Resources" },
    { type = "item", name = "productivity-module", quantity = 1 },
    { type = "item", name = "productivity-module-2", quantity = 1 },
    { type = "item", name = "productivity-module-3", quantity = 1 },
    { type = "item", name = "bob-productivity-module-4", quantity = 1 },
    { type = "item", name = "bob-productivity-module-5", quantity = 1 },
    { type = "item", name = "bob-productivity-module-5", quantity = 100, next = "x10", hidden = true },
  }
  if prototypes.item["bob-god-module"] then
    table.insert(grouped_milestones["modules"],
      { type = "item", name = "bob-god-module", quantity = 1 })
    table.insert(grouped_milestones["modules"],
      { type = "alias", name = "bob-god-module-productivity", equals = "bob-god-module", quantity = 1 })
    if script.active_mods["quality"] then
      table.insert(grouped_milestones["modules"],
        { type = "alias", name = "bob-god-module-quality", equals = "bob-god-module", quantity = 1 })
    end
  end

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Bob's Modules"] = {
      required_mods = { "bobmodules" },
      forbidden_mods = { },
      milestones = milestones,
    },
  }
end

remote.add_interface("bobmodules", {
  milestones_preset_addons = milestones_preset_addons,
})
