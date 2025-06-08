if not bobmods then
  bobmods = {}
end
if not bobmods.lib then
  bobmods.lib = {}
end

-- Copied from reskins-library with permission

---@type data.Color[]
bobmods.lib.standard_tier_colors = {
  ---@type data.Color
  [0] = util.color("808080"), -- 1.1.7: 4d4d4d
  [1] = util.color("ffb726"), -- 1.1.7: de9400
  [2] = util.color("f22318"), -- 1.1.7: c20600
  [3] = util.color("33b4ff"), -- 1.1.7: 0099ff, 1.1.0: 1b87c2
  [4] = util.color("b459ff"), -- 1.1.7: a600bf
  [5] = util.color("2ee55c"), -- 1.1.7: 16c746, 1.1.6: 23de55
  [6] = util.color("ff8533"), -- 1.1.7: ff7700
}

require("functions")
require("error-functions")
require("item-functions")
require("technology-functions")
require("module-functions")
require("recipe-functions")
require("ore-functions")
require("category-functions")

require("auto-bottle")

require("ore-icon-variations")

bobmods.lib.tech.technology_line_icon_constant(
  "artillery-shell-range",
  1,
  1,
  { icon = "__base__/graphics/technology/artillery-range.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-range.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "artillery-shell-speed",
  1,
  1,
  { icon = "__base__/graphics/technology/artillery-speed.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "braking-force",
  1,
  7,
  { icon = "__base__/graphics/technology/braking-force.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-braking-force.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "follower-robot-count",
  1,
  5,
  { icon = "__base__/graphics/technology/follower-robots.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-count.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "inserter-capacity-bonus",
  1,
  7,
  { icon = "__base__/graphics/technology/inserter-capacity.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-capacity.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "laser-shooting-speed",
  1,
  7,
  { icon = "__base__/graphics/technology/laser-shooting-speed.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "laser-weapons-damage",
  1,
  7,
  { icon = "__base__/graphics/technology/laser-weapons-damage.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "mining-productivity",
  1,
  4,
  { icon = "__base__/graphics/technology/mining-productivity.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-mining-productivity.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "physical-projectile-damage",
  1,
  4,
  { icon = "__base__/graphics/technology/physical-projectile-damage-1.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "physical-projectile-damage",
  5,
  7,
  { icon = "__base__/graphics/technology/physical-projectile-damage-2.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "refined-flammables",
  1,
  7,
  { icon = "__base__/graphics/technology/refined-flammables.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "research-speed",
  1,
  6,
  { icon = "__base__/graphics/technology/research-speed.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "stronger-explosives",
  1,
  1,
  { icon = "__base__/graphics/technology/stronger-explosives-1.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "stronger-explosives",
  2,
  2,
  { icon = "__base__/graphics/technology/stronger-explosives-2.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "stronger-explosives",
  3,
  7,
  { icon = "__base__/graphics/technology/stronger-explosives-3.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-damage.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "weapon-shooting-speed",
  1,
  2,
  { icon = "__base__/graphics/technology/weapon-shooting-speed-1.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "weapon-shooting-speed",
  3,
  4,
  { icon = "__base__/graphics/technology/weapon-shooting-speed-2.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "weapon-shooting-speed",
  5,
  6,
  { icon = "__base__/graphics/technology/weapon-shooting-speed-3.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "worker-robots-speed",
  1,
  6,
  { icon = "__base__/graphics/technology/worker-robots-speed.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-movement-speed.png"
)
bobmods.lib.tech.technology_line_icon_constant(
  "worker-robots-storage",
  1,
  3,
  { icon = "__base__/graphics/technology/worker-robots-storage.png", icon_size = 256 },
  "__boblibrary__/graphics/constants/constant-capacity.png"
)

data.raw["technology"]["battery-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/battery-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["battery-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/battery-mk2-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["belt-immunity-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/belt-immunity-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["discharge-defense-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/discharge-defense-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["energy-shield-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/energy-shield-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["energy-shield-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["exoskeleton-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/exoskeleton-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["night-vision-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/night-vision-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["personal-laser-defense-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["personal-roboport-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/personal-roboport-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
data.raw["technology"]["personal-roboport-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
  icon = "__base__/graphics/technology/personal-roboport-mk2-equipment.png",
  icon_size = 256,
}, "__boblibrary__/graphics/constants/constant-equipment.png")
