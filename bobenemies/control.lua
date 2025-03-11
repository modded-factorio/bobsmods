if not bobmods then
  bobmods = {}
end
if not bobmods.enemies then
  bobmods.enemies = {}
end
bobmods.enemies.quality_enemies = settings.startup["bobmods-enemies-qualityenemies"].value
if settings.startup["bobmods-enemies-radarscanlimit"].value == 0 then
  bobmods.enemies.radar_scan_limit = nil
else
  bobmods.enemies.radar_scan_limit = settings.startup["bobmods-enemies-radarscanlimit"].value
end

if script.active_mods["Rampant"] and settings.startup["rampant--newEnemies"].value == true then
  bobmods.enemies.stop_all = true
end
if script.active_mods["RampantFixed"] and settings.startup["rampantFixed--newEnemies"].value == true then
  bobmods.enemies.stop_all = true
end

if not storage.bobmods then
  storage.bobmods = {}
end
if not storage.bobmods.enemies then
  storage.bobmods.enemies = {}
end
if not storage.bobmods.enemies.flag_check then
  storage.bobmods.enemies.flag_check = 0
end
if not storage.bobmods.enemies.n_cycle then
  storage.bobmods.enemies.n_cycle = 0
end
if not storage.bobmods.enemies.nauvis_faction_table then
  storage.bobmods.enemies.nauvis_faction_table = {
    basic = 0,
    piercing = 0,
    electric = 0,
    acid = 0,
    explosive = 0,
    poison = 0,
    fire = 0,
  }
end
if not storage.bobmods.enemies.nauvis_spawners then
  storage.bobmods.enemies.nauvis_spawners = {}
end
if not storage.bobmods.enemies.nauvis_faction_unlock_table then
  storage.bobmods.enemies.nauvis_faction_unlock_table = { "basic" }
end
if not storage.bobmods.enemies.faction_flags then
  storage.bobmods.enemies.faction_flags = {}
end

script.on_init(function()
  --Set factions_appear once to prevent issues from cropping up if it is changed mid-game
  storage.bobmods.enemies.factions_appear = settings.startup["bobmods-enemies-factionsappear"].value
  if bobmods.enemies.stop_all ~= true then
    if game.tick > 1800 then
      --If loading into existing game, register all spawners that already exist. Do not count spawners at game start to prevent double counting, as they will be registered as their chunks are generated. Checking for pre-existing Bob's Enemies spawners from previous versions is a must. Keep it simple and don't generate flags or faction spawners at this stage.
      local initial_spawners = game.surfaces.nauvis.find_entities_filtered({ type = "unit-spawner" })
      for _, detected_spawner in pairs(initial_spawners) do
        if detected_spawner.name == "biter-spawner" then
          local original_position = detected_spawner.position
          detected_spawner.destroy()
          local new_spawner = game.surfaces.nauvis.create_entity({
            name = "bob-0-biter-spawner",
            position = original_position,
            force = "enemy",
            spawn_decorations = false,
          })

          table.insert(storage.bobmods.enemies.nauvis_spawners, {
            faction = "basic",
            position = new_spawner.position,
            unit_number = new_spawner.unit_number,
          })
          storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
        elseif detected_spawner.name == "spitter-spawner" then
          local original_position = detected_spawner.position
          detected_spawner.destroy()
          local new_spawner = game.surfaces.nauvis.create_entity({
            name = "bob-0-spitter-spawner",
            position = original_position,
            force = "enemy",
            spawn_decorations = false,
          })

          table.insert(storage.bobmods.enemies.nauvis_spawners, {
            faction = "basic",
            position = new_spawner.position,
            unit_number = new_spawner.unit_number,
          })
          storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
        elseif
          detected_spawner.name == "bob-biter-spawner"
          or detected_spawner.name == "bob-spitter-spawner"
          or detected_spawner.name == "bob-super-spawner"
        then
          table.insert(storage.bobmods.enemies.nauvis_spawners, {
            faction = "basic",
            position = detected_spawner.position,
            unit_number = detected_spawner.unit_number,
          })
          storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
        end
      end
    end
  end
end)

