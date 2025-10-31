require("remote")

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
if script.active_mods["enemyracemanager"] then
  bobmods.enemies.stop_all = true
end

if not storage.bobmods then
  storage.bobmods = {}
end
if not storage.bobmods.enemies then
  storage.bobmods.enemies = {}
end
if not storage.bobmods.enemies.nauvis_faction_table then
  storage.bobmods.enemies.nauvis_faction_table = {
    basic = 0,
  }
end
if not storage.bobmods.enemies.nauvis_faction_unlock_table then
  storage.bobmods.enemies.nauvis_faction_unlock_table = { "basic" }
end
if not storage.bobmods.enemies.nauvis_faction_unlock_order then
  storage.bobmods.enemies.nauvis_faction_unlock_order = {}
end
if not storage.bobmods.enemies.factions_counted then
  storage.bobmods.enemies.factions_counted = 1
end
if not storage.bobmods.enemies.faction_flags then
  storage.bobmods.enemies.faction_flags = {}
end
if not storage.bobmods.enemies.is_randomized then
  storage.bobmods.enemies.is_randomized = false
end
if not storage.bobmods.enemies.nauvis_raw_order then
  storage.bobmods.enemies.nauvis_raw_order = {}
end
if not storage.bobmods.enemies.nauvis_post_randomized_order then
  storage.bobmods.enemies.nauvis_post_randomized_order = {}
end


script.on_init(function()
  --Set factions_appear once to prevent issues from cropping up if it is changed mid-game
  storage.bobmods.enemies.factions_appear = settings.startup["bobmods-enemies-factionsappear"].value

  bobmods.enemies.populate_unlock_list()

  if bobmods.enemies.stop_all ~= true then
    if game.tick > 600 then
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
            raise_built = true,
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
            raise_built = true,
          })

          storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
        elseif
          detected_spawner.name == "bob-biter-spawner"
          or detected_spawner.name == "bob-spitter-spawner"
          or detected_spawner.name == "bob-super-spawner"
        then
          storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
        end
      end
    end
  end
end)

script.on_configuration_changed(function()

  --Check if any previously existing factions have been removed and delete them from faction lists where necessary. 
  local factionstring = settings.startup["bobmods-enemies-factionlist"].value

  bobmods.enemies.populate_unlock_list()

  --In case someone starts a game with a faction, then removes it, and then adds it again, do recount of all spawners.
  for factionname_for_verification1 in pairs(storage.bobmods.enemies.nauvis_faction_table) do
    storage.bobmods.enemies.nauvis_faction_table[factionname_for_verification1] = 0
  end
  local initial_spawners = game.surfaces.nauvis.find_entities_filtered({ type = "unit-spawner" })
  for _, detected_spawner in pairs(initial_spawners) do
    local spawner_faction = bobmods.enemies.identify_faction(detected_spawner.name)
    storage.bobmods.enemies.nauvis_faction_table[spawner_faction] = storage.bobmods.enemies.nauvis_faction_table[spawner_faction] + 1
  end

  --Clear nauvis_faction_table of removed factions
  for factionname_for_verification2 in pairs(storage.bobmods.enemies.nauvis_faction_table) do
    if factionname_for_verification2 ~= "basic" then
      local confirmed2 = false
      for i, raw_name2 in pairs(storage.bobmods.enemies.nauvis_raw_order) do
        if tostring(factionname_for_verification2) == raw_name2 then confirmed2 = true end
      end
      if confirmed2 == false then
        --Set to 0 instead of nil so that identify_faction still works properly, since spawners will not be removed by this process. Other functions will ignore this 0-value so long as the matching faction isn't considered to be unlocked.
        storage.bobmods.enemies.nauvis_faction_table[factionname_for_verification2] = 0
      end
    end
  end

  --Redo faction unlocking
  bobmods.enemies.unlock_factions()

  --Then remove flags from records
  if storage.bobmods.enemies.faction_flags[1] then
    for i = #storage.bobmods.enemies.faction_flags, 1, -1 do
      for v = #storage.bobmods.enemies.faction_flags[i].factions, 1, -1 do
        local confirmed3 = false
        for _, raw_name3 in pairs(storage.bobmods.enemies.nauvis_raw_order) do
          if storage.bobmods.enemies.faction_flags[i].factions[v] == raw_name3 then confirmed3 = true end
        end
        if confirmed3 == false then
          --Check each faction on the flag, and remove individually
          table.remove(storage.bobmods.enemies.faction_flags[i].factions, v)
        end
      end
      if not storage.bobmods.enemies.faction_flags[i].factions[1] then
        --Then remove the flag entirely if it ends up with no factions
        table.remove(storage.bobmods.enemies.faction_flags, i)
      end
    end
  end

end)

