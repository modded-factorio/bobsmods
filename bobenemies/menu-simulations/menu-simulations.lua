--This menu simulation needed to be fixed due to character unexpectedly dying to stronger enemies
if mods["bobequipment"] then
  data.raw["utility-constants"].default.main_menu_simulations.nauvis_biter_base_laser_defense = {
    checkboard = false,
    save = "__base__/menu-simulations/menu-simulation-biter-base.zip",
    length = 60 * 12,
    init = [[
      local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
      logo.destructible = false
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      game.forces.enemy.set_evolution_factor(0.5)
      game.surfaces[1].peaceful_mode = true
      game.forces.player.research_all_technologies()
      game.surfaces.nauvis.daytime = 0

      local character = game.surfaces[1].create_entity{name = "character", position = {center[1] - 40, center[2] + 20}, force = "player"}
      character.insert{name = "bob-power-armor-mk5"}
      local grid = character.get_inventory(defines.inventory.character_armor)[1].grid
      grid.put{name = "bob-exoskeleton-equipment-3"}
      grid.put{name = "bob-fission-reactor-equipment-4"}
      grid.put{name = "bob-fission-reactor-equipment-4"}
      grid.put{name = "bob-fission-reactor-equipment-4"}
      grid.put{name = "bob-fission-reactor-equipment-4"}
      for k = 1, 4 do
        grid.put{name = "bob-personal-laser-defense-equipment-6"}
        grid.put{name = "bob-energy-shield-mk6-equipment"}
        grid.put{name = "bob-battery-mk6-equipment"}
      end

      for k, equipment in pairs(grid.equipment) do
        if equipment.max_shield > 0 then equipment.shield = equipment.max_shield end
        equipment.energy = equipment.max_energy
      end

      character.insert{name = "submachine-gun"}
      character.insert{name = "uranium-rounds-magazine", count = 50}

      points =
      {
        {-16, -8},
        {0, -8},
        {16, -8},
        {16, 0},
        {8, 8},
        {60, 8},
      }

      local distance = function(p_1, p_2)
        local dx = (p_1[1] or p_1.x) - (p_2[1] or p_2.x)
        local dy = (p_1[2] or p_1.y) - (p_2[2] or p_2.y)
        return ((dx * dx) + (dy * dy)) ^ 0.5
      end

      local direction = function(p_1, p_2)

        local d_x = (p_2[1] or p_2.x) - (p_1[1] or p_1.x)
        local d_y = (p_2[2] or p_2.y) - (p_1[2] or p_1.y)
        local angle = math.atan2(d_y, d_x)

        local orientation =  (angle / (2 * math.pi)) - 0.25
        if orientation < 0 then orientation = orientation + 1 end

        local direction = math.floor((orientation * 16) + 0.5)
        if direction == 16 then direction = defines.direction.north end
        return direction
      end

      local get_shoot_target = function(entity)
        local enemies = entity.surface.find_enemy_units(entity.position, 10)
        local closest = entity.surface.get_closest(entity.position, enemies)
        return closest
      end

      script.on_event(defines.events.on_tick, function()
        local k, destination = next(points)
        if not k then return end
        local target = {center[1] + destination[1], center[2] + destination[2]}
        if distance(character.position, target) < 1 then
          points[k] = nil
          return
        end

        if game.tick % 17 == 0 then
          local walking_direction = direction(target, character.position)
          character.walking_state = {walking = true, direction = walking_direction}
        end

        if not (shoot_target and shoot_target.valid) then
          shoot_target = get_shoot_target(character)
        end

        if shoot_target then
          character.shooting_state = {state = defines.shooting.shooting_enemies, position = shoot_target.position}
        else
          character.shooting_state = {state = defines.shooting.not_shooting}
        end

      end)

    ]],
  }
