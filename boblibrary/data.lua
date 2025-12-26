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