function bobmods.enemies.populate_unlock_list()
  local factionstring = settings.startup["bobmods-enemies-factionlist"].value
  local local_faction_table = {}
  storage.bobmods.enemies.nauvis_faction_unlock_order = {}
  if not storage.bobmods.enemies.nauvis_post_randomized_order then
    storage.bobmods.enemies.nauvis_post_randomized_order = {}
  end

  --Convert string of faction names stored in settings to a table.
  for factionname_for_unlock in string.gmatch(factionstring, "([^" .. "," .. "]+)") do
    if bobmods.enemies.check_faction_completeness(factionname_for_unlock) == true then
      table.insert(local_faction_table, factionname_for_unlock)
    else
      log("Enemy faction " .. factionname_for_unlock .. " completeness check failed")
    end
  end

  --If order has already been randomized, pre-set factions to unlock in the previously randomized order, minus any removed factions. If new factions have been added, place them at the end of the list.
  if storage.bobmods.enemies.nauvis_post_randomized_order[1] then

    local revised_table = {}

    for _, factionname_for_reshuffle in pairs(storage.bobmods.enemies.nauvis_post_randomized_order) do
      for i, factionname_from_list in pairs(local_faction_table) do
        if factionname_for_reshuffle == factionname_from_list then
          table.insert(revised_table, factionname_for_reshuffle)
        end
      end
    end

    for _, factionname_from_list2 in pairs(local_faction_table) do
      local already_added = false
      for i, factionname_from_revised in pairs(revised_table) do
        if factionname_from_revised == factionname_from_list2 then
          already_added = true
        end
      end
      if already_added == false then
        table.insert(revised_table, factionname_from_list2)
      end
    end

    local_faction_table = revised_table

  end

  --Randomize unlock order if setting enabled. Only allow to be done once per game.
  if settings.startup["bobmods-enemies-randomizeenemies"].value == true and #local_faction_table > 1 and storage.bobmods.enemies.is_randomized == false then
    for i = #local_faction_table, 2, -1 do
      local shuffle_from = math.random(i)
      local_faction_table[i], local_faction_table[shuffle_from] = local_faction_table[shuffle_from], local_faction_table[i]
    end
    storage.bobmods.enemies.is_randomized = true
    for i = 1, #local_faction_table do
      --Preserve randomized order. If the config is changed, this will ensure that the randomized order remains the same. It will also allow the order to remain mostly the same if factions are added or removed.
      storage.bobmods.enemies.nauvis_post_randomized_order[i] = local_faction_table[i]
    end
  end

  --Make an additional copy of faction list for on_configuration_changed purposes.
  storage.bobmods.enemies.nauvis_raw_order = {}
  for i = 1, #local_faction_table do
    storage.bobmods.enemies.nauvis_raw_order[i] = local_faction_table[i]
  end

  --Construct subtables for storage.bobmods.enemies.nauvis_faction_unlock_order
  local unlock1 = {
    unlock_evo = storage.bobmods.enemies.factions_appear,
    factions = {}
  }
  local unlock2 = {
    unlock_evo = math.max(0.25, (storage.bobmods.enemies.factions_appear + 0.1)),
    factions = {}
  }
  local unlock3 = {
    unlock_evo = math.min(0.75, math.max(0.35, (storage.bobmods.enemies.factions_appear + 0.2))),
    factions = {}
  }

  local faction_count = #local_faction_table
  local faction_unlock_count_1
  local faction_unlock_count_2
  if faction_count % 3 == 1 then
    faction_unlock_count_1 = math.floor(faction_count / 3)
    faction_unlock_count_2 = faction_unlock_count_1
  elseif faction_count % 3 == 2 then
    faction_unlock_count_1 = math.floor(faction_count / 3)
    faction_unlock_count_2 = math.ceil(faction_count / 3)
  else
    faction_unlock_count_1 = math.floor(faction_count / 3)
    faction_unlock_count_2 = faction_unlock_count_1
  end

  for i, faction_name_for_load in pairs(local_faction_table) do
    if i <= faction_unlock_count_1 then
      table.insert(unlock1.factions, faction_name_for_load)
    elseif i <= faction_unlock_count_1 + faction_unlock_count_2 then
      table.insert(unlock2.factions, faction_name_for_load)
    else
      table.insert(unlock3.factions, faction_name_for_load)
    end
  end

  table.insert(storage.bobmods.enemies.nauvis_faction_unlock_order, unlock1)
  table.insert(storage.bobmods.enemies.nauvis_faction_unlock_order, unlock2)
  table.insert(storage.bobmods.enemies.nauvis_faction_unlock_order, unlock3)

  --Add any special remote factions. 
  for interface_name, functions in pairs(remote.interfaces) do
    if functions["bob_special_factions"] then
      local special_table = remote.call(interface_name, "bob_special_factions")
      for _, special_parameters in pairs(special_table) do
        local completeness_check = true
        for v, special_faction_name1 in pairs(special_parameters.factions) do
          if bobmods.enemies.check_faction_completeness(special_faction_name1) == false then
            completeness_check = false
            log("Enemy faction " .. special_faction_name1 .. " completeness check failed")
          end
        end
        if completeness_check == true then
          table.insert(storage.bobmods.enemies.nauvis_faction_unlock_order, special_parameters)
          for i, special_faction_name2 in pairs(special_parameters.factions) do
            table.insert(local_faction_table, special_faction_name2)
            table.insert(storage.bobmods.enemies.nauvis_raw_order, special_faction_name2)
          end
        end
      end
    end
  end

  --Make sure all factions exist on the faction table
  for _, factionname_for_count in pairs(local_faction_table) do
    if not storage.bobmods.enemies.nauvis_faction_table[factionname_for_count] then
      storage.bobmods.enemies.nauvis_faction_table[factionname_for_count] = 0
    end
  end

  storage.bobmods.enemies.factions_counted = #local_faction_table + 1 --For basic faction

