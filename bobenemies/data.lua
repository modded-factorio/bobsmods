if not bobmods then
  bobmods = {}
end
if not bobmods.enemies then
  bobmods.enemies = {}
end

data.raw["noise-expression"].enemy_base_intensity.expression = "clamp(distance, 0, 1600) / 325"

data.raw["map-settings"]["map-settings"].enemy_evolution.time_factor = 4e-07
data.raw["map-settings"]["map-settings"].enemy_evolution.destroy_factor = 0.0004
data.raw["map-settings"]["map-settings"].enemy_evolution.pollution_factor = 6e-07
data.raw["map-settings"]["map-settings"].enemy_expansion.min_expansion_cooldown = 60 * 60 * 4
data.raw["map-settings"]["map-settings"].enemy_expansion.max_expansion_cooldown = 60 * 60 * 15
data.raw["map-settings"]["map-settings"].enemy_expansion.settler_group_min_size = 15
data.raw["map-settings"]["map-settings"].enemy_expansion.settler_group_max_size = 30
data.raw["map-settings"]["map-settings"].pollution.ageing = 0.4
data.raw["map-settings"]["map-settings"].pollution.diffusion_ratio = 0.1
data.raw["utility-constants"].default.spawner_evolution_factor_health_modifier = 20

data.raw.fire["fire-flame"].initial_lifetime = 300
data.raw.fire["fire-flame"].maximum_damage_multiplier = 20

require("prototypes.values")
require("prototypes.functions")

require("prototypes.alien-artifact")
require("prototypes.categories")
require("prototypes.entities")

require("prototypes.projectiles")
require("prototypes.biters")
require("prototypes.spitters")
require("prototypes.spawners")
require("prototypes.worms")
require("prototypes.radar")

require("menu-simulations.menu-simulations")
