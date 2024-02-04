if mods["space-exploration"] then

  data.raw.item["flying-robot-frame"].subgroup = "bob-robot-parts"
  if settings.startup["bobmods-logistics-trains"].value == true then
    data.raw["item-with-entity-data"].locomotive.subgroup = "bob-locomotive"
    data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "bob-cargo-wagon"
    data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "bob-fluid-wagon"
  end
  data.raw.item["se-supercharger"].subgroup = "bob-logistic-roboport-charge"

  data.raw.item["transport-belt"].subgroup = "bob-logistic-tier-1"
  data.raw.item["underground-belt"].subgroup = "bob-logistic-tier-1"
  data.raw.item.splitter.subgroup = "bob-logistic-tier-1"
  data.raw.item["fast-transport-belt"].subgroup = "bob-logistic-tier-2"
  data.raw.item["fast-underground-belt"].subgroup = "bob-logistic-tier-2"
  data.raw.item["fast-splitter"].subgroup = "bob-logistic-tier-2"
  data.raw.item["express-transport-belt"].subgroup = "bob-logistic-tier-3"
  data.raw.item["express-underground-belt"].subgroup = "bob-logistic-tier-3"
  data.raw.item["express-splitter"].subgroup = "bob-logistic-tier-3"

end

-- Krastorio2 fixes
if mods["Krastorio2"] then
  data.raw.pump.pump.fast_replaceable_group = "pipe"
  if
    settings.startup["bobmods-logistics-inserteroverhaul"].value == true and data.raw.inserter["long-handed-inserter"]
  then
    data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
  end
end
