--This exists because AAI is annoying.
if settings.startup["bobmods-burnerphase"].value == true then
  data.raw["lab"]["bob-burner-lab"].inputs = { "automation-science-pack" }
end

-- Add any additional science packs to Lab 2
if mods["space-age"] then
  local lab = data.raw["lab"]["lab"]
  local lab2 = data.raw["lab"]["bob-lab-2"]

  bobmods.lib.table_merge(lab2.inputs, lab.inputs)
end