script.on_nth_tick(600, function(current_tick)
  if bobmods.enemies.stop_all ~= true then
    if storage.bobmods.enemies.n_cycle == 0 then
      --Delete flags from table if all nearby spawners are destroyed, to reduce clutter
      local test_index
      local remove_index = {}
      local remove_count = 0
      for i = 1, 5 do
        test_index = storage.bobmods.enemies.flag_check + i
        if storage.bobmods.enemies.faction_flags[test_index] then
          if
            game.surfaces.nauvis.count_entities_filtered({
                area = {
                  {
                    storage.bobmods.enemies.faction_flags[test_index].x - 48,
                    storage.bobmods.enemies.faction_flags[test_index].y - 48,
                  },
                  {
                    storage.bobmods.enemies.faction_flags[test_index].x + 48,
                    storage.bobmods.enemies.faction_flags[test_index].y + 48,
                  },
                },
                type = "unit-spawner",
              })
              == 0
            and current_tick.tick - storage.bobmods.enemies.faction_flags[test_index].tick > 108000
          then
            table.insert(remove_index, test_index)
          end
        else
          test_index = 1
          break
        end
      end
      --Remove dead flags in reverse order so that when the indexes are shifted, the next part of the remove_index will still point to the correct target
      if remove_index[1] then
        local remove_log = #remove_index
        for i = #remove_index, 1, -1 do
          table.remove(storage.bobmods.enemies.faction_flags, remove_index[i])
          remove_count = remove_count + 1
        end
      end
      --Update to last tested index minus number of flags removed to prevent jumping over some flags on the next cycle
      storage.bobmods.enemies.flag_check = test_index - remove_count
    elseif storage.bobmods.enemies.n_cycle == 1 then
      --Backup check to ensure that all registered spawners still exist
      if storage.bobmods.enemies.nauvis_spawners[1] then
        local remove_index = {}
        local table_size = #storage.bobmods.enemies.nauvis_spawners
        local check_index1 = 1
        local check_index2 = table_size
        local overflow_count = 0
        if check_index2 > 50 then
          --When there are more than 50 spawners, check them in random blocks of total length 50 in order to not take too much time
          check_index1 = math.random(check_index2)
          check_index2 = check_index1 + 49
        end
        for i = check_index1, check_index2 do
          if i <= table_size then
            local detected_spawner = game.surfaces.nauvis.count_entities_filtered({
              type = "unit-spawner",
              position = storage.bobmods.enemies.nauvis_spawners[i].position,
            })
            if detected_spawner == 0 then
              table.insert(remove_index, i)
            end
          else
            local overflowed_index = i - table_size
            local detected_spawner = game.surfaces.nauvis.count_entities_filtered({
              type = "unit-spawner",
              position = storage.bobmods.enemies.nauvis_spawners[overflowed_index].position,
            })
            if detected_spawner == 0 then
              overflow_count = overflow_count + 1
              table.insert(remove_index, overflow_count, overflowed_index)
              --Add overflowed detections in order starting at the beginning of the table, so that they are removed in the correct order
            end
          end
        end
        --Remove missing spawners in reverse order so that when the indexes are shifted, the next part of the remove_index will still point to the correct target
        if remove_index[1] then
          local remove_log = #remove_index
          for i = #remove_index, 1, -1 do
            table.remove(storage.bobmods.enemies.nauvis_spawners, remove_index[i])
            log("Error in spawner table detected")
          end
        end
      end
    elseif storage.bobmods.enemies.n_cycle == 2 then
      local local_basic_faction = 0
      local local_piercing_faction = 0
      local local_electric_faction = 0
      local local_acid_faction = 0
      local local_explosive_faction = 0
      local local_poison_faction = 0
      local local_fire_faction = 0
      for _, registered_spawner in pairs(storage.bobmods.enemies.nauvis_spawners) do
        if registered_spawner.faction == "basic" then
          local_basic_faction = local_basic_faction + 1
        elseif registered_spawner.faction == "piercing" then
          local_piercing_faction = local_piercing_faction + 1
        elseif registered_spawner.faction == "electric" then
          local_electric_faction = local_electric_faction + 1
        elseif registered_spawner.faction == "acid" then
          local_acid_faction = local_acid_faction + 1
        elseif registered_spawner.faction == "explosive" then
          local_explosive_faction = local_explosive_faction + 1
        elseif registered_spawner.faction == "poison" then
          local_poison_faction = local_poison_faction + 1
        elseif registered_spawner.faction == "fire" then
          local_fire_faction = local_fire_faction + 1
        end
      end
      if local_basic_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.basic ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.basic = 0
        log("Error in faction table detected")
      elseif local_piercing_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.piercing ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.piercing = 0
        log("Error in faction table detected")
      elseif local_electric_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.electric ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.electric = 0
        log("Error in faction table detected")
      elseif local_acid_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.acid ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.acid = 0
        log("Error in faction table detected")
      elseif local_explosive_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.explosive ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.explosive = 0
        log("Error in faction table detected")
      elseif local_poison_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.poison ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.poison = 0
        log("Error in faction table detected")
      elseif local_fire_faction == 0 and storage.bobmods.enemies.nauvis_faction_table.fire ~= 0 then
        storage.bobmods.enemies.nauvis_faction_table.fire = 0
        log("Error in faction table detected")
      end
    end
    if storage.bobmods.enemies.n_cycle == 0 then
      storage.bobmods.enemies.n_cycle = 1
    elseif storage.bobmods.enemies.n_cycle == 1 then
      storage.bobmods.enemies.n_cycle = 2
    elseif storage.bobmods.enemies.n_cycle == 2 then
      storage.bobmods.enemies.n_cycle = 0
    end
  end
end)

