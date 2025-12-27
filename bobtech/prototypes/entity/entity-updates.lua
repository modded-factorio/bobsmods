if bobmods.tech.advanced_logistic_science then
  bobmods.lib.safe_insert(data.raw["lab"]["lab"].inputs, "bob-advanced-logistic-science-pack", 5)
  if mods["space-age"] then
    bobmods.lib.safe_insert(data.raw["lab"]["biolab"].inputs, "bob-advanced-logistic-science-pack", 5)
  end
end