else
  data.raw["utility-constants"].default.main_menu_simulations.nauvis_biter_base_laser_defense = {
    checkboard = false,
    save = "__base__/menu-simulations/menu-simulation-biter-base.zip",
    length = 60 * 12,
    init = [[
      local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
      logo.destructible = false
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      game.forces.enemy.set_evolution_factor(0.5)
      game.surfaces[1].peaceful_mode = true
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.surfaces.nauvis.daytime = 0

      local character = game.surfaces[1].create_entity{name = "character", position = {center[1] - 40, center[2] + 20}, force = "player"}
      character.insert{name = "power-armor-mk2"}
      local grid = character.get_inventory(defines.inventory.character_armor)[1].grid
      grid.put{name = "exoskeleton-equipment"}
      grid.put{name = "exoskeleton-equipment"}
      for k = 1, 10 do
        grid.put{name = "personal-laser-defense-equipment"}
        grid.put{name = "energy-shield-mk2-equipment"}
        grid.put{name = "battery-mk2-equipment"}
        grid.put{name = "battery-mk2-equipment"}
      end

      for k, equipment in pairs(grid.equipment) do
        if equipment.max_shield > 0 then equipment.shield = equipment.max_shield end
        equipment.energy = equipment.max_energy
      end

      character.insert{name = "submachine-gun"}
      character.insert{name = "uranium-rounds-magazine", count = 50}

      points =
      {
        {-16, -8},
        {0, -8},
        {16, -8},
        {16, 0},
        {8, 8},
        {60, 8},
      }

      local distance = function(p_1, p_2)
        local dx = (p_1[1] or p_1.x) - (p_2[1] or p_2.x)
        local dy = (p_1[2] or p_1.y) - (p_2[2] or p_2.y)
        return ((dx * dx) + (dy * dy)) ^ 0.5
      end

      local direction = function(p_1, p_2)

        local d_x = (p_2[1] or p_2.x) - (p_1[1] or p_1.x)
        local d_y = (p_2[2] or p_2.y) - (p_1[2] or p_1.y)
        local angle = math.atan2(d_y, d_x)

        local orientation =  (angle / (2 * math.pi)) - 0.25
        if orientation < 0 then orientation = orientation + 1 end

        local direction = math.floor((orientation * 16) + 0.5)
        if direction == 16 then direction = defines.direction.north end
        return direction
      end

      local get_shoot_target = function(entity)
        local enemies = entity.surface.find_enemy_units(entity.position, 10)
        local closest = entity.surface.get_closest(entity.position, enemies)
        return closest
      end

      script.on_event(defines.events.on_tick, function()
        local k, destination = next(points)
        if not k then return end
        local target = {center[1] + destination[1], center[2] + destination[2]}
        if distance(character.position, target) < 1 then
          points[k] = nil
          return
        end

        if game.tick % 17 == 0 then
          local walking_direction = direction(target, character.position)
          character.walking_state = {walking = true, direction = walking_direction}
        end

        if not (shoot_target and shoot_target.valid) then
          shoot_target = get_shoot_target(character)
        end

        if shoot_target then
          character.shooting_state = {state = defines.shooting.shooting_enemies, position = shoot_target.position}
        else
          character.shooting_state = {state = defines.shooting.not_shooting}
        end

      end)

    ]],
  }
end

data.raw["utility-constants"].default.main_menu_simulations.nauvis_mining_defense = {
  checkboard = false,
  save = "__base__/menu-simulations/menu-simulation-mining-defense.zip",
  length = 60 * 15,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 0
    game.forces.enemy.set_evolution_factor(0.8)
  ]],
  update = [[
  ]],
}