function bobmods.enemies.unlock_factions()
  --Unlock new factions at appropriate evolution level
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")

  if
    evo_level >= storage.bobmods.enemies.factions_appear
    and not storage.bobmods.enemies.nauvis_faction_unlock_table[3]
  then
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "piercing")
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "electric")
  end
  --If factions_appear is set to the highest or lowest settings, unlock timing will be adjusted a bit to not be either too close together or too late to have time to make an impression
  if
    evo_level >= math.max(0.25, (storage.bobmods.enemies.factions_appear + 0.1))
    and not storage.bobmods.enemies.nauvis_faction_unlock_table[5]
  then
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "acid")
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "explosive")
  end
  if
    evo_level >= math.min(0.75, math.max(0.35, (storage.bobmods.enemies.factions_appear + 0.2)))
    and not storage.bobmods.enemies.nauvis_faction_unlock_table[7]
  then
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "poison")
    table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, "fire")
  end
end

function bobmods.enemies.determine_faction_flag(x_coord, y_coord, call_tick)
  if (not storage.bobmods.enemies.nauvis_faction_unlock_table[7]) and bobmods.enemies.stop_all ~= true then
    bobmods.enemies.unlock_factions()
  end

  --Check if any new faction is unlocked, otherwise return unplanted basic flag to avoid boxing in new factions when they develop
  if storage.bobmods.enemies.nauvis_faction_unlock_table[3] then
    --First check if any unlocked faction is extinct
    for _, checking_faction in pairs(storage.bobmods.enemies.nauvis_faction_unlock_table) do
      if storage.bobmods.enemies.nauvis_faction_table[checking_faction] == 0 then
        local new_flag = bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { checking_faction })
        return new_flag
      end
    end
    --Detect nearest flag if any are close enough, and match. Creates territories belonging to factions. Going backwards and starting with most recent flags saves a small amount of time when generating chunks in quick succession.
    local nearest_flag = { distance = (game.map_settings.enemy_expansion.max_expansion_distance + 2) * 32 }
    for i = #storage.bobmods.enemies.faction_flags, 1, -1 do
      local test_flag = storage.bobmods.enemies.faction_flags[i]
      local flag_distance = math.sqrt(((test_flag.x - x_coord) ^ 2) + ((test_flag.y - y_coord) ^ 2))
      if nearest_flag.distance >= flag_distance then
        nearest_flag.distance = flag_distance
        nearest_flag.flag = test_flag
      end
      if nearest_flag.distance < 128 then
        break
      end
    end
    local random_faction = math.random(20)
    if nearest_flag.flag and (random_faction < 20) then
      local new_flag = bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, nearest_flag.flag.factions)
      return new_flag
    elseif nearest_flag.flag and random_faction == 20 then
      --5% chance to disregard nearby flags and pick randomly
      local new_flag =
        bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { bobmods.enemies.pick_random_faction() })
      return new_flag
    else
      if random_faction < 17 then
        --If no flags are close enough, choose based on spawners in immediate area. Only check every third spawner to save time. This is fine since they always appear in groups
        local local_basic_faction = { 0, "basic" }
        local local_piercing_faction = { 0, "piercing" }
        local local_electric_faction = { 0, "electric" }
        local local_acid_faction = { 0, "acid" }
        local local_explosive_faction = { 0, "explosive" }
        local local_poison_faction = { 0, "poison" }
        local local_fire_faction = { 0, "fire" }
        for i = #storage.bobmods.enemies.nauvis_spawners, 1, -3 do
          local near_spawner = storage.bobmods.enemies.nauvis_spawners[i]
          local spawner_distance =
            math.sqrt(((near_spawner.position.x - x_coord) ^ 2) + ((near_spawner.position.y - y_coord) ^ 2))
          if spawner_distance <= game.map_settings.enemy_expansion.max_expansion_distance * 32 then
            if near_spawner.faction == "basic" then
              local_basic_faction[1] = local_basic_faction[1] + 1
            elseif near_spawner.faction == "piercing" then
              local_piercing_faction[1] = local_piercing_faction[1] + 1
            elseif near_spawner.faction == "electric" then
              local_electric_faction[1] = local_electric_faction[1] + 1
            elseif near_spawner.faction == "acid" then
              local_acid_faction[1] = local_acid_faction[1] + 1
            elseif near_spawner.faction == "explosive" then
              local_explosive_faction[1] = local_explosive_faction[1] + 1
            elseif near_spawner.faction == "poison" then
              local_poison_faction[1] = local_poison_faction[1] + 1
            elseif near_spawner.faction == "fire" then
              local_fire_faction[1] = local_fire_faction[1] + 1
            end
          end
        end
        local final_factions = {}
        local biggest_faction = { 0, "basic" }
        for _, faction in pairs({
          local_basic_faction,
          local_piercing_faction,
          local_electric_faction,
          local_acid_faction,
          local_explosive_faction,
          local_poison_faction,
          local_fire_faction,
        }) do
          if biggest_faction[1] < faction[1] then
            biggest_faction = faction
          end
        end
        if biggest_faction[1] > 0 then
          final_factions[1] = biggest_faction[2]
          --Add second at late evo
          local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
          if evo_level >= 0.9 then
            local biggest_faction2 = { 0 }
            for _, faction in pairs({
              local_basic_faction,
              local_piercing_faction,
              local_electric_faction,
              local_acid_faction,
              local_explosive_faction,
              local_poison_faction,
              local_fire_faction,
            }) do
              --Block first faction from being picked again
              if biggest_faction[1] < faction[1] and faction[2] ~= final_factions[1] then
                biggest_faction = faction
              end
            end
            if biggest_faction2[1] > 0 then
              final_factions[2] = biggest_faction2[2]
            end
          end
          local new_flag = bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, final_factions)
          return new_flag
        else
          local new_flag =
            bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { bobmods.enemies.pick_random_faction() })
          return new_flag
        end
      else
        --20% chance to disregard nearby spawners and pick randomly
        local new_flag =
          bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { bobmods.enemies.pick_random_faction() })
        return new_flag
      end
    end
  else
    --This is a pseudo-flag that will give other functions the parameters they need to work before factions are unlocked. It is not added to the flag table, so it will not persist
    return {
      factions = { "basic" },
      quality_limit = 1,
      quality_values = { 1, 0, 0, 0, 0, 1 },
      x = x_coord,
      y = y_coord,
      tick = call_tick,
    }
  end
