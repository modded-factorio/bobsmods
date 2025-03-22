data.raw["item-subgroup"].enemies.order = "b"

data:extend({
  {
    type = "item-subgroup",
    group = "enemies",
    name = "enemy-factions",
    order = "a",
  },
  {
    type = "item-subgroup",
    group = "intermediate-products",
    name = "bob-alien-artifact",
    order = "d",
  },
  {
    type = "damage-type",
    name = "bob-pierce",
  },
  {
    type = "damage-type",
    name = "bob-plasma",
  },
  {
    type = "trigger-target-type",
    name = "ground-structure",
  },
  {
    type = "trigger-target-type",
    name = "electric-unit",
  },
  {
    type = "trigger-target-type",
    name = "not-electric-unit",
    --Structures do not need this mask, since it is only used for creating stickers.
  },
  {
    type = "trigger-target-type",
    name = "not-fire-unit",
  },
})
data.raw["utility-constants"].default.default_trigger_target_mask_by_type.turret =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type["ammo-turret"] =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type["electric-turret"] =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type["fluid-turret"] =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type["artillery-turret"] =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type["unit-spawner"] =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type.wall =
  { "common", "ground-structure", "not-fire-unit" }
data.raw["utility-constants"].default.default_trigger_target_mask_by_type.gate =
  { "common", "ground-structure", "not-fire-unit" }

table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["capture-robot"],
  "not-electric-unit"
)
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.car, "not-electric-unit")
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.character, "not-electric-unit")
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["combat-robot"],
  "not-electric-unit"
)
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["construction-robot"],
  "not-electric-unit"
)
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["logistic-robot"],
  "not-electric-unit"
)

table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.unit, "not-fire-unit")
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["capture-robot"],
  "not-fire-unit"
)
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.car, "not-fire-unit")
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.character, "not-fire-unit")
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type["combat-robot"], "not-fire-unit")
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["construction-robot"],
  "not-fire-unit"
)
table.insert(
  data.raw["utility-constants"].default.default_trigger_target_mask_by_type["logistic-robot"],
  "not-fire-unit"
)
table.insert(data.raw["utility-constants"].default.default_trigger_target_mask_by_type.unit, "not-fire-unit")

data.raw["utility-constants"].default.default_trigger_target_mask_by_type["spider-vehicle"] = {
  "common",
  "ground-unit",
  "not-electric-unit",
  "not-fire-unit",
}
