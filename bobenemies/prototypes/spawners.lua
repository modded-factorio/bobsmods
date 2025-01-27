local leviathanfrequency = settings.startup["bobmods-enemies-leviathanfrequency"].value

local biter_spawn
local spitter_spawn
local super_spawn
if settings.startup["bobmods-enemies-biggersooner"].value == true then
  biter_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    { "big-biter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
    { "bob-huge-biter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.1 } } },
    { "bob-giant-biter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.15 } } },
    { "bob-titan-biter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-biter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
    { "bob-leviathan-biter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  spitter_spawn = {
    { "small-spitter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    { "big-spitter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
    { "bob-huge-spitter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.1 } } },
    { "bob-giant-spitter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.15 } } },
    { "bob-titan-spitter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-spitter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
    { "bob-leviathan-spitter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  super_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "small-spitter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    { "big-biter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
    { "big-spitter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
    { "bob-huge-biter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.0 } } },
    { "bob-huge-spitter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.0 } } },
    { "bob-giant-biter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.25 } } },
    { "bob-giant-spitter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.25 } } },
    { "bob-titan-biter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
    { "bob-titan-spitter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-biter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
    { "behemoth-spitter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
    { "bob-leviathan-biter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
    { "bob-leviathan-spitter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
  }
else
  biter_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
    { "big-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
    { "bob-huge-biter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.1 } } },
    { "bob-giant-biter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.15 } } },
    { "bob-titan-biter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
    { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  spitter_spawn = {
    { "small-spitter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
    { "big-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
    { "bob-huge-spitter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.1 } } },
    { "bob-giant-spitter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.15 } } },
    { "bob-titan-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
    { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  super_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
    { "small-spitter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
    { "big-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
    { "big-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
    { "bob-huge-biter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.0 } } },
    { "bob-huge-spitter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.0 } } },
    { "bob-giant-biter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.25 } } },
    { "bob-giant-spitter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.25 } } },
    { "bob-titan-biter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
    { "bob-titan-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
    { "behemoth-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
    { "behemoth-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
    { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
    { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
end

data.raw["unit-spawner"]["biter-spawner"].order = "a-a-a"
data.raw["unit-spawner"]["spitter-spawner"].order = "a-a-b"
if not settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit-spawner"]["biter-spawner"].max_health = 250
  data.raw["unit-spawner"]["spitter-spawner"].max_health = 250
end
data.raw["unit-spawner"]["biter-spawner"].result_units = biter_spawn
data.raw["unit-spawner"]["spitter-spawner"].result_units = spitter_spawn
data.raw["unit-spawner"]["biter-spawner"].factoriopedia_description = { "factoriopedia-description.basic-enemy" }
data.raw["unit-spawner"]["spitter-spawner"].factoriopedia_description = { "factoriopedia-description.basic-enemy" }
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[1].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[2].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[3].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[4].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[1].layers[2].tint = bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[2].layers[2].tint = bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[3].layers[2].tint = bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[4].layers[2].tint = bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].map_color = bobmods.enemies.basic_faction
data.raw["unit-spawner"]["spitter-spawner"].map_color = bobmods.enemies.basic_faction
data.raw["unit-spawner"]["biter-spawner"].autoplace = enemy_autoplace.enemy_spawner_autoplace("enemy_autoplace_base(0, 10)")
data.raw["unit-spawner"]["spitter-spawner"].autoplace = enemy_autoplace.enemy_spawner_autoplace("enemy_autoplace_base(0, 11)")

bobmods.enemies.new_spawner({
  name = "bob-biter-spawner",
  class = "biter",
  order = "a-a-c",
  tint = biter_spawner_tint,
  map_color = bobmods.enemies.basic_faction,
  factoriopedia_description = { "factoriopedia-description.basic-enemy" },
  autoplace = enemy_autoplace.enemy_spawner_autoplace("enemy_autoplace_base(5, 12)"),
  build_base_evolution_requirement = 0.5,
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "acid",  decrease = 10, percent = 50 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
  result_units = biter_spawn,
})

bobmods.enemies.new_spawner({
  name = "bob-spitter-spawner",
  class = "spitter",
  order = "a-a-d",
  tint = spitter_spawner_tint,
  map_color = bobmods.enemies.basic_faction,
  factoriopedia_description = { "factoriopedia-description.basic-enemy" },
  autoplace = enemy_autoplace.enemy_spawner_autoplace("enemy_autoplace_base(5, 13)"),
  build_base_evolution_requirement = 0.5,
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "acid",  decrease = 10, percent = 50 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
  result_units = spitter_spawn,
})

bobmods.enemies.new_spawner({
  name = "bob-piercing-biter-spawner",
  class = "biter",
  element = "piercing",
  order = "b-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  map_color = bobmods.enemies.piercing_faction,
  factoriopedia_description = { "factoriopedia-description.piercing-enemy" },
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 8, percent = 60 },
    { type = "bob-pierce", percent = 40 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 10 },
    { type = "fire", decrease = 6, percent = 75 },
    { type = "poison", percent = -20 },
    { type = "electric", percent = -20 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-piercing-spitter-spawner",
  class = "spitter",
  element = "piercing",
  order = "b-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  map_color = bobmods.enemies.piercing_faction,
  factoriopedia_description = { "factoriopedia-description.piercing-enemy" },
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 8, percent = 60 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 10 },
    { type = "fire", decrease = 6, percent = 75 },
    { type = "poison", percent = -20 },
    { type = "electric", percent = -20 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-electric-biter-spawner",
  class = "biter",
  element = "electric",
  order = "c-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  map_color = bobmods.enemies.electric_faction,
  factoriopedia_description = { "factoriopedia-description.electric-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 75 },
    { type = "fire", percent = 35 },
    { type = "poison", percent = -20 },
    { type = "electric", decrease = 10, percent = 50 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-electric-spitter-spawner",
  class = "spitter",
  element = "electric",
  order = "c-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  map_color = bobmods.enemies.electric_faction,
  factoriopedia_description = { "factoriopedia-description.electric-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 75 },
    { type = "fire", percent = 35 },
    { type = "poison", percent = -20 },
    { type = "electric", decrease = 10, percent = 50 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.integration = {
  filename = "__core__/graphics/light-medium.png",
  width = 300,
  height = 300,
  scale = 4,
  priority = "high",
  draw_as_light = true,
  tint = { 0.7, 0.7, 0.85 },
  shift = {0, 0.5},
}
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.integration = {
  filename = "__core__/graphics/light-medium.png",
  width = 300,
  height = 300,
  scale = 4,
  priority = "high",
  draw_as_light = true,
  tint = { 0.7, 0.7, 0.85 },
  shift = {0, 0.5},
}

bobmods.enemies.new_spawner({
  name = "bob-acid-biter-spawner",
  class = "biter",
  element = "acid",
  order = "d-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  map_color = bobmods.enemies.acid_faction,
  factoriopedia_description = { "factoriopedia-description.acid-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-acid-spitter-spawner",
  class = "spitter",
  element = "acid",
  order = "d-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  map_color = bobmods.enemies.acid_faction,
  factoriopedia_description = { "factoriopedia-description.acid-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-explosive-biter-spawner",
  class = "biter",
  element = "explosive",
  order = "e-a-c",
  max_health = 400,
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  map_color = bobmods.enemies.explosive_faction,
  factoriopedia_description = { "factoriopedia-description.explosive-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 50, percent = 60 },
    { type = "laser", percent = 10 },
    { type = "fire", percent = 35 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-explosive-spitter-spawner",
  class = "spitter",
  element = "explosive",
  order = "e-a-d",
  max_health = 400,
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  map_color = bobmods.enemies.explosive_faction,
  factoriopedia_description = { "factoriopedia-description.explosive-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 50, percent = 60 },
    { type = "laser", percent = 10 },
    { type = "fire", percent = 35 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit-spawner"]["bob-explosive-biter-spawner"].max_health = 1000
  data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].max_health = 1000
end

bobmods.enemies.new_spawner({
  name = "bob-poison-biter-spawner",
  class = "biter",
  element = "poison",
  order = "f-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  map_color = bobmods.enemies.poison_faction,
  healing_per_tick = 0.08,
  factoriopedia_description = { "factoriopedia-description.poison-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 50 },
    { type = "fire", percent = 35 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-poison-spitter-spawner",
  class = "spitter",
  element = "poison",
  order = "f-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  map_color = bobmods.enemies.poison_faction,
  healing_per_tick = 0.08,
  factoriopedia_description = { "factoriopedia-description.poison-enemy" },
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 50 },
    { type = "fire", percent = 35 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-fire-biter-spawner",
  class = "biter",
  element = "fire",
  order = "g-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  map_color = bobmods.enemies.fire_faction,
  factoriopedia_description = { "factoriopedia-description.fire-enemy" },
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "physical", decrease = 2, percent = 30 },
    { type = "bob-pierce", percent = 10 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "acid", 10, percent = 50 },
    { type = "plasma", percent = 50 },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-fire-spitter-spawner",
  class = "spitter",
  element = "fire",
  order = "g-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  map_color = bobmods.enemies.fire_faction,
  factoriopedia_description = { "factoriopedia-description.fire-enemy" },
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "physical", decrease = 2, percent = 30 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "acid", 10, percent = 50 },
    { type = "plasma", percent = 50 },
  },
})

if settings.startup["bobmods-enemies-superspawner"].value == true then

  bobmods.enemies.new_spawner({
    name = "bob-super-spawner",
    class = "super",
    order = "a-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    map_color = bobmods.enemies.basic_faction,
    factoriopedia_description = { "factoriopedia-description.basic-enemy" },
    autoplace = enemy_autoplace.enemy_spawner_autoplace("enemy_autoplace_base(8, 14)"),
    build_base_evolution_requirement = 0.8,
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 5, percent = 70 },
      { type = "poison", percent = 20 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 20, percent = 75 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
    result_units = super_spawn,
  })

  bobmods.enemies.new_spawner({
    name = "bob-piercing-super-spawner",
    class = "super",
    element = "piercing",
    order = "b-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.piercing_worm_tint,
    map_color = bobmods.enemies.piercing_faction,
    factoriopedia_description = { "factoriopedia-description.piercing-enemy" },
    healing_per_tick = 2,
    resistances = {
      { type = "physical", decrease = 20, percent = 75 },
      { type = "bob-pierce", percent = 40 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 25 },
      { type = "fire", decrease = 10, percent = 90 },
      { type = "acid", percent = 40 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
  })

  bobmods.enemies.new_spawner({
    name = "bob-electric-super-spawner",
    class = "super",
    element = "electric",
    order = "c-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.electric_spawner_tint,
    map_color = bobmods.enemies.electric_faction,
    factoriopedia_description = { "factoriopedia-description.electric-enemy" },
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 75 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "electric", decrease = 20, percent = 75 },
      { type = "acid", percent = 40 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
  })

  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.integration = {
    filename = "__core__/graphics/light-medium.png",
    width = 300,
    height = 300,
    scale = 4,
    priority = "high",
    draw_as_light = true,
    tint = { 0.7, 0.7, 0.85 },
    shift = {0, 0.5},
  }

  bobmods.enemies.new_spawner({
    name = "bob-acid-super-spawner",
    class = "super",
    element = "acid",
    order = "d-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.acid_spawner_tint,
    map_color = bobmods.enemies.acid_faction,
    factoriopedia_description = { "factoriopedia-description.acid-enemy" },
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 5, percent = 70 },
      { type = "poison", decrease = 20, percent = 75 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
  })

  bobmods.enemies.new_spawner({
    name = "bob-explosive-super-spawner",
    class = "super",
    element = "explosive",
    order = "e-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.explosive_spawner_tint,
    map_color = bobmods.enemies.explosive_faction,
    factoriopedia_description = { "factoriopedia-description.explosive-enemy" },
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 100, percent = 75 },
      { type = "laser", percent = 25 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "poison",  percent = 20 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
  })

  if settings.startup["bobmods-enemies-healthincrease"].value == true then
    data.raw["unit-spawner"]["bob-explosive-super-spawner"].max_health = 6000
  end

  bobmods.enemies.new_spawner({
    name = "bob-poison-super-spawner",
    class = "super",
    element = "poison",
    order = "f-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.poison_spawner_tint,
    map_color = bobmods.enemies.poison_faction,
    healing_per_tick = 2,
    factoriopedia_description = { "factoriopedia-description.poison-enemy" },
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "poison", decrease = 20, percent = 75 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "plasma", percent = 50 },
    },
  })

  bobmods.enemies.new_spawner({
    name = "bob-fire-super-spawner",
    class = "super",
    element = "fire",
    order = "g-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.fire_spawner_tint,
    map_color = bobmods.enemies.fire_faction,
    factoriopedia_description = { "factoriopedia-description.fire-enemy" },
    trigger_target_mask = { "common", "ground-structure" },
    resistances = {
      { type = "physical", decrease = 5, percent = 40 },
      { type = "bob-pierce", percent = 10 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 75 },
      { type = "fire", decrease = 20, percent = 95 },
      { type = "poison", percent = 20 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 20, percent = 75 },
      { type = "plasma", percent = 50 },
    },
  })

end