end

function bobmods.enemies.check_faction_completeness(faction_name)

  --Only require entities that are needed for the functions here. Units are not a concern here.
  if
    prototypes.entity["bob-0-" .. faction_name .. "-biter-spawner"] and
    prototypes.entity["bob-0-" .. faction_name .. "-spitter-spawner"] and
    prototypes.entity["bob-" .. faction_name .. "-biter-spawner"] and
    prototypes.entity["bob-" .. faction_name .. "-spitter-spawner"] and
    prototypes.entity["bob-small-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-medium-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-big-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-huge-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-giant-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-titan-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-behemoth-" .. faction_name .. "-worm-turret"] and
    prototypes.entity["bob-leviathan-" .. faction_name .. "-worm-turret"]
  then
    if settings.startup["bobmods-enemies-superspawner"].value == true
    then
      if prototypes.entity["bob-" .. faction_name .. "-super-spawner"]
      then
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end

end

function bobmods.enemies.unlock_factions()

  storage.bobmods.enemies.nauvis_faction_unlock_table = { "basic" }

  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")

  for _, unlock_set in pairs(storage.bobmods.enemies.nauvis_faction_unlock_order) do
    if unlock_set.unlock_evo <= evo_level then
      for i, faction_name in pairs(unlock_set.factions) do
        table.insert(storage.bobmods.enemies.nauvis_faction_unlock_table, faction_name)
      end
    end
  end

end

