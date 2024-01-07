if mods["space-exploration"] then

--Body parts
bobmods.lib.recipe.replace_ingredient("player-boots-2", "steel-plate", "se-beryllium-plate")
bobmods.lib.recipe.replace_ingredient("player-head-2", "steel-plate", "se-beryllium-plate")

data.raw.recipe["player-brain"].ingredients = {
  { type = "item", name = "processing-unit", amount = 5 },
  { type = "fluid", name = "se-neural-gel-2", amount = 200 },
  { type = "item", name = "steel-plate", amount = 5 },
}
data.raw.recipe["player-brain"].category = "crafting-with-fluid"

data.raw.recipe["player-brain-2"].ingredients = {
  { type = "item", name = "se-quantum-processor", amount = 3 },
  { type = "fluid", name = "se-neural-gel-2", amount = 200 },
  { type = "item", name = "se-iridium-plate", amount = 5 },
}
data.raw.recipe["player-brain-2"].category = "crafting-with-fluid"

data.raw.recipe["player-gloves-2"].ingredients = {
  { type = "item", name = "se-beryllium-plate", amount = 5 },
  { type = "item", name = "se-heavy-bearing", amount = 3 },
}

data.raw.recipe["player-power-core"].ingredients = {
  { type = "item", name = "low-density-structure", amount = 4 },
  { type = "item", name = "se-cryonite-rod", amount = 2 },
  { type = "item", name = "se-vulcanite-block", amount = 2 },
  { type = "item", name = "se-vitalic-epoxy", amount = 4 },
  { type = "fluid", name = "se-space-coolant-hot", amount = 40 },
}
data.raw.recipe["player-power-core"].category = "crafting-with-fluid"

bobmods.lib.recipe.replace_ingredient("player-frame", "advanced-circuit", "processing-unit")
bobmods.lib.recipe.add_ingredient("player-frame", { type = "item", name = "copper-cable", amount = 30 })

data.raw.recipe["player-frame-2"].ingredients = {
  { type = "item", name = "electric-engine-unit", amount = 12 },
  { type = "item", name = "se-quantum-processor", amount = 3 },
  { type = "item", name = "se-holmium-cable", amount = 30 },
  { type = "item", name = "player-boots-2", amount = 1 },
  { type = "item", name = "player-gloves-2", amount = 1 },
  { type = "item", name = "player-head-2", amount = 1 },
  { type = "item", name = "player-power-core", amount = 1 },
  { type = "item", name = "steel-chest", amount = 1 },
  { type = "item", name = "se-aeroframe-pole", amount = 10 },
}

data.raw.technology.bodies.prerequisites = {
  "se-vitalic-epoxy",
}
data.raw.technology.bodies.unit.count = 1000
data.raw.technology.bodies.unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-biological-science-pack-3", 1 },
}

data.raw.technology["bodies-2"].prerequisites = {
  "bodies",
  "se-quantum-processor",
  "se-heavy-bearing",
  "se-aeroframe-pole",
}
data.raw.technology["bodies-2"].unit.count = 1500

--Characters
if data.raw.item["assembling-machine-4"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-balanced-2", "assembling-machine-2", "assembling-machine-4")
end

data.raw.recipe["bob-character-builder-2"].ingredients = {
  { type = "item", name = "player-frame-2", amount = 1 },
  { type = "item", name = "se-space-manufactory", amount = 1 },
}

bobmods.lib.recipe.replace_ingredient("bob-character-engineer", "electric-furnace", "industrial-furnace")

data.raw.recipe["bob-character-fighter-2"].ingredients = {
  { type = "item", name = "player-frame-2", amount = 1 },
  { type = "item", name = "assembling-machine-3", amount = 1 },
  { type = "item", name = "se-medpack-2", amount = 1 },
  { type = "item", name = "exoskeleton-equipment", amount = 1 },
}

data.raw.recipe["bob-character-miner-2"].ingredients = {
  { type = "item", name = "player-frame-2", amount = 1 },
  { type = "item", name = "assembling-machine-3", amount = 1 },
  { type = "item", name = "se-space-thermodynamics-laboratory", amount = 1 },
}

data.raw.recipe["bob-character-prospector"].ingredients = {
  { type = "item", name = "player-frame-2", amount = 1 },
  { type = "item", name = "assembling-machine-3", amount = 1 },
  { type = "item", name = "industrial-furnace", amount = 1 },
  { type = "item", name = "exoskeleton-equipment", amount = 1 },
}
if data.raw.item["exoskeleton-equipment-2"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-fighter-2", "exoskeleton-equipment", "exoskeleton-equipment-2")
  bobmods.lib.recipe.replace_ingredient("bob-character-prospector", "exoskeleton-equipment", "exoskeleton-equipment-2")
end

data.raw.technology["builder-body"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-biological-science-pack-3", 1 },
}
data.raw.technology["miner-body"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-biological-science-pack-3", 1 },
}
data.raw.technology["fighter-body"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 },
  { "utility-science-pack", 1 },
  { "production-science-pack", 1 },
  { "se-biological-science-pack-3", 1 },
}

if data.raw.item["assembling-machine-4"] then
  bobmods.lib.tech.add_prerequisite("bodies-2", "automation-4")
end

data.raw.technology["builder-body-2"].prerequisites = {
  "builder-body",
  "bodies-2",
}

data.raw.technology["fighter-body-2"].prerequisites = {
  "fighter-body",
  "bodies-2",
  "se-medpack-2",
}

data.raw.technology["miner-body-2"].prerequisites = {
  "miner-body",
  "bodies-2",
}

if data.raw.item["exoskeleton-equipment-2"] then
  bobmods.lib.tech.add_prerequisite("prospector-body", "exoskeleton-equipment-2")
  bobmods.lib.tech.add_prerequisite("fighter-body-2", "exoskeleton-equipment-2")
end

table.insert(data.raw.character["bob-character-balanced-2"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-builder"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-builder-2"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-engineer"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-fighter"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-fighter-2"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-miner"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-miner-2"]["crafting_categories"], "hand-hard-recycling")
table.insert(data.raw.character["bob-character-prospector"]["crafting_categories"], "hand-hard-recycling")

data.raw.character["bob-character-balanced-2"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-builder"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-builder-2"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-engineer"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-fighter"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-fighter-2"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-miner"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-miner-2"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
data.raw.character["bob-character-prospector"].collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }

data.raw.character["bob-character-balanced-2"].healing_per_tick = 0.01
data.raw.character["bob-character-builder"].healing_per_tick = 0.0005
data.raw.character["bob-character-builder-2"].healing_per_tick = 0.001
data.raw.character["bob-character-engineer"].healing_per_tick = 0.001
data.raw.character["bob-character-fighter"].healing_per_tick = 0.01
data.raw.character["bob-character-fighter-2"].healing_per_tick = 0.02
data.raw.character["bob-character-miner"].healing_per_tick = 0.0005
data.raw.character["bob-character-miner-2"].healing_per_tick = 0.001
data.raw.character["bob-character-prospector"].healing_per_tick = 0.01

end
