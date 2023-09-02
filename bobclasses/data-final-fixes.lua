if mods["space-exploration"] then
  if data.raw.item["titanium-chest"] then
    bobmods.lib.recipe.replace_ingredient("player-frame-2", "steel-chest", "titanium-chest")
  end
  data.raw.technology["bodies-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
  data.raw.technology["builder-body-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
  data.raw.technology["engineer-body"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
  data.raw.technology["fighter-body-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
  data.raw.technology["miner-body-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
  data.raw.technology["prospector-body"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-1", 1 },
    { "se-biological-science-pack-3", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-2", 1 },
  }
end
