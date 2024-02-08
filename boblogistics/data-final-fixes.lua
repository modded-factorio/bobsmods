-- Krastorio2 fixes
if mods["Krastorio2"] then
  data.raw.pump.pump.fast_replaceable_group = "pipe"
  if
    settings.startup["bobmods-logistics-inserteroverhaul"].value == true and data.raw.inserter["long-handed-inserter"]
  then
    data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
  end
end
