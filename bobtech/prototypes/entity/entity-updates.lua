if bobmods.tech.advanced_logistic_science then
  bobmods.lib.safe_insert(data.raw["lab"]["lab"].inputs, "bob-advanced-logistic-science-pack", 5)
  bobmods.lib.safe_insert(data.raw["lab"]["bob-lab-2"].inputs, "bob-advanced-logistic-science-pack", 5)
  if mods["space-age"] then
    bobmods.lib.safe_insert(data.raw["lab"]["biolab"].inputs, "bob-advanced-logistic-science-pack", 5)
  end
end

if mods["space-age"] then
  for _, pack in pairs({
    "metallurgic-science-pack",
    "agricultural-science-pack",
    "electromagnetic-science-pack",
    "cryogenic-science-pack",
    "promethium-science-pack",
  }) do
    bobmods.lib.safe_insert(data.raw["lab"]["bob-lab-2"].inputs, pack)
  end
end