end

function bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, final_factions)
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
  if evo_level >= 0.9 then
    --Randomly add second faction in late mid game if not already selected (35.3% chance), or randomly replace with low chance
    if (not final_factions[2]) and math.random(17) < 7 then
      local faction2 = bobmods.enemies.pick_random_faction()
      if faction2 ~= final_factions[1] then
        table.insert(final_factions, faction2)
      end
    elseif final_factions[2] and math.random(20) == 20 then
      local faction2 = bobmods.enemies.pick_random_faction()
      if faction2 ~= final_factions[1] then
        final_factions[2] = faction2
      end
    end
  end
  if evo_level >= 0.95 then
    --Repeat with third faction in late game (23.5% chance)
    if final_factions[2] then
      if (not final_factions[3]) and math.random(17) < 5 then
        local faction3 = bobmods.enemies.pick_random_faction()
        if faction3 ~= final_factions[1] and faction3 ~= final_factions[2] then
          table.insert(final_factions, faction3)
        end
      elseif final_factions[3] and math.random(20) == 20 then
        local faction3 = bobmods.enemies.pick_random_faction()
        if faction3 ~= final_factions[1] and faction3 ~= final_factions[2] then
          final_factions[3] = faction3
        end
      end
    end
  end

  --Unlike factions, quality is not inherited from one flag to another
  local max_quality
  if evo_level >= 0.9 then
    max_quality = 5
  elseif evo_level >= 0.8 then
    max_quality = 4
  elseif evo_level >= 0.7 then
    max_quality = 3
  elseif evo_level >= 0.6 then
    max_quality = 2
  else
    max_quality = 1
  end
  local quality_dist
  local quality_random = math.random(20)
  --Values are proportional probabilities, sixth value is sum of all
  if evo_level <= 0.97 then
    if quality_random == 1 then
      quality_dist = { 2, 3, 4, 2, 1, 12 }
    elseif quality_random <= 5 then
      quality_dist = { 32, 45, 8, 4, 1, 90 }
    else
      quality_dist = { 256, 64, 16, 4, 0, 340 }
    end
  else
    if quality_random == 1 then
      quality_dist = { 0, 0, 2, 2, 1, 5 }
    elseif quality_random <= 5 then
      quality_dist = { 0, 2, 3, 2, 1, 8 }
    else
      quality_dist = { 2, 3, 4, 2, 1, 12 }
    end
  end

  local planted_flag = {
    factions = final_factions,
    quality_limit = max_quality,
    quality_values = quality_dist,
    x = x_coord,
    y = y_coord,
    tick = call_tick,
  }
  table.insert(storage.bobmods.enemies.faction_flags, planted_flag)
  return planted_flag
end

