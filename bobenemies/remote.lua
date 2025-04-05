-- Presets for Milestones mod
local function milestones_preset_addons()
  local grouped_milestones = {}

  -- Kills
  grouped_milestones["kills"] = {
    { type = "group", name = "Kills" },
    { type = "kill", name = "small-biter", quantity = 1 },
    { type = "kill", name = "small-biter", quantity = 1000 , next = "x10" },
    { type = "alias", name = "bob-small-piercing-biter" , equals = "small-biter", quantity = 1 },
    { type = "alias", name = "bob-small-electric-biter" , equals = "small-biter", quantity = 1 },
    { type = "alias", name = "bob-small-acid-biter"     , equals = "small-biter", quantity = 1 },
    { type = "alias", name = "bob-small-explosive-biter", equals = "small-biter", quantity = 1 },
    { type = "alias", name = "bob-small-poison-biter"   , equals = "small-biter", quantity = 1 },
    { type = "alias", name = "bob-small-fire-biter", equals = "small-biter", quantity = 1 },
    --{ type = "kill", name = "medium-biter", quantity = 1 },
    { type = "kill", name = "medium-biter", quantity = 1000 , next = "x10" },
    { type = "alias", name = "bob-medium-piercing-biter" , equals = "medium-biter", quantity = 1 },
    { type = "alias", name = "bob-medium-electric-biter" , equals = "medium-biter", quantity = 1 },
    { type = "alias", name = "bob-medium-acid-biter"     , equals = "medium-biter", quantity = 1 },
    { type = "alias", name = "bob-medium-explosive-biter", equals = "medium-biter", quantity = 1 },
    { type = "alias", name = "bob-medium-poison-biter"   , equals = "medium-biter", quantity = 1 },
    { type = "alias", name = "bob-medium-fire-biter"     , equals = "medium-biter", quantity = 1 },
    --{ type = "kill", name = "big-biter", quantity = 1 },
    { type = "kill", name = "big-biter", quantity = 1000, next = "x10" },
    { type = "alias", name = "bob-big-piercing-biter" , equals = "big-biter", quantity = 1 },
    { type = "alias", name = "bob-big-electric-biter" , equals = "big-biter", quantity = 1 },
    { type = "alias", name = "bob-big-acid-biter"     , equals = "big-biter", quantity = 1 },
    { type = "alias", name = "bob-big-explosive-biter", equals = "big-biter", quantity = 1 },
    { type = "alias", name = "bob-big-poison-biter"   , equals = "big-biter", quantity = 1 },
    { type = "alias", name = "bob-big-fire-biter"     , equals = "big-biter", quantity = 1 },
    { type = "kill", name = "bob-huge-biter", quantity = 1 },
    { type = "kill", name = "bob-huge-biter", quantity = 1000, next = "x10" },
    { type = "alias", name = "bob-huge-piercing-biter" , equals = "bob-huge-biter", quantity = 1 },
    { type = "alias", name = "bob-huge-electric-biter" , equals = "bob-huge-biter", quantity = 1 },
    { type = "alias", name = "bob-huge-acid-biter"     , equals = "bob-huge-biter", quantity = 1 },
    { type = "alias", name = "bob-huge-explosive-biter", equals = "bob-huge-biter", quantity = 1 },
    { type = "alias", name = "bob-huge-poison-biter"   , equals = "bob-huge-biter", quantity = 1 },
    { type = "alias", name = "bob-huge-fire-biter"     , equals = "bob-huge-biter", quantity = 1 },
    { type = "kill", name = "bob-giant-biter", quantity = 1 },
    { type = "kill", name = "bob-giant-biter", quantity = 1000, next = "x10" },
    { type = "alias", name = "bob-giant-piercing-biter" , equals = "bob-giant-biter", quantity = 1 },
    { type = "alias", name = "bob-giant-electric-biter" , equals = "bob-giant-biter", quantity = 1 },
    { type = "alias", name = "bob-giant-acid-biter"     , equals = "bob-giant-biter", quantity = 1 },
    { type = "alias", name = "bob-giant-explosive-biter", equals = "bob-giant-biter", quantity = 1 },
    { type = "alias", name = "bob-giant-poison-biter"   , equals = "bob-giant-biter", quantity = 1 },
    { type = "alias", name = "bob-giant-fire-biter"     , equals = "bob-giant-biter", quantity = 1 },
    { type = "kill", name = "bob-titan-biter", quantity = 1 },
    { type = "kill", name = "bob-titan-biter", quantity = 1000, next = "x10" },
    { type = "alias", name = "bob-titan-piercing-biter" , equals = "bob-titan-biter", quantity = 1 },
    { type = "alias", name = "bob-titan-electric-biter" , equals = "bob-titan-biter", quantity = 1 },
    { type = "alias", name = "bob-titan-acid-biter"     , equals = "bob-titan-biter", quantity = 1 },
    { type = "alias", name = "bob-titan-explosive-biter", equals = "bob-titan-biter", quantity = 1 },
    { type = "alias", name = "bob-titan-poison-biter"   , equals = "bob-titan-biter", quantity = 1 },
    { type = "alias", name = "bob-titan-fire-biter"     , equals = "bob-titan-biter", quantity = 1 },
    --{ type = "kill", name = "behemoth-biter", quantity = 1 },
    --{ type = "kill", name = "behemoth-biter", quantity = 1000, next = "x10" },
    { type = "alias", name = "bob-behemoth-piercing-biter" , equals = "behemoth-biter", quantity = 1 },
    { type = "alias", name = "bob-behemoth-electric-biter" , equals = "behemoth-biter", quantity = 1 },
    { type = "alias", name = "bob-behemoth-acid-biter"     , equals = "behemoth-biter", quantity = 1 },
    { type = "alias", name = "bob-behemoth-explosive-biter", equals = "behemoth-biter", quantity = 1 },
    { type = "alias", name = "bob-behemoth-poison-biter"   , equals = "behemoth-biter", quantity = 1 },
    { type = "alias", name = "bob-behemoth-fire-biter"     , equals = "behemoth-biter", quantity = 1 },
    { type = "kill", name = "bob-leviathan-biter", quantity = 1 },
    { type = "kill", name = "bob-leviathan-biter", quantity = 1000 , next = "x10" },
    { type = "alias", name = "bob-leviathan-piercing-biter" , equals = "bob-leviathan-biter", quantity = 1 },
    { type = "alias", name = "bob-leviathan-electric-biter" , equals = "bob-leviathan-biter", quantity = 1 },
    { type = "alias", name = "bob-leviathan-acid-biter"     , equals = "bob-leviathan-biter", quantity = 1 },
    { type = "alias", name = "bob-leviathan-explosive-biter", equals = "bob-leviathan-biter", quantity = 1 },
    { type = "alias", name = "bob-leviathan-poison-biter"   , equals = "bob-leviathan-biter", quantity = 1 },
    { type = "alias", name = "bob-leviathan-fire-biter"     , equals = "bob-leviathan-biter", quantity = 1 },
    { type = "kill", name = "character", quantity = 1, next = "x5", hidden = true },
  }

  local milestones = {}
  for group_name, group_milestones in pairs(grouped_milestones) do
    for _, milestone in pairs(group_milestones) do
      table.insert(milestones, milestone)
    end
  end

  return {
    ["Bob's Enemies"] = {
      required_mods = { "bobenemies" },
      forbidden_mods = { "SeaBlock" },
      milestones = milestones,
    },
  }
end

remote.add_interface("bobenemies", {
  milestones_preset_addons = milestones_preset_addons,
})