data.raw["utility-constants"].default.main_menu_simulations.nauvis_chase_player = {
  checkboard = false,
  save = "__base__/menu-simulations/menu-simulation-chase-player.zip",
  length = 60 * 16,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 0
    game.map_settings.steering.moving.force_unit_fuzzy_goto_behavior = true
    game.map_settings.steering.moving.radius = 1

    local character = game.surfaces[1].create_entity{name = "character", position = {center[1] - 55, center[2] + 4.5}, force = "player"}
    character.walking_state = {walking = true, direction = defines.direction.east}
    character.character_running_speed_modifier = 0.2
    character.tick_of_last_attack = game.tick

    local biter = game.surfaces[1].create_entity{name = "small-biter", position = {center[1] - 40, center[2] + 4.5}}
    biter.speed = character.character_running_speed
    biter.commandable.set_command{type = defines.command.go_to_location, destination = {center[1] + 60, center[2] + 4.5}, distraction = defines.distraction.none}

    script.on_nth_tick(10, function()
      if biter.position.x < (center[1] + 50) then return end
      character.walking_state = {walking = true, direction = defines.direction.west}
      character.tick_of_last_attack = 0
      character.character_running_speed_modifier = 0.6
      local command = {type = defines.command.go_to_location, destination_entity = character, distraction = defines.distraction.none}
      biter.commandable.set_command(command)
      biter.speed = character.character_running_speed
      local position = biter.position
      local surface = game.surfaces[1]
      local names = {"bob-big-acid-biter", "bob-huge-piercing-biter", "bob-giant-poison-biter", "bob-titan-explosive-biter"}
      for k = 1, 18 do
        local spawn_position = {position.x + math.random(-5, 5), position.y + math.random(-10, 10)}
        local name = names[math.random(#names)]
        local biter = surface.create_entity{name = name, position = position}
        biter.commandable.set_command(command)
        biter.speed = character.character_running_speed
      end
      script.on_nth_tick(10, nil)
    end)
  ]],
}

data.raw["utility-constants"].default.main_menu_simulations.nauvis_big_defense = {
  checkboard = false,
  save = "__base__/menu-simulations/menu-simulation-big-defense.zip",
  length = 60 * 12,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 1
    game.map_settings.steering.moving.force_unit_fuzzy_goto_behavior = true
    game.map_settings.steering.moving.radius = 3

    local bop = function()
      local surface = game.surfaces[1]
      local target = surface.find_entities_filtered{name = "flamethrower-turret", position = {33.5, -12}}[1]
      local names = {"bob-big-fire-biter", "bob-huge-fire-biter", "bob-giant-fire-biter", "bob-titan-fire-biter", "bob-giant-fire-spitter", "bob-titan-fire-spitter"}
      for k = 1, 100 do
        local spawn_position = {center[1] - 60 + math.random(-35, 5), center[2] + math.random(-10, 10)}
        local name = names[math.random(#names)]
        local biter = surface.create_entity{name = name, position = spawn_position}
        biter.commandable.set_command({type = defines.command.attack, target = target})
        biter.speed = 0.24 + (math.random() / 20)
      end
    end

    bop()
  ]],
}

data.raw["utility-constants"].default.main_menu_simulations.nauvis_brutal_defeat = {
  checkboard = false,
  save = "__base__/menu-simulations/menu-simulation-brutal-defeat.zip",
  length = 60 * 22,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    local center = {logo.position.x, logo.position.y+9.75}
    game.simulation.camera_position = center
    game.simulation.camera_zoom = 1
    game.tick_paused = false
    game.map_settings.steering.moving.force_unit_fuzzy_goto_behavior = true
    game.map_settings.steering.moving.radius = 2

    game.forces.enemy.set_ammo_damage_modifier("melee", 2)
    game.forces.enemy.set_gun_speed_modifier("melee", 0.5)
    game.forces.enemy.set_gun_speed_modifier("biological", 0.5)

    local bop = function()
      local surface = game.surfaces[1]
      local targets = surface.find_entities_filtered{force = "player", position = {center[1] + 25, center[2]}, radius = 10}
      local count = #targets
      local names = {"bob-huge-piercing-biter", "bob-big-electric-biter", "bob-medium-fire-biter", "bob-medium-acid-biter", "bob-medium-poison-biter", "bob-big-poison-spitter", "bob-huge-explosive-spitter"}
      for k = 1, 125 do
        local spawn_position = {center[1] - 40 + math.random(-55, 5), center[2] + 10 + math.random(-5, 5)}
        local name = names[math.random(#names)]
        local biter = surface.create_entity{name = name, position = spawn_position}
        biter.commandable.set_command
        {
          type = defines.command.compound,
          structure_type = defines.compound_command.return_last,
          commands =
          {
            {type = defines.command.attack, target = targets[math.random(count)]},
            {type = defines.command.attack_area, destination = {center[1] + 20, center[2]}, radius = math.random(5, 10)},
            {type = defines.command.attack_area, destination = {center[1] + 35, center[2]}, radius = math.random(2, 5)},
            {type = defines.command.go_to_location, destination = {center[1] + 120, center[2]}}
          }
        }
        biter.speed = 0.24 + (math.random() / 20)
      end
    end

    bop()
  ]],
}