function bobmods.enemies.pick_random_faction()
  --Randomly pick a faction depending on how many are available
  local final_faction
  if storage.bobmods.enemies.nauvis_faction_unlock_table[7] then
    local local_basic_faction = storage.bobmods.enemies.nauvis_faction_table.basic
    local local_piercing_faction = storage.bobmods.enemies.nauvis_faction_table.piercing
    local local_electric_faction = storage.bobmods.enemies.nauvis_faction_table.electric
    local local_acid_faction = storage.bobmods.enemies.nauvis_faction_table.acid
    local local_explosive_faction = storage.bobmods.enemies.nauvis_faction_table.explosive
    local local_poison_faction = storage.bobmods.enemies.nauvis_faction_table.poison
    local local_fire_faction = storage.bobmods.enemies.nauvis_faction_table.fire
    local faction_range = local_basic_faction
      + local_piercing_faction
      + local_electric_faction
      + local_acid_faction
      + local_explosive_faction
      + local_poison_faction
      + local_fire_faction
    --Multiply to add weight, and subtract to make small values big
    local_basic_faction = math.max(0, (faction_range - (4 * local_basic_faction)))
    local_piercing_faction = math.max(0, (faction_range - (4 * local_piercing_faction)))
    local_electric_faction = math.max(0, (faction_range - (4 * local_electric_faction)))
    local_acid_faction = math.max(0, (faction_range - (4 * local_acid_faction)))
    local_explosive_faction = math.max(0, (faction_range - (4 * local_explosive_faction)))
    local_poison_faction = math.max(0, (faction_range - (4 * local_poison_faction)))
    local_fire_faction = math.max(0, (faction_range - (4 * local_fire_faction)))
    faction_range = local_basic_faction
      + local_piercing_faction
      + local_electric_faction
      + local_acid_faction
      + local_explosive_faction
      + local_poison_faction
      + local_fire_faction
    if faction_range == 0 then
      faction_range = 1
    end

    local faction_random = math.random(faction_range)
    if faction_random <= local_basic_faction then
      final_faction = "basic"
    elseif faction_random <= (local_basic_faction + local_piercing_faction) then
      final_faction = "piercing"
    elseif faction_random <= (local_basic_faction + local_piercing_faction + local_electric_faction) then
      final_faction = "electric"
    elseif
      faction_random <= (local_basic_faction + local_piercing_faction + local_electric_faction + local_acid_faction)
    then
      final_faction = "acid"
    elseif
      faction_random
      <= (
        local_basic_faction
        + local_piercing_faction
        + local_electric_faction
        + local_acid_faction
        + local_explosive_faction
      )
    then
      final_faction = "explosive"
    elseif
      faction_random
      <= (
        local_basic_faction
        + local_piercing_faction
        + local_electric_faction
        + local_acid_faction
        + local_explosive_faction
        + local_poison_faction
      )
    then
      final_faction = "poison"
    elseif
      faction_random
      <= (
        local_basic_faction
        + local_piercing_faction
        + local_electric_faction
        + local_acid_faction
        + local_explosive_faction
        + local_poison_faction
        + local_fire_faction
      )
    then
      final_faction = "fire"
    else
      final_faction = "basic"
    end
  elseif storage.bobmods.enemies.nauvis_faction_unlock_table[5] then
    local local_basic_faction = storage.bobmods.enemies.nauvis_faction_table.basic
    local local_piercing_faction = storage.bobmods.enemies.nauvis_faction_table.piercing
    local local_electric_faction = storage.bobmods.enemies.nauvis_faction_table.electric
    local local_acid_faction = storage.bobmods.enemies.nauvis_faction_table.acid
    local local_explosive_faction = storage.bobmods.enemies.nauvis_faction_table.explosive
    local faction_range = local_basic_faction
      + local_piercing_faction
      + local_electric_faction
      + local_acid_faction
      + local_explosive_faction
    --Multiply to add weight, and subtract to make small values big
    local_basic_faction = math.max(0, (faction_range - (3 * local_basic_faction)))
    local_piercing_faction = math.max(0, (faction_range - (3 * local_piercing_faction)))
    local_electric_faction = math.max(0, (faction_range - (3 * local_electric_faction)))
    local_acid_faction = math.max(0, (faction_range - (3 * local_acid_faction)))
    local_explosive_faction = math.max(0, (faction_range - (3 * local_explosive_faction)))
    faction_range = local_basic_faction
      + local_piercing_faction
      + local_electric_faction
      + local_acid_faction
      + local_explosive_faction
    if faction_range == 0 then
      faction_range = 1
    end

    local faction_random = math.random(faction_range)
    if faction_random <= local_basic_faction then
      final_faction = "basic"
    elseif faction_random <= (local_basic_faction + local_piercing_faction) then
      final_faction = "piercing"
    elseif faction_random <= (local_basic_faction + local_piercing_faction + local_electric_faction) then
      final_faction = "electric"
    elseif
      faction_random <= (local_basic_faction + local_piercing_faction + local_electric_faction + local_acid_faction)
    then
      final_faction = "acid"
    elseif
      faction_random
      <= (
        local_basic_faction
        + local_piercing_faction
        + local_electric_faction
        + local_acid_faction
        + local_explosive_faction
      )
    then
      final_faction = "explosive"
    else
      final_faction = "basic"
    end
  elseif storage.bobmods.enemies.nauvis_faction_unlock_table[3] then
    local local_basic_faction = storage.bobmods.enemies.nauvis_faction_table.basic
    local local_piercing_faction = storage.bobmods.enemies.nauvis_faction_table.piercing
    local local_electric_faction = storage.bobmods.enemies.nauvis_faction_table.electric
    local faction_range = local_basic_faction + local_piercing_faction + local_electric_faction
    --Multiply to add weight, and subtract to make small values big
    local_basic_faction = math.max(0, (faction_range - (2 * local_basic_faction)))
    local_piercing_faction = math.max(0, (faction_range - (2 * local_piercing_faction)))
    local_electric_faction = math.max(0, (faction_range - (2 * local_electric_faction)))
    faction_range = local_basic_faction + local_piercing_faction + local_electric_faction
    if faction_range == 0 then
      faction_range = 1
    end

    local faction_random = math.random(faction_range)
    if faction_random <= local_basic_faction then
      final_faction = "basic"
    elseif faction_random <= (local_basic_faction + local_piercing_faction) then
      final_faction = "piercing"
    elseif faction_random <= (local_basic_faction + local_piercing_faction + local_electric_faction) then
      final_faction = "electric"
    else
      final_faction = "basic"
    end
  else
    --Just-in-case fallback. This function should never be called with only one faction unlocked
    final_faction = "basic"
  end
  return final_faction