function bobmods.enemies.determine_faction_flag(x_coord, y_coord, call_tick)
  if bobmods.enemies.stop_all ~= true then
    if #storage.bobmods.enemies.nauvis_faction_unlock_table < storage.bobmods.enemies.factions_counted then
      bobmods.enemies.unlock_factions()
    end
  end

  --Check if any new faction is unlocked, otherwise return unplanted basic flag to avoid boxing in new factions when they develop
  if #storage.bobmods.enemies.nauvis_faction_unlock_table > 1 then
    --First check if any unlocked faction is extinct
    for _, checking_faction in pairs(storage.bobmods.enemies.nauvis_faction_unlock_table) do
      if storage.bobmods.enemies.nauvis_faction_table[checking_faction] == 0 then
        local new_flag = bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { checking_faction })
        return new_flag
      end
    end
    --Detect nearest flag if any are close enough, and match. Creates territories belonging to factions. Going backwards and starting with most recent flags saves a small amount of time when generating chunks in quick succession.
    local nearest_flag = { distance = (game.map_settings.enemy_expansion.max_expansion_distance + 3) * 32 }
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
      --If there are no valid nearby flags, pick randomly
      local new_flag =
        bobmods.enemies.plant_faction_flag(x_coord, y_coord, call_tick, { bobmods.enemies.pick_random_faction() })
      return new_flag
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
  local quality_unlocks = { 0.7, 0.8, 0.9, 0.95 }
  local quality_high_tier = 0.97
  --First three arrays are for early quality, 75%, 20%, and 5% probability respectively. Second set of three are for late-game quality.
  local quality_distribution_tables = {
    { 256, 64, 16, 0, 0, 336 },
    { 64, 27, 6, 3, 0, 100 },
    { 5, 6, 8, 4, 1, 24 },
    { 10, 5, 4, 3, 0, 22 },
    { 8, 8, 7, 6, 1, 30 },
    { 0, 4, 3, 2, 1, 10 }
  }

  for interface_name, functions in pairs(remote.interfaces) do
    if functions["bob_quality_revision"] then
      local revision_table = remote.call(interface_name, "bob_quality_revision")
      if revision_table.quality_unlocks then
        quality_unlocks = revision_table.quality_unlocks
      end
      if revision_table.quality_high_tier then
        quality_high_tier = revision_table.quality_high_tier
      end
      if revision_table.quality_distribution_tables then
        quality_distribution_tables = revision_table.quality_distribution_tables
      end
    end
  end

  local max_quality
  if evo_level >= quality_unlocks[4] then
    max_quality = 5
  elseif evo_level >= quality_unlocks[3] then
    max_quality = 4
  elseif evo_level >= quality_unlocks[2] then
    max_quality = 3
  elseif evo_level >= quality_unlocks[1] then
    max_quality = 2
  else
    max_quality = 1
  end
  local quality_dist
  local quality_random = math.random(20)
  --Values are proportional probabilities, sixth value is sum of all
  if evo_level <= quality_high_tier then
    if quality_random == 1 then
      quality_dist = quality_distribution_tables[3]
    elseif quality_random <= 5 then
      quality_dist = quality_distribution_tables[2]
    else
      quality_dist = quality_distribution_tables[1]
    end
  else
    if quality_random == 1 then
      quality_dist = quality_distribution_tables[6]
    elseif quality_random <= 5 then
      quality_dist = quality_distribution_tables[5]
    else
      quality_dist = quality_distribution_tables[4]
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
  --Randomly pick a faction, weighted toward scarcer ones
  local final_faction = "basic"
  local local_faction_counts = {}
  local faction_range = 0

  for faction_name, faction_count in pairs(storage.bobmods.enemies.nauvis_faction_table) do
    --Only count factions that currently have spawners in play. Any that do not will be covered by the extinct faction check
    if faction_count ~= 0 then
      local_faction_counts[faction_name] = faction_count
    end
  end

  for faction_name2, faction_count2 in pairs(local_faction_counts) do
    faction_range = faction_range + faction_count2
  end

  local local_faction_counts2 = local_faction_counts

  for faction_name3, faction_count3 in pairs(local_faction_counts) do
    --Multiply to add weight, and subtract to make small values big
    local_faction_counts2[faction_name3] = math.max(0, (faction_range - (4 * faction_count3)))
  end

  faction_range = 0

  for faction_name4, faction_count4 in pairs(local_faction_counts2) do
    faction_range = faction_range + faction_count4
  end

  if faction_range == 0 then
    faction_range = 1
  end

  local faction_random = math.random(faction_range)
  local local_faction_count_total = 0

  for faction_name5, faction_count5 in pairs(local_faction_counts2) do
    local_faction_count_total = local_faction_count_total + faction_count5
    if faction_random <= local_faction_count_total then
      final_faction = tostring(faction_name5)
      break
    end
  end

  return final_faction
