if mods["rso-mod"] then
  data.raw["bool-setting"]["rso-vanilla-biter-generation"].hidden = true
  data.raw["bool-setting"]["rso-vanilla-biter-generation"].forced_value = true
  data.raw["bool-setting"]["rso-biter-generation"].hidden = true
  data.raw["bool-setting"]["rso-biter-generation"].forced_value = false
  data.raw["double-setting"]["rso-enemy-chance"].hidden = true
  data.raw["double-setting"]["rso-enemy-base-size"].hidden = true
end