end

script.on_event(defines.events.on_chunk_generated, function(event)
  if bobmods.enemies.stop_all ~= true then
    --Locate all spawners on chunk
    local nearest_flag = { distance = 96 }
    local chunk_spawners = {}
    local chunk_worms = {}
    local chunk_enemies = game.surfaces.nauvis.find_entities_filtered({
      name = { "biter-spawner", "spitter-spawner", "small-worm-turret", "medium-worm-turret", "big-worm-turret" },
      area = event.area,
    })
    for _, enemy in pairs(chunk_enemies) do
      if enemy.type == "unit-spawner" then
        table.insert(chunk_spawners, enemy)
      elseif enemy.type == "turret" then
        table.insert(chunk_worms, enemy)
      end
    end
    if chunk_spawners[1] then
      --Using first spawner detected as central location, check if there is already a flag nearby, plant one if not
      local all_flags = storage.bobmods.enemies.faction_flags
      for i = #all_flags, 1, -1 do
        local flag_distance = math.sqrt(
          ((all_flags[i].x - chunk_spawners[1].position.x) ^ 2) + ((all_flags[i].y - chunk_spawners[1].position.y) ^ 2)
        )
        if nearest_flag.distance >= flag_distance then
          nearest_flag.distance = flag_distance
          nearest_flag.flag = all_flags[i]
        end
        if nearest_flag.distance < 64 then
          break
        end
      end
      if not nearest_flag.flag then
        nearest_flag.flag =
          bobmods.enemies.determine_faction_flag(chunk_spawners[1].position.x, chunk_spawners[1].position.y, event.tick)
      end

      for _, spawners in pairs(chunk_spawners) do
        bobmods.enemies.replace_spawner(spawners, nearest_flag.flag)
      end
    end

    if chunk_worms[1] then
      if not nearest_flag.flag then
        for _, test_flag in pairs(storage.bobmods.enemies.faction_flags) do
          local flag_distance =
            math.sqrt(((test_flag.x - chunk_worms[1].position.x) ^ 2) + ((test_flag.y - chunk_worms[1].position.y) ^ 2))
          if nearest_flag.distance > flag_distance then
            nearest_flag.distance = flag_distance
            nearest_flag.flag = test_flag
          end
        end
        if not nearest_flag.flag then
          nearest_flag.flag =
            bobmods.enemies.determine_faction_flag(chunk_worms[1].position.x, chunk_worms[1].position.y, event.tick)
        end
      end
      for _, worms in pairs(chunk_worms) do
        bobmods.enemies.replace_worm(worms, nearest_flag.flag)
      end
    end
  end
end)

script.on_event(defines.events.on_build_base_arrived, function(event)
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
  if bobmods.enemies.stop_all ~= true and evo_level >= storage.bobmods.enemies.factions_appear then
    bobmods.enemies.determine_faction_flag(event.group.position.x, event.group.position.y, event.tick)
  end
end)

script.on_event(defines.events.on_biter_base_built, function(event)
  if bobmods.enemies.stop_all ~= true then
    --Check if there is already a flag nearby, plant one if not
    local x_coord = event.entity.position.x
    local y_coord = event.entity.position.y
    local nearest_flag = { distance = 96 }
    for _, test_flag in pairs(storage.bobmods.enemies.faction_flags) do
      local flag_distance = math.sqrt(((test_flag.x - x_coord) ^ 2) + ((test_flag.y - y_coord) ^ 2))
      if nearest_flag.distance > flag_distance then
        nearest_flag.distance = flag_distance
        nearest_flag.flag = test_flag
      end
    end
    if not nearest_flag.flag then
      nearest_flag.flag = bobmods.enemies.determine_faction_flag(x_coord, y_coord, event.tick)
    end

    if event.entity.type == "unit-spawner" then
      bobmods.enemies.replace_spawner(event.entity, nearest_flag.flag)
    elseif event.entity.type == "turret" then
      bobmods.enemies.replace_worm(event.entity, nearest_flag.flag)
    end
  end
end)