if mods["bobvehicleequipment"] then
  data.raw["utility-constants"].default.main_menu_simulations.nauvis_biter_base_spidertron = {
    checkboard = false,
    save = "__base__/menu-simulations/menu-simulation-biter-base.zip",
    length = 60 * 12,
    init = [[
      local surface = game.surfaces.nauvis
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      surface.daytime = 0
      game.forces.enemy.set_evolution_factor(0.75)
      surface.peaceful_mode = true

      spider = surface.create_entity{name = "spidertron", position = {logo.position.x - 30, logo.position.y + 60}, force = "player"}
      spider.force.research_all_technologies()
      local grid = spider.grid
      grid.put{name = "bob-vehicle-fission-reactor-equipment-6"}
      grid.put{name = "bob-vehicle-fission-reactor-equipment-6"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-1"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-2"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-3"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-4"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-5"}
      grid.put{name = "bob-vehicle-laser-defense-equipment-6"}

      spider.insert({name = "rocket", count = 800})

      points =
      {
        {-16, -8},
        {0, -12},
        {16, -8},
        {16, 0},
        {60, 60},
      }

      local bonk = function()
        local k, position = next(points)
        if not k then return end
        points[k] = nil
        local x = position[1] + center[1]
        local y = position[2] + center[2]
        spider.autopilot_destination = {x, y}
      end

      bonk()

      script.on_event(defines.events.on_spider_command_completed, function(event)
        bonk()
      end)

    ]],
  }
else
  data.raw["utility-constants"].default.main_menu_simulations.nauvis_biter_base_spidertron = {
    checkboard = false,
    save = "__base__/menu-simulations/menu-simulation-biter-base.zip",
    length = 60 * 12,
    init = [[
      local surface = game.surfaces.nauvis
      local logo = surface.find_entities_filtered{name = "factorio-logo-11tiles"}[1]
      game.simulation.camera_position = {logo.position.x, logo.position.y+9.75}
      center = {logo.position.x, logo.position.y+9.75}
      game.simulation.camera_zoom = 1
      game.tick_paused = false
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      game.forces.player.research_all_technologies()
      surface.daytime = 0
      game.forces.enemy.set_evolution_factor(0.6)
      surface.peaceful_mode = true

      spider = surface.create_entity{name = "spidertron", position = {logo.position.x - 30, logo.position.y + 60}, force = "player"}
      spider.force.research_all_technologies()
      local grid = spider.grid
      grid.put{name = "fission-reactor-equipment"}
      grid.put{name = "personal-laser-defense-equipment"}
      grid.put{name = "personal-laser-defense-equipment"}
      grid.put{name = "personal-laser-defense-equipment"}

      spider.insert({name = "rocket", count = 800})

      points =
      {
        {-16, -8},
        {0, -12},
        {16, -8},
        {16, 0},
        {60, 60},
      }

      local bonk = function()
        local k, position = next(points)
        if not k then return end
        points[k] = nil
        local x = position[1] + center[1]
        local y = position[2] + center[2]
        spider.autopilot_destination = {x, y}
      end

      bonk()

      script.on_event(defines.events.on_spider_command_completed, function(event)
        bonk()
      end)

    ]],
  }
end
