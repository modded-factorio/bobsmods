-- Presets for Milestones mod
local function milestones_presets()
  local grouped_milestones = {}

  -- Resources
  grouped_milestones["resorces"] = {
    { type = "group", name = "Science" },
    { type = "item", name = "automation-science-pack", quantity = 1 },
    { type = "item", name = "logistic-science-pack", quantity = 1 },
    { type = "item", name = "military-science-pack", quantity = 1 },
    { type = "item", name = "chemical-science-pack", quantity = 1 },
    { type = "item", name = "production-science-pack", quantity = 1 },
    { type = "item", name = "utility-science-pack", quantity = 1 },
    { type = "item", name = "space-science-pack", quantity = 1 },
    { type = "item", name = "automation-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "logistic-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "military-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "chemical-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "production-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "utility-science-pack", quantity = 1000, next = "x10" },
    { type = "item", name = "space-science-pack", quantity = 10000, next = "x10" },

    { type = "group", name = "Resources" },
    script.active_mods["bobelectronics"] and { type = "item", name = "bob-basic-circuit-board", quantity = 1 } or nil,
    script.active_mods["bobelectronics"]
        and { type = "item", name = "bob-basic-circuit-board", quantity = 1000, next = "x10", hidden = true }
      or nil,
    { type = "item", name = "electronic-circuit", quantity = 1 },
    { type = "item", name = "electronic-circuit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "advanced-circuit", quantity = 1 },
    { type = "item", name = "advanced-circuit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "processing-unit", quantity = 1 },
    { type = "item", name = "processing-unit", quantity = 1000, next = "x10", hidden = true },
    { type = "item", name = "bob-advanced-processing-unit", quantity = 1 },
    { type = "item", name = "bob-advanced-processing-unit", quantity = 100, next = "x10", hidden = true },

    { type = "item", name = "iron-plate", quantity = 1 },
    { type = "item", name = "iron-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "copper-plate", quantity = 1 },
    { type = "item", name = "copper-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "steel-plate", quantity = 1 },
    { type = "item", name = "steel-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-tin-plate", quantity = 1 },
    { type = "item", name = "bob-tin-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-silver-plate", quantity = 1 },
    { type = "item", name = "bob-silver-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-lead-plate", quantity = 1 },
    { type = "item", name = "bob-lead-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-glass", quantity = 1 },
    { type = "item", name = "bob-glass", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-gold-plate", quantity = 1 },
    { type = "item", name = "bob-gold-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-cobalt-plate", quantity = 1 },
    { type = "item", name = "bob-cobalt-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-zinc-plate", quantity = 1 },
    { type = "item", name = "bob-zinc-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-silicon-plate", quantity = 1 },
    { type = "item", name = "bob-silicon-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-nickel-plate", quantity = 1 },
    { type = "item", name = "bob-nickel-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-aluminium-plate", quantity = 1 },
    { type = "item", name = "bob-aluminium-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-titanium-plate", quantity = 1 },
    { type = "item", name = "bob-titanium-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-tungsten-plate", quantity = 1 },
    { type = "item", name = "bob-tungsten-plate", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-bronze-alloy", quantity = 1 },
    { type = "item", name = "bob-bronze-alloy", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-brass-alloy", quantity = 1 },
    { type = "item", name = "bob-brass-alloy", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-copper-tungsten-alloy", quantity = 1 },
    { type = "item", name = "bob-copper-tungsten-alloy", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-tungsten-carbide", quantity = 1 },
    { type = "item", name = "bob-tungsten-carbide", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-gunmetal-alloy", quantity = 1 },
    { type = "item", name = "bob-gunmetal-alloy", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-invar-alloy", quantity = 1 },
    { type = "item", name = "bob-invar-alloy", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-nitinol-alloy", quantity = 1 },
    { type = "item", name = "bob-nitinol-alloy", quantity = 1000, next = "x10" },
    script.active_mods["bobelectronics"] and { type = "item", name = "bob-solder-alloy", quantity = 1 } or nil,
    { type = "item", name = "bob-cobalt-steel-alloy", quantity = 1 },
    script.active_mods["bobgreenhouse"] and { type = "item", name = "wood", quantity = 100, next = "x10" } or nil,
    { type = "item", name = "plastic-bar", quantity = 1 },
    { type = "item", name = "plastic-bar", quantity = 1000, next = "x10" },
    { type = "item", name = "bob-rubber", quantity = 1 },
    { type = "item", name = "bob-rubber", quantity = 1000, next = "x10" },
  }

  -- Progress
  grouped_milestones["progress"] = {
    { type = "group", name = "Progress" },
    { type = "item", name = "lab", quantity = 1 },
    { type = "item", name = "locomotive", quantity = 1 },
    { type = "fluid", name = "petroleum-gas", quantity = 1 },
    { type = "item", name = "construction-robot", quantity = 1 },
    { type = "item", name = "requester-chest", quantity = 1 },
    { type = "item", name = "beacon", quantity = 1 },
    script.active_mods["bobmodules"] and { type = "item", name = "bob-beacon-2", quantity = 1 } or nil,
    script.active_mods["bobmodules"] and { type = "item", name = "bob-beacon-3", quantity = 1 } or nil,
    { type = "technology", name = "rocket-silo", quantity = 1 },
    { type = "item", name = "rocket-part", quantity = 100 },
    { type = "item", name = "nuclear-reactor", quantity = 1 },
  }

  -- Kills
  grouped_milestones["kills"] = {
    { type = "group", name = "Kills" },
    { type = "kill", name = "medium-biter", quantity = 1 },
    { type = "kill", name = "big-biter", quantity = 1 },
    { type = "kill", name = "behemoth-biter", quantity = 1 },
    { type = "kill", name = "behemoth-biter", quantity = 1000, next = "x10" },
    { type = "kill", name = "character", quantity = 1, next = "x5", hidden = true },
  }

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Bob's Mods"] = {
      required_mods = { "bobplates" },
      forbidden_mods = { "angelsrefining" },
      milestones = milestones,
    },
  }
end

remote.add_interface("bobplates", {
  milestones_presets = milestones_presets,
  jetpack_fuels = function()
    return { ["bob-enriched-fuel"] = 0.8 }
  end,
})