function bobmods.enemies.replace_spawner(original_spawner, flag)
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
  if evo_level >= storage.bobmods.enemies.factions_appear then
    local original_position = original_spawner.position
    original_spawner.destroy()

    local faction_name
    local faction_name2
    if flag.factions[3] then
      faction_name = flag.factions[math.random(3)]
    elseif flag.factions[2] then
      faction_name = flag.factions[math.random(2)]
    else
      faction_name = flag.factions[1]
    end
    if faction_name == "basic" then
      faction_name2 = ""
    else
      faction_name2 = faction_name .. "-"
    end

    local new_spawner_name
    if evo_level >= 0.8 and settings.startup["bobmods-enemies-superspawner"].value == true then
      local which_spawner = math.random(11)
      if which_spawner <= 5 then
        new_spawner_name = "bob-" .. faction_name2 .. "biter-spawner"
      elseif which_spawner <= 10 then
        new_spawner_name = "bob-" .. faction_name2 .. "spitter-spawner"
      else
        new_spawner_name = "bob-" .. faction_name2 .. "super-spawner"
      end
    elseif evo_level >= 0.5 then
      if math.random(2) == 2 then
        new_spawner_name = "bob-" .. faction_name2 .. "biter-spawner"
      else
        new_spawner_name = "bob-" .. faction_name2 .. "spitter-spawner"
      end
    else
      if math.random(2) == 2 then
        new_spawner_name = "bob-0-" .. faction_name2 .. "biter-spawner"
      else
        new_spawner_name = "bob-0-" .. faction_name2 .. "spitter-spawner"
      end
    end

    local final_quality
    if bobmods.enemies.quality_enemies == true then
      local quality_table = { "normal", "uncommon", "rare", "epic", "legendary" }
      local quality_random = math.random(flag.quality_values[6])
      if quality_random <= flag.quality_values[1] then
        final_quality = 1
      elseif quality_random <= flag.quality_values[1] + flag.quality_values[2] then
        final_quality = 2
      elseif quality_random <= flag.quality_values[1] + flag.quality_values[2] + flag.quality_values[3] then
        final_quality = 3
      elseif
        quality_random
        <= flag.quality_values[1] + flag.quality_values[2] + flag.quality_values[3] + flag.quality_values[4]
      then
        final_quality = 4
      else
        final_quality = 5
      end
      if final_quality > flag.quality_limit then
        final_quality = flag.quality_limit
      end
      final_quality = quality_table[final_quality]
    end

    local new_spawner = game.surfaces.nauvis.create_entity({
      name = new_spawner_name,
      position = original_position,
      force = "enemy",
      quality = final_quality,
      spawn_decorations = false,
    })

    table.insert(storage.bobmods.enemies.nauvis_spawners, {
      faction = faction_name,
      position = new_spawner.position,
      unit_number = new_spawner.unit_number,
    })
    storage.bobmods.enemies.nauvis_faction_table[faction_name] = storage.bobmods.enemies.nauvis_faction_table[faction_name]
      + 1
  else
    --If factions are not unlocked, replace with appropriate basic spawner. Always replacing autoplaced spawners removes all need for checks to avoid double counting, since the functions that call this one all check for only those specific autoplaced entities
    local original_position = original_spawner.position
    original_spawner.destroy()

    local new_spawner_name
    if evo_level >= 0.5 then
      if math.random(2) == 2 then
        new_spawner_name = "bob-biter-spawner"
      else
        new_spawner_name = "bob-spitter-spawner"
      end
    else
      if math.random(2) == 2 then
        new_spawner_name = "bob-0-biter-spawner"
      else
        new_spawner_name = "bob-0-spitter-spawner"
      end
    end

    local new_spawner = game.surfaces.nauvis.create_entity({
      name = new_spawner_name,
      position = original_position,
      force = "enemy",
      spawn_decorations = false,
    })

    table.insert(storage.bobmods.enemies.nauvis_spawners, {
      faction = "basic",
      position = new_spawner.position,
      unit_number = new_spawner.unit_number,
    })
    storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
  end
end