end

script.on_event(defines.events.on_chunk_generated, function(event)
  if bobmods.enemies.stop_all ~= true and event.surface.name == "nauvis" then
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
  if bobmods.enemies.stop_all ~= true and evo_level >= storage.bobmods.enemies.factions_appear and event.group.surface.name == "nauvis" then
    bobmods.enemies.determine_faction_flag(event.group.position.x, event.group.position.y, event.tick)
  end
end)

script.on_event(defines.events.on_biter_base_built, function(event)
  if bobmods.enemies.stop_all ~= true and event.entity.surface.name == "nauvis" then
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
  if #storage.bobmods.enemies.nauvis_faction_unlock_table > 1 then
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
      if quality_random <= flag.quality_values[5] then
        final_quality = 5
      elseif quality_random <= flag.quality_values[5] + flag.quality_values[4] then
        final_quality = 4
      elseif quality_random <= flag.quality_values[5] + flag.quality_values[4] + flag.quality_values[3] then
        final_quality = 3
      elseif
        quality_random
        <= flag.quality_values[5] + flag.quality_values[4] + flag.quality_values[3] + flag.quality_values[2]
      then
        final_quality = 2
      else
        final_quality = 1
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
      move_stuck_players = true,
      raise_built = true,
    })

    storage.bobmods.enemies.nauvis_faction_table[faction_name] = storage.bobmods.enemies.nauvis_faction_table[faction_name] + 1
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
      move_stuck_players = true,
      raise_built = true,
    })

    storage.bobmods.enemies.nauvis_faction_table.basic = storage.bobmods.enemies.nauvis_faction_table.basic + 1
  end
end

function bobmods.enemies.replace_worm(original_worm, flag)
  local evo_level = game.forces.enemy.get_evolution_factor("nauvis")
  if #storage.bobmods.enemies.nauvis_faction_unlock_table > 1 then
    local faction_name
    if flag.factions[3] then
      faction_name = flag.factions[math.random(3)]
    elseif flag.factions[2] then
      faction_name = flag.factions[math.random(2)]
    else
      faction_name = flag.factions[1]
    end

    local worm_tier
    if evo_level >= 0.95 then
      worm_tier = 9 - math.random(4)
    elseif evo_level >= 0.9 then
      worm_tier = 8 - math.random(4)
    elseif evo_level >= 0.8 then
      worm_tier = 7 - math.random(4)
    elseif evo_level >= 0.7 then
      worm_tier = 6 - math.random(4)
    elseif evo_level >= 0.6 then
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
      if quality_random <= flag.quality_values[5] then
        final_quality = 5
      elseif quality_random <= flag.quality_values[5] + flag.quality_values[4] then
        final_quality = 4
      elseif quality_random <= flag.quality_values[5] + flag.quality_values[4] + flag.quality_values[3] then
        final_quality = 3
      elseif
        quality_random
        <= flag.quality_values[5] + flag.quality_values[4] + flag.quality_values[3] + flag.quality_values[2]
      then
        final_quality = 2
      else
        final_quality = 1
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
        move_stuck_players = true,
        raise_built = true,
      })
    end
  end
end

