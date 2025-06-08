-- Presets for Milestones mod
local function milestones_preset_addons()
  local grouped_milestones = {}

  -- Kills
  grouped_milestones["kills"] = {
    { type = "group", name = "Resources" },
    { type = "item", name = "bob-basic-circuit-board", quantity = 1 },
    { type = "item", name = "bob-basic-circuit-board", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "electronic-circuit", quantity = 1, next = "x10" },
    { type = "item", name = "electronic-circuit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "advanced-circuit", quantity = 1 },
    { type = "item", name = "advanced-circuit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "processing-unit", quantity = 1 },
    { type = "item", name = "processing-unit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "bob-advanced-processing-unit", quantity = 1 },
    { type = "item", name = "bob-advanced-processing-unit", quantity = 100, next = "x10", hidden = true },
  }

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Bob's Electronics"] = {
      required_mods = { "bobelectronics" },
      forbidden_mods = { "bobplates", "angelsrefining" },
      milestones = milestones,
    },
  }
end

remote.add_interface("bobelectronics", {
  milestones_preset_addons = milestones_preset_addons,
})
