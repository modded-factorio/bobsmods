-- Krastorio2 fixes
if mods["Krastorio2"] then
  data.raw.pump.pump.fast_replaceable_group = "pipe"
  if
    settings.startup["bobmods-logistics-inserteroverhaul"].value == true and data.raw.inserter["long-handed-inserter"]
  then
    data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
  end
end

if mods["aai-industry"] then
  if data.raw.technology["logistics-0"] then
    data.raw.technology["logistics-0"].localised_name = { "", { "technology-name.logistics" }, " 0" }
    bobmods.lib.tech.add_recipe_unlock("logistics", "transport-belt")
    bobmods.lib.tech.remove_recipe_unlock("basic-logistics", "transport-belt")
    bobmods.lib.tech.remove_prerequisite("logistics-0", "basic-logistics")
    bobmods.lib.tech.add_prerequisite("logistics-0", "burner-mechanics")
    bobmods.lib.tech.remove_prerequisite("basic-logistics", "burner-mechanics")
    bobmods.lib.tech.remove_prerequisite("logistics", "basic-logistics")
  end
end