script.on_event(defines.events.on_entity_died, function(event)
  if bobmods.enemies.stop_all ~= true and event.entity.surface.name == "nauvis" then
    --Subtract spawner from records table when one is killed
    local spawner_faction = bobmods.enemies.identify_faction(event.entity.name)
    storage.bobmods.enemies.nauvis_faction_table[spawner_faction] =
      math.max(0, storage.bobmods.enemies.nauvis_faction_table[spawner_faction] - 1)

    --Check nearby flags to see if they are dead
    local all_flags = storage.bobmods.enemies.faction_flags
    for i = #all_flags, 1, -1 do
      local flag_distance = math.sqrt(
        ((all_flags[i].x - event.entity.position.x) ^ 2) + ((all_flags[i].y - event.entity.position.y) ^ 2)
      )
      if flag_distance <= 128 then
        if
          game.surfaces.nauvis.count_entities_filtered({
              area = {
                {
                  all_flags[i].x - 48,
                  all_flags[i].y - 48,
                },
                {
                  all_flags[i].x + 48,
                  all_flags[i].y + 48,
                },
              },
              type = "unit-spawner",
            })
            <= 1
            --Compare to 1 because the entity that is currently dying will still be counted as alive. Otherwise, it is reasonable to remove a flag if it is this close to death.
        then
          table.remove(storage.bobmods.enemies.faction_flags, i)
        end
      end
    end
  end
end, { { filter = "type", type = "unit-spawner" }, { filter = "force", force = "enemy", mode = "and" }, { filter = "force", force = "enemy", mode = "and" } })

function bobmods.enemies.identify_faction(test_string)
  local spawner_faction = "basic"

  for factionname_for_dead in pairs(storage.bobmods.enemies.nauvis_faction_table) do
    if string.find(test_string, tostring(factionname_for_dead)) then
      spawner_faction = tostring(factionname_for_dead)
    end
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

commands.add_command("bob-enemies-unlocks-check", nil, function(command)
  game.print("Faction unlock order: ")
  for i, unlock_set in pairs(storage.bobmods.enemies.nauvis_faction_unlock_order) do
    game.print("Unlock set "  .. tostring(i) .. " at evo level " .. tostring(unlock_set.unlock_evo))
    for v, faction_name in pairs(unlock_set.factions) do
      game.print("Faction: " .. faction_name)
    end
  end

  game.print("Unlocked factions: ")
  for i, faction_name2 in pairs(storage.bobmods.enemies.nauvis_faction_unlock_table) do
    game.print("Unlocked " .. tostring(i) .. ": " .. faction_name2)
  end
end)

commands.add_command("bob-enemies-faction-counts-check", nil, function(command)
  game.print("Faction table check: ")
  for faction_name, faction_count in pairs(storage.bobmods.enemies.nauvis_faction_table) do
    game.print("Table: " .. tostring(faction_name) .. " " .. tostring(faction_count))
  end
end)

commands.add_command("bob-enemies-flag-check", nil, function(command)
  local check_index = tonumber(command.parameter)
  if check_index and storage.bobmods.enemies.faction_flags[check_index] then
    local check_flag = storage.bobmods.enemies.faction_flags[check_index]
    game.print("Flag check: " .. check_index)
    if check_flag.factions[1] then
      game.print("Faction 1: " .. check_flag.factions[1])
    end
    if check_flag.factions[2] then
      game.print("Faction 2: " .. check_flag.factions[2])
    end
    if check_flag.factions[3] then
      game.print("Faction 3: " .. check_flag.factions[3])
    end
    game.print("Quality limit: " .. check_flag.quality_limit)
    game.print("Quality table: " .. check_flag.quality_values[1] .. " " .. check_flag.quality_values[2] .. " " .. check_flag.quality_values[3] .. " " .. check_flag.quality_values[4] .. " " .. check_flag.quality_values[5] .. " Total: " .. check_flag.quality_values[6])
    game.print("X: " .. check_flag.x .. ", Y: " .. check_flag.y)
    game.print("Tick: " .. check_flag.tick)
  else
    game.print("Need valid numerical index")
  end
  
end)