function bobmods.enemies.replace_worm(original_worm, flag)
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
  if evo_level >= storage.bobmods.enemies.factions_appear then
    local faction_name
    if flag.factions[3] then
      faction_name = flag.factions[math.random(3)]
    elseif flag.factions[2] then
      faction_name = flag.factions[math.random(2)]
    else
      faction_name = flag.factions[1]
    end

    local worm_tier
    if evo_level >= 0.9 then
      worm_tier = 9 - math.random(4)
    elseif evo_level >= 0.85 then
      worm_tier = 8 - math.random(4)
    elseif evo_level >= 0.75 then
      worm_tier = 7 - math.random(4)
    elseif evo_level >= 0.65 then
      worm_tier = 6 - math.random(4)
    elseif evo_level >= 0.55 then
      worm_tier = 5 - math.random(4)
    elseif evo_level >= 0.45 then
      worm_tier = 4 - math.random(3)
    elseif evo_level >= 0.3 then
      worm_tier = 3 - math.random(2)
    else
      worm_tier = 1
    end

    local tiers = { "small-", "medium-", "big-", "huge-", "giant-", "titan-", "behemoth-", "leviathan-" }

    local new_worm_name
    local do_not_replace = false
    if faction_name == "basic" then
      if worm_tier == 1 then
        do_not_replace = true
      elseif worm_tier == 2 or worm_tier == 3 or worm_tier == 7 then
        new_worm_name = tiers[worm_tier] .. "worm-turret"
      else
        new_worm_name = "bob-" .. tiers[worm_tier] .. "worm-turret"
      end
    else
      new_worm_name = "bob-" .. tiers[worm_tier] .. faction_name .. "-worm-turret"
    end

    local final_quality
    if bobmods.enemies.quality_enemies == true then
      local quality_table = { "normal", "uncommon", "rare", "epic", "legendary" }
      local quality_random = math.random(flag.quality_values[6])
      if quality_random <= flag.quality_values[1] then
        final_quality = 1
      elseif quality_random <= flag.quality_values[1] + flag.quality_values[2] then
        final_quality = 2
      elseif quality_random <= flag.quality_values[1] + flag.quality_values[2] + flag.quality_values[3] then
        final_quality = 3
      elseif
        quality_random
        <= flag.quality_values[1] + flag.quality_values[2] + flag.quality_values[3] + flag.quality_values[4]
      then
        final_quality = 4
      else
        final_quality = 5
      end
      if final_quality > flag.quality_limit then
        final_quality = flag.quality_limit
      end
      final_quality = quality_table[final_quality]
    end

    if do_not_replace == false then
      local original_position = original_worm.position
      original_worm.destroy()

      local new_worm = game.surfaces.nauvis.create_entity({
        name = new_worm_name,
        position = original_position,
        force = "enemy",
        quality = final_quality,
        spawn_decorations = false,
      })
    end
  end
end

script.on_event(defines.events.on_entity_died, function(event)
  if bobmods.enemies.stop_all ~= true then
    --Remove/subtract spawner from tables when one is killed
    local spawner_faction = bobmods.enemies.identify_faction(event.entity.name)
    storage.bobmods.enemies.nauvis_faction_table[spawner_faction] =
      math.max(0, storage.bobmods.enemies.nauvis_faction_table[spawner_faction] - 1)
    for i, old_spawner in pairs(storage.bobmods.enemies.nauvis_spawners) do
      if old_spawner.unit_number == event.entity.unit_number then
        table.remove(storage.bobmods.enemies.nauvis_spawners, i)
        break
      end
    end
  end
end, { { filter = "type", type = "unit-spawner" } })

function bobmods.enemies.identify_faction(test_string)
  local spawner_faction
  if string.find(test_string, "piercing") then
    spawner_faction = "piercing"
  elseif string.find(test_string, "electric") then
    spawner_faction = "electric"
  elseif string.find(test_string, "acid") then
    spawner_faction = "acid"
  elseif string.find(test_string, "explosive") then
    spawner_faction = "explosive"
  elseif string.find(test_string, "poison") then
    spawner_faction = "poison"
  elseif string.find(test_string, "fire") then
    spawner_faction = "fire"
  else
    spawner_faction = "basic"
  end
  return spawner_faction
end

--Radar section
script.on_event(defines.events.on_sector_scanned, function(event)
  --Convert radar position to top left coverage limit
  local target_x = math.floor(event.radar.position.x / 32) * 32 - 128
  local target_y = math.floor(event.radar.position.y / 32) * 32 - 128
  target_x = target_x + ((math.random(6) - 1) * 48)
  target_y = target_y + ((math.random(6) - 1) * 48)
  --Do not order_deconstruction when enemies are nearby to keep bots from being targeted, and to make it less likely that they will be too busy to repair
  local found_enemies = game.surfaces[event.radar.surface_index].count_entities_filtered({
    area = { { target_x - 1, target_y - 1 }, { target_x + 49, target_y + 49 } },
    force = "enemy",
    limit = 1,
  })
  if found_enemies == 0 then
    local found_items = game.surfaces[event.radar.surface_index].find_entities_filtered({
      area = { { target_x - 1, target_y - 1 }, { target_x + 49, target_y + 49 } },
      type = "item-entity",
      limit = bobmods.enemies.radar_scan_limit,
    })
    for _, found_item in pairs(found_items) do
      found_item.order_deconstruction("player")
    end
  end
end, { { filter = "name", name = "bob-artifact-radar" } })
