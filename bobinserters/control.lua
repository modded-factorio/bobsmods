local mod_gui = require("mod-gui")

function gui_add_title(gui, title, button_name, drag_target)
  gui.add({ type = "flow", name = "title_flow" })
  gui.title_flow.add({ type = "label", name = "title", style = "frame_title", caption = title })
  gui.title_flow.add({ type = "empty-widget", name = "filler", style = "bob_draggable_header" })
  gui.title_flow.add({
    type = "sprite-button",
    name = button_name,
    style = "frame_action_button",
    sprite = "utility/close",
  })
  if drag_target then
    gui.title_flow.title.drag_target = gui
    gui.title_flow.filler.drag_target = gui
  end
end

if not bobmods then
  bobmods = {}
end
if not bobmods.inserters then
  bobmods.inserters = {}
end
if not bobmods.logistics then
  bobmods.logistics = {}
end
if not bobmods.logistics.inserters then
  bobmods.logistics.inserters = {}
end
if not bobmods.math then
  bobmods.math = {}
end

function bobmods.math.mod(number, div)
  if number < 0 then
    local newnumber = 0 - number
    local mod = newnumber % div
    return 0 - mod
  else
    return number % div
  end
end

function bobmods.math.floor(number)
  local num
  if number < 0 then
    num = number - 0.1
  else
    num = number + 0.1
  end
  return math.floor(num - bobmods.math.mod(num, 1))
end

function bobmods.math.round(number)
  local num
  if number < 0 then
    num = number - 0.5
  else
    num = number + 0.5
  end
  return math.floor(num - bobmods.math.mod(num, 1))
end

function bobmods.math.offset(number)
  local num = bobmods.math.mod(number, 1)
  if num < 0 then
    if num > -0.5 then
      return num
    else
      return num + 1
    end
  else
    if num < 0.5 then
      return num
    else
      return num - 1
    end
  end
end

bobmods.inserters.long_technology = "bob-long-inserters-1"
bobmods.inserters.long2_technology = "bob-long-inserters-2"
bobmods.inserters.near_technology = "bob-near-inserters"
bobmods.inserters.more_technology = "bob-more-inserters-1"
bobmods.inserters.more2_technology = "bob-more-inserters-2"
bobmods.inserters.offset = 0.2
changed_position_event = script.generate_event_name()

bobmods.inserters.range1_4way = {
  table = {
    { x = 0, y = -1 },
    { x = 1, y = 0 },
    { x = 0, y = 1 },
    { x = -1, y = 0 },
  },
  steps = 4,
}

bobmods.inserters.range1_8way = {
  table = {
    { x = 0, y = -1 },
    { x = 1, y = -1 },
    { x = 1, y = 0 },
    { x = 1, y = 1 },
    { x = 0, y = 1 },
    { x = -1, y = 1 },
    { x = -1, y = 0 },
    { x = -1, y = -1 },
  },
  steps = 8,
}

bobmods.inserters.range2_4way = {
  table = {
    { x = 0, y = -2 },
    { x = 2, y = 0 },
    { x = 0, y = 2 },
    { x = -2, y = 0 },
  },
  steps = 4,
}

bobmods.inserters.range2_8way = {
  table = {
    { x = 0, y = -2 },
    { x = 2, y = -2 },
    { x = 2, y = 0 },
    { x = 2, y = 2 },
    { x = 0, y = 2 },
    { x = -2, y = 2 },
    { x = -2, y = 0 },
    { x = -2, y = -2 },
  },
  steps = 8,
}

bobmods.inserters.range2_16way = {
  table = {
    { x = 0, y = -2 },
    { x = 1, y = -2 },
    { x = 2, y = -2 },
    { x = 2, y = -1 },
    { x = 2, y = 0 },
    { x = 2, y = 1 },
    { x = 2, y = 2 },
    { x = 1, y = 2 },
    { x = 0, y = 2 },
    { x = -1, y = 2 },
    { x = -2, y = 2 },
    { x = -2, y = 1 },
    { x = -2, y = 0 },
    { x = -2, y = -1 },
    { x = -2, y = -2 },
    { x = -1, y = -2 },
  },
  steps = 16,
}

bobmods.inserters.range3_4way = {
  table = {
    { x = 0, y = -3 },
    { x = 3, y = 0 },
    { x = 0, y = 3 },
    { x = -3, y = 0 },
  },
  steps = 4,
}

bobmods.inserters.range3_8way = {
  table = {
    { x = 0, y = -3 },
    { x = 3, y = -3 },
    { x = 3, y = 0 },
    { x = 3, y = 3 },
    { x = 0, y = 3 },
    { x = -3, y = 3 },
    { x = -3, y = 0 },
    { x = -3, y = -3 },
  },
  steps = 8,
}

bobmods.inserters.range3_24way = {
  table = {
    { x = 0, y = -3 },
    { x = 1, y = -3 },
    { x = 2, y = -3 },
    { x = 3, y = -3 },
    { x = 3, y = -2 },
    { x = 3, y = -1 },
    { x = 3, y = 0 },
    { x = 3, y = 1 },
    { x = 3, y = 2 },
    { x = 3, y = 3 },
    { x = 2, y = 3 },
    { x = 1, y = 3 },
    { x = 0, y = 3 },
    { x = -1, y = 3 },
    { x = -2, y = 3 },
    { x = -3, y = 3 },
    { x = -3, y = 2 },
    { x = -3, y = 1 },
    { x = -3, y = 0 },
    { x = -3, y = -1 },
    { x = -3, y = -2 },
    { x = -3, y = -3 },
    { x = -2, y = -3 },
    { x = -1, y = -3 },
  },
  steps = 24,
}

bobmods.inserters.positions = {
  { x = -2, y = -2 },
  { x = -1, y = -2 },
  { x = 0, y = -2 },
  { x = 1, y = -2 },
  { x = 2, y = -2 },

  { x = -2, y = -1 },
  { x = -1, y = -1 },
  { x = 0, y = -1 },
  { x = 1, y = -1 },
  { x = 2, y = -1 },

  { x = -2, y = 0 },
  { x = -1, y = 0 },
  { x = 0, y = 0 },
  { x = 1, y = 0 },
  { x = 2, y = 0 },

  { x = -2, y = 1 },
  { x = -1, y = 1 },
  { x = 0, y = 1 },
  { x = 1, y = 1 },
  { x = 2, y = 1 },

  { x = -2, y = 2 },
  { x = -1, y = 2 },
  { x = 0, y = 2 },
  { x = 1, y = 2 },
  { x = 2, y = 2 },

  { x = -3, y = -3 },
  { x = -2, y = -3 },
  { x = -1, y = -3 },
  { x = 0, y = -3 },
  { x = 1, y = -3 },
  { x = 2, y = -3 },
  { x = 3, y = -3 },

  { x = -3, y = -2 },
  { x = 3, y = -2 },

  { x = -3, y = -1 },
  { x = 3, y = -1 },

  { x = -3, y = 0 },
  { x = 3, y = 0 },

  { x = -3, y = 1 },
  { x = 3, y = 1 },

  { x = -3, y = 2 },
  { x = 3, y = 2 },

  { x = -3, y = 3 },
  { x = -2, y = 3 },
  { x = -1, y = 3 },
  { x = 0, y = 3 },
  { x = 1, y = 3 },
  { x = 2, y = 3 },
  { x = 3, y = 3 },
}

bobmods.inserters.offset_positions = {
  { x = -bobmods.inserters.offset, y = -bobmods.inserters.offset },
  { x = 0, y = -bobmods.inserters.offset },
  { x = bobmods.inserters.offset, y = -bobmods.inserters.offset },

  { x = -bobmods.inserters.offset, y = 0 },
  { x = 0, y = 0 },
  { x = bobmods.inserters.offset, y = 0 },

  { x = -bobmods.inserters.offset, y = bobmods.inserters.offset },
  { x = 0, y = bobmods.inserters.offset },
  { x = bobmods.inserters.offset, y = bobmods.inserters.offset },
}

bobmods.logistics.inserters.range1 = {
  pickup = {
    { x = 0, y = -1 },
    { x = 1, y = 0 },
    { x = 0, y = 1 },
    { x = -1, y = 0 },
  },
  drop = {
    { x = 0, y = 1 },
    { x = -1, y = 0 },
    { x = 0, y = -1 },
    { x = 1, y = 0 },
  },
}

bobmods.logistics.inserters.range2 = {
  pickup = {
    { x = 0, y = -2 },
    { x = 2, y = 0 },
    { x = 0, y = 2 },
    { x = -2, y = 0 },
  },
  drop = {
    { x = 0, y = 2 },
    { x = -2, y = 0 },
    { x = 0, y = -2 },
    { x = 2, y = 0 },
  },
}

bobmods.logistics.inserters.offset_positions = {
  near = {
    { x = 0, y = -bobmods.inserters.offset },
    { x = bobmods.inserters.offset, y = 0 },
    { x = 0, y = bobmods.inserters.offset },
    { x = -bobmods.inserters.offset, y = 0 },
  },
  far = {
    { x = 0, y = bobmods.inserters.offset },
    { x = -bobmods.inserters.offset, y = 0 },
    { x = 0, y = -bobmods.inserters.offset },
    { x = bobmods.inserters.offset, y = 0 },
  },
}

function bobmods.inserters.create_global_table_basic()
  if not storage.bobmods then
    storage.bobmods = {}
  end
  if not storage.bobmods.inserters then
    storage.bobmods.inserters = {}
  end
  if not storage.bobmods.inserters.blacklist then
    storage.bobmods.inserters.blacklist = {}
  end
end

function bobmods.inserters.create_global_table(player_index)
  bobmods.inserters.create_global_table_basic()
  if not storage.bobmods.inserters[player_index] then
    storage.bobmods.inserters[player_index] = {}
  end

  if not storage.bobmods.logistics then
    storage.bobmods.logistics = {}
  end
  if not storage.bobmods.logistics[player_index] then
    storage.bobmods.logistics[player_index] = {}
  end

  if not storage.bobmods.logistics[player_index].enabled then
    storage.bobmods.logistics[player_index].enabled = false
  end
  if not storage.bobmods.logistics[player_index].long_in then
    storage.bobmods.logistics[player_index].long_in = false
  end
  if not storage.bobmods.logistics[player_index].long_out then
    storage.bobmods.logistics[player_index].long_out = false
  end
  if not storage.bobmods.logistics[player_index].near then
    storage.bobmods.logistics[player_index].near = false
  end
  if not storage.bobmods.logistics[player_index].show then
    storage.bobmods.logistics[player_index].show = false
  end

  if not storage.bobmods.logistics[player_index].enabled2 then
    storage.bobmods.logistics[player_index].enabled2 = false
  end
  if not storage.bobmods.logistics[player_index].pickup then
    storage.bobmods.logistics[player_index].pickup = 18
  end
  if not storage.bobmods.logistics[player_index].drop then
    storage.bobmods.logistics[player_index].drop = 8
  end
  if not storage.bobmods.logistics[player_index].offset then
    storage.bobmods.logistics[player_index].offset = 2
  end
end

script.on_event("bob-inserter-pickup-rotate", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.rotate_pickup(entity, player)
  end
end)

script.on_event("bob-inserter-drop-rotate", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.rotate_drop(entity, player)
  end
end)

script.on_event("bob-inserter-pickup-range", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.pickup_range(entity, player)
  end
end)

script.on_event("bob-inserter-drop-range", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.drop_range(entity, player)
  end
end)

script.on_event("bob-inserter-long", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.long_range(entity, player)
  end
end)

script.on_event("bob-inserter-near", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    bobmods.inserters.near_range(entity, player)
  end
end)

script.on_event("bob-inserter-open-gui", function(event)
  local player = game.players[event.player_index]
  local entity = player.selected
  if
    entity
    and (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and player.can_reach_entity(entity)
    and not storage.bobmods.inserters.blacklist[entity.name]
  then
    storage.bobmods.inserters[event.player_index].position = "center"
    bobmods.inserters.open_gui(entity, player)
  else
    bobmods.inserters.delete_gui(event.player_index)
  end
end)

script.on_event(defines.events.on_gui_opened, function(event)
  local player = game.players[event.player_index]
  if event.gui_type == defines.gui_type.entity and event.entity then
    local prototype
    if event.entity.type == "inserter" then
      prototype = event.entity.prototype
    elseif event.entity.type == "entity-ghost" and event.entity.ghost_type == "inserter" then
      prototype = event.entity.ghost_prototype
    end

    if
      prototype
      and prototype.allow_custom_vectors
      and not storage.bobmods.inserters.blacklist[event.entity.name]
      and settings.get_player_settings(player)["bobmods-inserters-gui-position"].value ~= "off"
    then
      storage.bobmods.inserters[event.player_index].position = "left"
      bobmods.inserters.open_gui(event.entity, player)
    else
      bobmods.inserters.delete_gui(event.player_index)
    end
  end
end)

script.on_event(defines.events.on_gui_closed, function(event)
  -- this is checking for what GUI was just told to close. as we want to delete only when closing my GUI, or when closing the inserters GUI IF not opening mine.
  if
    storage.bobmods.inserters[event.player_index].position == "center"
    and event.gui_type == defines.gui_type.custom
    and event.element
    and event.element.valid --the GUI actually exists.
    and event.element.name == "bob_inserter_gui"
  then
    bobmods.inserters.delete_gui(event.player_index)
  end
end)

script.on_event(defines.events.on_gui_checked_state_changed, function(event)
  local player = game.players[event.player_index]
  local entity = storage.bobmods.inserters[event.player_index].entity

  if event.element.valid then
    if event.element.name == "bob_logistics_inserter_enabled" then
      storage.bobmods.logistics[event.player_index].enabled = event.element.state
      if event.element.state then
        storage.bobmods.logistics[event.player_index].enabled2 = false
      end
      bobmods.logistics.create_gui(event.player_index)
    elseif event.element.name == "bob_logistics_inserter_long_in" then
      storage.bobmods.logistics[event.player_index].long_in = event.element.state
    elseif event.element.name == "bob_logistics_inserter_long_out" then
      storage.bobmods.logistics[event.player_index].long_out = event.element.state
    elseif event.element.name == "bob_logistics_inserter_near" then
      storage.bobmods.logistics[event.player_index].near = event.element.state
    elseif event.element.name == "bob_logistics_inserter_enabled2" then
      storage.bobmods.logistics[event.player_index].enabled2 = event.element.state
      if event.element.state then
        storage.bobmods.logistics[event.player_index].enabled = false
      end
      bobmods.logistics.create_gui(event.player_index)
    elseif string.sub(event.element.name, 1, 6) == "button" then
      local i = string.gsub(event.element.name, "button", "") + 0

      if event.element.parent.name == "bob_logistics_pickup" then
        remote.call("bobinserters", "draw_button_position_check", { gui = event.element.parent, position = i })
        storage.bobmods.logistics[event.player_index].pickup = i
      elseif event.element.parent.name == "bob_logistics_drop" then
        remote.call("bobinserters", "draw_button_position_check", { gui = event.element.parent, position = i })
        storage.bobmods.logistics[event.player_index].drop = i
      elseif event.element.parent.name == "bob_logistics_offset" then
        remote.call("bobinserters", "draw_button_offset_check", { gui = event.element.parent, position = i })
        storage.bobmods.logistics[event.player_index].offset = i
      elseif entity and entity.valid and player.can_reach_entity(entity) then
        if event.element.parent.name == "bob_inserter_gui_pickup" then
          bobmods.inserters.gui_pickup_click(entity, event.element)
        elseif event.element.parent.name == "bob_inserter_gui_drop" then
          bobmods.inserters.gui_drop_click(entity, event.element)
        elseif event.element.parent.name == "bob_inserter_gui_offset" then
          bobmods.inserters.gui_offset_click(entity, event.element)
        end
      else
        bobmods.inserters.delete_gui(event.player_index)
      end
    end
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  local player = game.players[event.player_index]
  local entity = storage.bobmods.inserters[event.player_index].entity
  if event.element.valid then
    if entity and entity.valid and player.can_reach_entity(entity) then
      if event.element.name == "bob_inserter_gui_close" then
        bobmods.inserters.delete_gui(event.player_index)
      end
    else
      bobmods.inserters.delete_gui(event.player_index)
    end
  end

  if event.element.valid and event.element.name == "bob_logistics_inserter_button" then
    if storage.bobmods.logistics[event.player_index].show then
      storage.bobmods.logistics[event.player_index].show = false
    else
      storage.bobmods.logistics[event.player_index].show = true
    end
    bobmods.logistics.show_gui_options(event.player_index)
  end
end)

script.on_event(defines.events.on_player_rotated_entity, function(event)
  local player = game.players[event.player_index]
  local entity = storage.bobmods.inserters[event.player_index].entity
  if entity == event.entity and player.can_reach_entity(entity) then
    if storage.bobmods.inserters[player.index].gui and storage.bobmods.inserters[player.index].gui.valid then
      bobmods.inserters.refresh_position_checkboxes(entity, player)
    end
  end
end)

script.on_event(defines.events.on_tick, function(event)
  if game.tick % 20 == 0 then
    if storage and storage.bobmods and storage.bobmods.inserters then
      for i, player in pairs(game.connected_players) do
        if storage.bobmods.inserters[player.index] then
          local entity = storage.bobmods.inserters[player.index].entity
          if entity and (not entity.valid or not player.can_reach_entity(entity)) then
            bobmods.inserters.delete_gui(player.index)
          end
        else
          bobmods.inserters.create_global_table(player.index) -- Create for this specific online player.
        end
      end
    else
      for index, player in pairs(game.players) do -- Create for all if there are none.
        bobmods.inserters.create_global_table(index)
      end
    end
  end
end)

script.on_configuration_changed(function(event)
  for i, player in pairs(game.players) do
    bobmods.inserters.create_global_table(player.index)
    if player.gui.center.bob_inserter_gui then
      player.gui.center.bob_inserter_gui.destroy()
    end
    bobmods.inserters.delete_gui(player.index)
    bobmods.logistics.create_gui_button(player.index)
    player.gui.center.visible = true
  end
end)

script.on_init(function(event)
  for i, player in pairs(game.players) do
    bobmods.inserters.create_global_table(player.index)
    bobmods.logistics.create_gui_button(player.index)
  end
end)

script.on_event(defines.events.on_player_created, function(event)
  bobmods.inserters.create_global_table(event.player_index)
  bobmods.logistics.create_gui_button(event.player_index)
end)

script.on_event(defines.events.on_player_joined_game, function(event)
  bobmods.inserters.create_global_table(event.player_index)
  bobmods.logistics.create_gui_button(event.player_index)
end)

script.on_event(defines.events.on_research_finished, function(event)
  if
    event.research.name == bobmods.inserters.long_technology
    or event.research.name == bobmods.inserters.long2_technology
    or event.research.name == bobmods.inserters.near_technology
    or event.research.name == bobmods.inserters.more_technology
    or event.research.name == bobmods.inserters.more2_technology
  then
    for i, player in pairs(event.research.force.players) do
      local entity = storage.bobmods.inserters[player.index].entity
      if entity and entity.valid and player.can_reach_entity(entity) then
        bobmods.inserters.open_gui(entity, player)
      end
      bobmods.logistics.show_gui_options(player.index)
    end
  end
end)

script.on_event(defines.events.on_built_entity, function(event)
  local player = game.players[event.player_index]
  local entity = event.entity

  local entity_name = entity.name
  if entity.type == "entity-ghost" then
    entity_name = entity.ghost_name
  end

  if
    (entity.type == "inserter" or (entity.type == "entity-ghost" and entity.ghost_type == "inserter"))
    and not storage.bobmods.inserters.blacklist[entity_name]
  then
    bobmods.logistics.set_positions(entity, event.player_index)
  end
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  if event.setting == "bobmods-inserters-button-enable" then
    bobmods.logistics.create_gui_button(event.player_index)
  end
end)

function tech_unlocked(force, tech)
  if force.technologies[tech] then
    return force.technologies[tech].researched
  end
end

---private function, used by slimDropOffset andslimPickupOffset
function _slimOffset(entity, l)
  -- inserters have tile_height=1, tile_width=1 this normal form is assumed by bobinserters
  -- for "slim" insertes we transform the position into this normal form and back.
  -- this saves us from having to adjust all the calculations of bobinserters

  local o = { x = 0, y = 0 }
  if entity.prototype.tile_height == 0 and entity.prototype.tile_width == 1 then
    -- this calculation is tested with mod arrow-inserter and slim-inserters
    if entity.direction == defines.direction.north then
      o.y = -0.5 + l
    elseif entity.direction == defines.direction.south then
      o.y = 0.5 - l
    elseif entity.direction == defines.direction.east then
      o.x = 0.5 - l
    elseif entity.direction == defines.direction.west then
      o.x = -0.5 + l
    end
  end
  return o
end

function slimDropOffset(entity)
  return _slimOffset(entity, 1)
end

function slimPickupOffset(entity)
  return _slimOffset(entity, 0)
end

function get_pickup_position(entity)
  local o = slimPickupOffset(entity)
  return {
    x = entity.pickup_position.x - entity.position.x + o.x,
    y = entity.pickup_position.y - entity.position.y + o.y,
  }
end

function get_drop_position(entity)
  local o = slimDropOffset(entity)
  return {
    x = entity.drop_position.x - entity.position.x + o.x,
    y = entity.drop_position.y - entity.position.y + o.y,
  }
end

function split_drop_position(full_drop_position)
  local drop_position = { x = bobmods.math.round(full_drop_position.x), y = bobmods.math.round(full_drop_position.y) }
  local drop_offset = { x = bobmods.math.offset(full_drop_position.x), y = bobmods.math.offset(full_drop_position.y) }
  return drop_position, drop_offset
end

function get_split_drop_position(entity)
  local full_drop_position = get_drop_position(entity)
  local drop_position = { x = bobmods.math.round(full_drop_position.x), y = bobmods.math.round(full_drop_position.y) }
  local drop_offset = { x = bobmods.math.offset(full_drop_position.x), y = bobmods.math.offset(full_drop_position.y) }
  return drop_position, drop_offset
end

function get_drop_tile_position(entity)
  local full_drop_position = get_drop_position(entity)
  return { x = bobmods.math.round(full_drop_position.x), y = bobmods.math.round(full_drop_position.y) }
end

function get_drop_offset_position(entity)
  local full_drop_position = get_drop_position(entity)
  return { x = bobmods.math.offset(full_drop_position.x), y = bobmods.math.offset(full_drop_position.y) }
end

function combine_drop_position(drop_position, drop_offset)
  return { x = drop_position.x + drop_offset.x, y = drop_position.y + drop_offset.y }
end

function set_pickup_position(entity, newpos)
  local o = slimPickupOffset(entity)
  local original_positions = { drop_position = entity.drop_position, pickup_position = entity.pickup_position }
  local new_positions = {
    drop_position = entity.drop_position,
    pickup_position = {
      x = entity.position.x + newpos.x - o.x,
      y = entity.position.y + newpos.y - o.y,
    },
  }
  entity.pickup_position = new_positions.pickup_position
  entity.direction = entity.direction -- set direction to force update
  script.raise_event(
    changed_position_event,
    { entity = entity, new_positions = new_positions, original_positions = original_positions }
  ) -- Raise positions changed event.
end

function set_drop_position(entity, newpos)
  local o = slimDropOffset(entity)
  local original_positions = { drop_position = entity.drop_position, pickup_position = entity.pickup_position }
  local new_positions = {
    drop_position = {
      x = entity.position.x + newpos.x - o.x,
      y = entity.position.y + newpos.y - o.y,
    },
    pickup_position = entity.pickup_position,
  }
  entity.drop_position = new_positions.drop_position
  entity.direction = entity.direction -- set direction to force update
  script.raise_event(
    changed_position_event,
    { entity = entity, new_positions = new_positions, original_positions = original_positions }
  ) -- Raise positions changed event.
end

function set_split_drop_position(entity, new_position, new_offset)
  return set_drop_position(entity, combine_drop_position(new_position, new_offset))
end

function set_both_positions(entity, newpickup, newdrop)
  local od = slimDropOffset(entity)
  local op = slimPickupOffset(entity)
  local original_positions = { drop_position = entity.drop_position, pickup_position = entity.pickup_position }
  local new_positions = {
    drop_position = {
      x = entity.position.x + newdrop.x - od.x,
      y = entity.position.y + newdrop.y - od.y,
    },
    pickup_position = {
      x = entity.position.x + newpickup.x - op.x,
      y = entity.position.y + newpickup.y - op.y,
    },
  }
  entity.drop_position = new_positions.drop_position
  entity.pickup_position = new_positions.pickup_position
  entity.direction = entity.direction -- set direction to force update
  script.raise_event(
    changed_position_event,
    { entity = entity, new_positions = new_positions, original_positions = original_positions }
  ) -- Raise positions changed event.
end

function check_position(pos1, pos2)
  local pos = {}
  pos.x = pos1.x - pos2.x
  pos.y = pos1.y - pos2.y
  if pos.x < 0 then
    pos.x = 0 - pos.x
  end
  if pos.y < 0 then
    pos.y = 0 - pos.y
  end
  if pos.x < 0.1 and pos.y < 0.1 then
    return true
  else
    return false
  end
end

function bobmods.inserters.normalise_tile_offset(tile_offset)
  local new_offset = { x = 0, y = 0 }
  if tile_offset.x > 0.01 then
    new_offset.x = bobmods.inserters.offset
  end
  if tile_offset.x < -0.01 then
    new_offset.x = -bobmods.inserters.offset
  end
  if tile_offset.y > 0.01 then
    new_offset.y = bobmods.inserters.offset
  end
  if tile_offset.y < -0.01 then
    new_offset.y = -bobmods.inserters.offset
  end
  return new_offset
end

function bobmods.logistics.set_range(position_in, range)
  local position = { x = 0, y = 0 }
  if position_in.x > 0.1 then
    position.x = range
  elseif position_in.x < -0.1 then
    position.x = -range
  else
    position.x = 0
  end
  if position_in.y > 0.1 then
    position.y = range
  elseif position_in.y < -0.1 then
    position.y = -range
  else
    position.y = 0
  end
  return position
end

function calculate_new_drop_offset(drop_position, drop_offset, new_position)
  local new_offset = { x = drop_offset.x, y = drop_offset.y }

  if (drop_position.x > 0 and new_position.x < 0) or (drop_position.x < 0 and new_position.x > 0) then
    new_offset.x = 0 - drop_offset.x
  elseif drop_position.x == 0 and new_position.x ~= 0 then
    if (new_position.x > 0 and drop_position.y > 0) or (new_position.x < 0 and drop_position.y < 0) then
      new_offset.x = drop_offset.y
    else
      new_offset.x = 0 - drop_offset.y
    end
  elseif drop_position.x ~= 0 and new_position.x == 0 then
    new_offset.x = 0
  end

  if (drop_position.y > 0 and new_position.y < 0) or (drop_position.y < 0 and new_position.y > 0) then
    new_offset.y = 0 - drop_offset.y
  elseif drop_position.y == 0 and new_position.y ~= 0 then
    if (new_position.y > 0 and drop_position.x > 0) or (new_position.y < 0 and drop_position.x < 0) then
      new_offset.y = drop_offset.x
    else
      new_offset.y = 0 - drop_offset.x
    end
  elseif drop_position.y ~= 0 and new_position.y == 0 then
    new_offset.y = 0
  end

  return bobmods.inserters.normalise_tile_offset(new_offset)
end

function bobmods.logistics.set_positions(entity, player_index)
  if storage.bobmods.logistics[player_index].enabled then
    local force = game.players[player_index].force

    local long_unlocked = tech_unlocked(force, bobmods.inserters.long_technology)
    local more_unlocked = tech_unlocked(force, bobmods.inserters.more_technology)
    local near_unlocked = tech_unlocked(force, bobmods.inserters.near_technology)

    local long_in = storage.bobmods.logistics[player_index].long_in
    local long_out = storage.bobmods.logistics[player_index].long_out
    local near = storage.bobmods.logistics[player_index].near

    local pickup_position = get_pickup_position(entity)
    local drop_position, drop_offset = get_split_drop_position(entity)

    if long_unlocked then
      if more_unlocked then
        if long_in then
          pickup_position = bobmods.logistics.set_range(pickup_position, 2)
        else
          pickup_position = bobmods.logistics.set_range(pickup_position, 1)
        end
        if long_out then
          drop_position = bobmods.logistics.set_range(drop_position, 2)
        else
          drop_position = bobmods.logistics.set_range(drop_position, 1)
        end
      else
        if long_in then
          pickup_position = bobmods.logistics.set_range(pickup_position, 2)
          drop_position = bobmods.logistics.set_range(drop_position, 2)
        else
          pickup_position = bobmods.logistics.set_range(pickup_position, 1)
          drop_position = bobmods.logistics.set_range(drop_position, 1)
        end
      end
    end

    if near_unlocked then
      if near then
        drop_offset = bobmods.logistics.set_range(drop_position, -bobmods.inserters.offset)
      else
        drop_offset = bobmods.logistics.set_range(drop_position, bobmods.inserters.offset)
      end
    end
    local full_drop_position = combine_drop_position(drop_position, drop_offset)
    set_both_positions(entity, pickup_position, full_drop_position)
  end

  if
    not game.players[player_index].is_cursor_blueprint()
    and storage.bobmods.logistics[player_index].enabled2
    and remote.interfaces.bobinserters
  then
    local pickup_position =
      remote.call("bobinserters", "get_position", { position = storage.bobmods.logistics[player_index].pickup })
    local drop_position =
      remote.call("bobinserters", "get_position", { position = storage.bobmods.logistics[player_index].drop })
    local drop_offset =
      remote.call("bobinserters", "get_offset", { position = storage.bobmods.logistics[player_index].offset })

    -- treat south as up, because inserters are backwards.
    if entity.direction == defines.direction.south then
      pickup_position = pickup_position
      drop_position = drop_position
      drop_offset = drop_offset
    elseif entity.direction == defines.direction.west then
      pickup_position = { x = -pickup_position.y, y = pickup_position.x }
      drop_position = { x = -drop_position.y, y = drop_position.x }
      drop_offset = { x = -drop_offset.y, y = drop_offset.x }
    elseif entity.direction == defines.direction.north then
      pickup_position = { x = -pickup_position.x, y = -pickup_position.y }
      drop_position = { x = -drop_position.x, y = -drop_position.y }
      drop_offset = { x = -drop_offset.x, y = -drop_offset.y }
    elseif entity.direction == defines.direction.east then
      pickup_position = { x = pickup_position.y, y = -pickup_position.x }
      drop_position = { x = drop_position.y, y = -drop_position.x }
      drop_offset = { x = drop_offset.y, y = -drop_offset.x }
    end

    local near_unlocked = tech_unlocked(game.players[player_index].force, bobmods.inserters.near_technology)
    if not near_unlocked then
      local old_drop_position, old_drop_offset = get_split_drop_position(entity)
      drop_offset = calculate_new_drop_offset(old_drop_position, old_drop_offset, drop_position)
    end
    local full_drop_position = combine_drop_position(drop_position, drop_offset)
    set_both_positions(entity, pickup_position, full_drop_position)
  end
end

function bobmods.inserters.gui_pickup_click(entity, element)
  local pickup_position = get_pickup_position(entity)
  local i = string.gsub(element.name, "button", "") + 0
  pickup_position = bobmods.inserters.positions[i]
  set_pickup_position(entity, pickup_position)
  entity.direction = entity.direction -- set direction to force update
  bobmods.inserters.draw_button_position_check(element.parent, pickup_position)
end

function bobmods.inserters.gui_drop_click(entity, element)
  local i = string.gsub(element.name, "button", "") + 0
  local new_position = bobmods.inserters.positions[i]
  local drop_position, drop_offset = get_split_drop_position(entity)
  local new_offset = calculate_new_drop_offset(drop_position, drop_offset, new_position)
  set_split_drop_position(entity, new_position, new_offset)
  entity.direction = entity.direction -- set direction to force update
  bobmods.inserters.refresh_position_checkboxes(entity, game.players[element.player_index])
end

function bobmods.inserters.gui_offset_click(entity, element)
  local i = string.gsub(element.name, "button", "") + 0
  new_offset = bobmods.inserters.offset_positions[i]
  set_split_drop_position(entity, get_drop_tile_position(entity), new_offset)
  entity.direction = entity.direction -- set direction to force update
  bobmods.inserters.draw_button_offset_check(element.parent, new_offset)
end

function bobmods.inserters.rotate_position(force, pickup_position)
  local more_unlocked = tech_unlocked(force, bobmods.inserters.more_technology)
  local more2_unlocked = tech_unlocked(force, bobmods.inserters.more2_technology)
  local rotation = 1
  local position = { table = {}, steps = 0 }

  -- Decide which position table to use
  if pickup_position.x > 2.1 or pickup_position.x < -2.1 or pickup_position.y > 2.1 or pickup_position.y < -2.1 then
    if more2_unlocked then
      position = bobmods.inserters.range3_24way
    elseif more_unlocked then
      position = bobmods.inserters.range3_8way
    else
      position = bobmods.inserters.range3_4way
    end
  elseif pickup_position.x > 1.1 or pickup_position.x < -1.1 or pickup_position.y > 1.1 or pickup_position.y < -1.1 then
    if more2_unlocked then
      position = bobmods.inserters.range2_16way
    elseif more_unlocked then
      position = bobmods.inserters.range2_8way
    else
      position = bobmods.inserters.range2_4way
    end
  else
    if more_unlocked then
      position = bobmods.inserters.range1_8way
    else
      position = bobmods.inserters.range1_4way
    end
  end

  -- Find current rotation
  for i, new_position in ipairs(position.table) do
    if check_position(pickup_position, new_position) then
      rotation = i
    end
  end
  -- Rotate
  rotation = rotation + 1
  if rotation > position.steps then
    rotation = rotation - position.steps
  end

  return position.table[rotation]
end

function bobmods.inserters.rotate_pickup(entity, player)
  local pickup_position = get_pickup_position(entity)
  pickup_position = bobmods.inserters.rotate_position(player.force, pickup_position)
  set_pickup_position(entity, pickup_position)
  if entity == storage.bobmods.inserters[player.index].entity then
    bobmods.inserters.refresh_position_checkboxes(entity, player)
  end
end

function bobmods.inserters.rotate_drop(entity, player)
  local drop_position, drop_offset = get_split_drop_position(entity)
  local new_position = bobmods.inserters.rotate_position(player.force, drop_position)
  local new_offset = calculate_new_drop_offset(drop_position, drop_offset, new_position)
  set_split_drop_position(entity, new_position, new_offset)
  if entity == storage.bobmods.inserters[player.index].entity then
    bobmods.inserters.refresh_position_checkboxes(entity, player)
  end
end

function bobmods.inserters.pickup_range(entity, player)
  local long_unlocked = tech_unlocked(player.force, bobmods.inserters.long_technology)
  local long2_unlocked = tech_unlocked(player.force, bobmods.inserters.long2_technology)
  local pickup_position = get_pickup_position(entity)
  local islong = false
  local islong2 = false

  if pickup_position.x > 2.1 or pickup_position.x < -2.1 or pickup_position.y > 2.1 or pickup_position.y < -2.1 then
    islong2 = true
  elseif pickup_position.x > 1.1 or pickup_position.x < -1.1 or pickup_position.y > 1.1 or pickup_position.y < -1.1 then
    islong = true
  end

  if long_unlocked or long2_unlocked then
    if islong2 then
      pickup_position = bobmods.logistics.set_range(pickup_position, 1)
    elseif islong then
      if long2_unlocked then
        pickup_position = bobmods.logistics.set_range(pickup_position, 3)
      else
        pickup_position = bobmods.logistics.set_range(pickup_position, 1)
      end
    else
      pickup_position = bobmods.logistics.set_range(pickup_position, 2)
    end
    set_pickup_position(entity, pickup_position)
    if entity == storage.bobmods.inserters[player.index].entity then
      bobmods.inserters.refresh_position_checkboxes(entity, player)
    end
  end
end

function bobmods.inserters.drop_range(entity, player)
  local long_unlocked = tech_unlocked(player.force, bobmods.inserters.long_technology)
  local long2_unlocked = tech_unlocked(player.force, bobmods.inserters.long2_technology)
  local drop_position, drop_offset = get_split_drop_position(entity)
  local islong = false
  local islong2 = false

  if drop_position.x > 2.1 or drop_position.x < -2.1 or drop_position.y > 2.1 or drop_position.y < -2.1 then
    islong2 = true
  elseif drop_position.x > 1.1 or drop_position.x < -1.1 or drop_position.y > 1.1 or drop_position.y < -1.1 then
    islong = true
  end

  if long_unlocked or long2_unlocked then
    if islong2 then
      drop_position = bobmods.logistics.set_range(drop_position, 1)
    elseif islong then
      if long2_unlocked then
        drop_position = bobmods.logistics.set_range(drop_position, 3)
      else
        drop_position = bobmods.logistics.set_range(drop_position, 1)
      end
    else
      drop_position = bobmods.logistics.set_range(drop_position, 2)
    end
  end

  set_split_drop_position(entity, drop_position, drop_offset)
  if entity == storage.bobmods.inserters[player.index].entity then
    bobmods.inserters.refresh_position_checkboxes(entity, player)
  end
end

function bobmods.inserters.long_range(entity, player)
  local long_unlocked = tech_unlocked(player.force, bobmods.inserters.long_technology)
  local long2_unlocked = tech_unlocked(player.force, bobmods.inserters.long2_technology)

  local pickup_position = get_pickup_position(entity)
  local drop_position, drop_offset = get_split_drop_position(entity)

  local islong = false
  local islong2 = false

  if pickup_position.x > 2.1 or pickup_position.x < -2.1 or pickup_position.y > 2.1 or pickup_position.y < -2.1 then
    islong2 = true
  elseif pickup_position.x > 1.1 or pickup_position.x < -1.1 or pickup_position.y > 1.1 or pickup_position.y < -1.1 then
    islong = true
  end

  if long_unlocked or long2_unlocked then
    if islong2 then
      pickup_position = bobmods.logistics.set_range(pickup_position, 1)
      drop_position = bobmods.logistics.set_range(drop_position, 1)
    elseif islong then
      if long2_unlocked then
        pickup_position = bobmods.logistics.set_range(pickup_position, 3)
        drop_position = bobmods.logistics.set_range(drop_position, 3)
      else
        pickup_position = bobmods.logistics.set_range(pickup_position, 1)
        drop_position = bobmods.logistics.set_range(drop_position, 1)
      end
    else
      pickup_position = bobmods.logistics.set_range(pickup_position, 2)
      drop_position = bobmods.logistics.set_range(drop_position, 2)
    end
  end

  local full_drop_position = combine_drop_position(drop_position, drop_offset)
  set_both_positions(entity, pickup_position, full_drop_position)

  if entity == storage.bobmods.inserters[player.index].entity then
    bobmods.inserters.refresh_position_checkboxes(entity, player)
  end
end

function bobmods.inserters.near_range(entity, player)
  local near_unlocked = tech_unlocked(player.force, bobmods.inserters.near_technology)

  local drop_position, drop_offset = get_split_drop_position(entity)

  if near_unlocked then
    if
      (drop_offset.x == 0 and drop_offset.y == 0)
      or (drop_offset.x == 0 and drop_position.x ~= 0)
      or (drop_offset.y == 0 and drop_position.y ~= 0)
    then
      drop_offset = bobmods.inserters.normalise_tile_offset({ x = drop_position.x, y = drop_position.y })
    else
      if drop_position.x ~= 0 then
        drop_offset.x = 0 - drop_offset.x
      end
      if drop_position.y ~= 0 then
        drop_offset.y = 0 - drop_offset.y
      end
    end

    if
      (drop_position.y ~= 0 and drop_position.x ~= 0)
      and (
        (
          ((drop_position.x > 0 and drop_offset.x < 0) or (drop_offset.x > 0 and drop_position.x < 0)) -- x near
          and ((drop_position.y > 0 and drop_offset.y > 0) or (drop_offset.y < 0 and drop_position.y < 0))
        ) -- y far
        or (
          ((drop_position.x > 0 and drop_offset.x > 0) or (drop_offset.x < 0 and drop_position.x < 0)) -- x far
          and ((drop_position.y > 0 and drop_offset.y < 0) or (drop_offset.y > 0 and drop_position.y < 0))
        ) -- y near
      )
    then
      drop_offset = bobmods.inserters.normalise_tile_offset({ x = drop_position.x, y = drop_position.y })
    end
  end

  set_split_drop_position(entity, drop_position, drop_offset)
  if entity == storage.bobmods.inserters[player.index].entity then
    bobmods.inserters.refresh_position_checkboxes(entity, player)
  end
end

function bobmods.logistics.destroy_gui_button(player_index)
  local player = game.players[player_index]

  -- remove legacy GUI
  if player.gui.top.bob_logistics_inserter_gui then
    player.gui.top.bob_logistics_inserter_gui.destroy()
  end

  -- remove legacy button
  if player.gui.top.bob_logistics_inserter_button then
    player.gui.top.bob_logistics_inserter_button.destroy()
  end

  local gui = player.gui.top
  local flow = gui.mod_gui_button_flow or (gui.mod_gui_top_frame and gui.mod_gui_top_frame.mod_gui_inner_frame)

  if flow and flow.bob_logistics_inserter_button then
    flow.bob_logistics_inserter_button.destroy()
    -- Remove empty frame if we're the only thing there, remove the parent frame if we just removed the only child
    if #flow.children_names == 0 then
      local parent = flow.parent
      flow.destroy()
      if parent and parent.name ~= "top" and #parent.children_names == 0 then
        parent.destroy()
      end
    end
  end
end

function bobmods.logistics.create_gui_button(player_index)
  bobmods.logistics.destroy_gui_button(player_index)

  local player = game.players[player_index]

  if not settings.get_player_settings(player)["bobmods-inserters-button-enable"].value then
    return
  end

  mod_gui.get_button_flow(player).add({
    type = "sprite-button",
    name = "bob_logistics_inserter_button",
    tooltip = { "gui.bob-inserter-open-gui" },
    sprite = "item/fast-inserter",
    style = "mod_gui_button",
    visible = settings.get_player_settings(player)["bobmods-inserters-button-enable"].value,
  })
end

function bobmods.logistics.show_gui_options(player_index)
  local player = game.players[player_index]

  if player.gui.left.bob_logistics_inserter_gui then
    player.gui.left.bob_logistics_inserter_gui.destroy()
  end

  if storage.bobmods.logistics[player_index].show then
    bobmods.logistics.create_gui(player_index)
  end
end

function bobmods.logistics.create_gui(player_index)
  local player = game.players[player_index]
  local long_unlocked = tech_unlocked(game.players[player_index].force, bobmods.inserters.long_technology)
  local more_unlocked = tech_unlocked(game.players[player_index].force, bobmods.inserters.more_technology)
  local near_unlocked = tech_unlocked(game.players[player_index].force, bobmods.inserters.near_technology)

  if player.gui.left.bob_logistics_inserter_gui then
    player.gui.left.bob_logistics_inserter_gui.destroy()
  end

  if not settings.get_player_settings(player)["bobmods-inserters-button-enable"].value then
    return
  end

  local gui = player.gui.left.add({ type = "frame", name = "bob_logistics_inserter_gui", direction = "vertical" })
  gui.style.bottom_padding = 8
  gui.style.vertically_stretchable = false
  gui.style.horizontally_stretchable = false

  gui.add({ type = "table", name = "table", column_count = 1, style = "bob_table" })

  if long_unlocked or near_unlocked then
    gui.table.add({
      type = "checkbox",
      name = "bob_logistics_inserter_enabled",
      state = storage.bobmods.logistics[player_index].enabled,
      caption = { "gui.bob-logistics-enabled" },
    })
  end
  if storage.bobmods.logistics[player_index].enabled then
    if long_unlocked then
      if more_unlocked then
        gui.table.add({
          type = "checkbox",
          name = "bob_logistics_inserter_long_in",
          state = storage.bobmods.logistics[player_index].long_in,
          caption = { "gui.bob-logistics-pickup" },
        })
        gui.table.add({
          type = "checkbox",
          name = "bob_logistics_inserter_long_out",
          state = storage.bobmods.logistics[player_index].long_out,
          caption = { "gui.bob-logistics-drop" },
        })
      else
        gui.table.add({
          type = "checkbox",
          name = "bob_logistics_inserter_long_in",
          state = storage.bobmods.logistics[player_index].long_in,
          caption = { "gui.bob-logistics-long" },
        })
      end
    end
    if near_unlocked then
      gui.table.add({
        type = "checkbox",
        name = "bob_logistics_inserter_near",
        state = storage.bobmods.logistics[player_index].near,
        caption = { "gui.bob-logistics-near" },
      })
    end
  end

  if remote.interfaces.bobinserters then
    gui.table.add({
      type = "checkbox",
      name = "bob_logistics_inserter_enabled2",
      state = storage.bobmods.logistics[player_index].enabled2,
      caption = { "gui.bob-logistics-enabled2" },
    })
    if storage.bobmods.logistics[player_index].enabled2 then
      remote.call("bobinserters", "draw_gui", {
        player_index = player_index,
        gui = gui,
        name = "bob_logistics",
        pickup = storage.bobmods.logistics[player_index].pickup,
        drop = storage.bobmods.logistics[player_index].drop,
        offset = storage.bobmods.logistics[player_index].offset,
      })
    end
  end
end

function bobmods.inserters.delete_gui(player_index)
  local globtable = storage.bobmods.inserters[player_index]
  if globtable then
    if globtable.gui and globtable.gui.valid then
      globtable.gui.destroy()
    end
    globtable.entity = nil
    globtable.gui = nil
    globtable.pickup = nil
    globtable.drop = nil
    globtable.offset = nil
  end
end

function bobmods.inserters.open_gui(entity, player)
  bobmods.inserters.delete_gui(player.index)

  local globtable = storage.bobmods.inserters[player.index]
  globtable.entity = entity

  local long_unlocked = tech_unlocked(player.force, bobmods.inserters.long_technology)
  local long2_unlocked = tech_unlocked(player.force, bobmods.inserters.long2_technology)
  local more_unlocked = tech_unlocked(player.force, bobmods.inserters.more_technology)
  local more2_unlocked = tech_unlocked(player.force, bobmods.inserters.more2_technology)
  local near_unlocked = tech_unlocked(player.force, bobmods.inserters.near_technology)

  local pickup_position = get_pickup_position(entity)
  local full_drop_position = get_drop_position(entity)
  local drop_position = { x = bobmods.math.round(full_drop_position.x), y = bobmods.math.round(full_drop_position.y) }
  local offset_position = bobmods.inserters.normalise_tile_offset({
    x = bobmods.math.offset(full_drop_position.x),
    y = bobmods.math.offset(full_drop_position.y),
  })

  local gui
  local main_table

  if globtable.position == "left" then
    gui = player.gui.relative.add({
      type = "frame",
      name = "bob_inserter_gui",
      direction = "vertical",
      caption = { "gui.bob-named-inserter-gui", entity.prototype.localised_name },
    })
    gui.anchor = {
      gui = defines.relative_gui_type.inserter_gui,
      position = defines.relative_gui_position[settings.get_player_settings(player)["bobmods-inserters-gui-position"].value],
    }

    globtable.pickup, globtable.drop, globtable.offset = bobmods.inserters.draw_inserter_gui_main_table(
      gui,
      "bob_inserter_gui",
      pickup_position,
      drop_position,
      offset_position,
      long_unlocked,
      long2_unlocked,
      more_unlocked,
      more2_unlocked,
      near_unlocked
    )
  else
    gui = player.gui.screen.add({ type = "frame", name = "bob_inserter_gui", direction = "vertical" })
    gui_add_title(
      gui,
      { "gui.bob-named-inserter-gui", entity.prototype.localised_name },
      "bob_inserter_gui_close",
      true
    )
    local main_table_target = gui

    if settings.get_player_settings(player)["bobmods-inserters-show-window"].value ~= "off" then
      local entity_flow = gui
      local frame_width = 400
      if settings.get_player_settings(player)["bobmods-inserters-show-window"].value == "left" then
        gui.title_flow.title.caption = { "gui.bob-inserter-gui" }
        main_table_target = gui.add({ type = "flow", name = "main_flow", style = "horizontal_flow" })
        gui.main_flow.style.horizontal_spacing = 12
        entity_flow = gui.main_flow.add({ type = "table", name = "entity_flow", style = "bob_table", column_count = 1 })
        entity_flow.add({
          type = "label",
          name = "entity_name",
          style = "heading_2_label",
          caption = entity.prototype.localised_name,
        })
        frame_width = 148
      end

      entity_flow.add({ type = "frame", name = "entity_frame", style = "inside_shallow_frame" })
      entity_flow.entity_frame.style.width = frame_width
      entity_flow.entity_frame.style.height = 148
      entity_flow.entity_frame.style.horizontally_stretchable = false
      entity_flow.entity_frame.add({ type = "entity-preview", name = "entity_preview", style = "entity_button_base" })
      entity_flow.entity_frame.entity_preview.style.width = frame_width
      entity_flow.entity_frame.entity_preview.style.height = 148
      entity_flow.entity_frame.entity_preview.entity = entity
    end

    globtable.pickup, globtable.drop, globtable.offset = bobmods.inserters.draw_inserter_gui_main_table(
      main_table_target,
      "bob_inserter_gui",
      pickup_position,
      drop_position,
      offset_position,
      long_unlocked,
      long2_unlocked,
      more_unlocked,
      more2_unlocked,
      near_unlocked
    )

    gui.auto_center = true
    player.opened = gui
  end

  globtable.gui = gui
  gui.style.bottom_padding = 8
  gui.style.vertically_stretchable = false
  gui.style.horizontally_stretchable = false
end

function bobmods.inserters.draw_inserter_gui_main_table(
  gui,
  name,
  pickup_position,
  drop_position,
  offset_position,
  long_unlocked,
  long2_unlocked,
  more_unlocked,
  more2_unlocked,
  near_unlocked
)
  local isshort = false
  local islong = false
  local islong2 = false

  if pickup_position.x > 2.1 or pickup_position.x < -2.1 or pickup_position.y > 2.1 or pickup_position.y < -2.1 then
    islong2 = true
  elseif pickup_position.x > 1.1 or pickup_position.x < -1.1 or pickup_position.y > 1.1 or pickup_position.y < -1.1 then
    islong = true
  else
    isshort = true
  end
  if drop_position.x > 2.1 or drop_position.x < -2.1 or drop_position.y > 2.1 or drop_position.y < -2.1 then
    islong2 = true
  elseif drop_position.x > 1.1 or drop_position.x < -1.1 or drop_position.y > 1.1 or drop_position.y < -1.1 then
    islong = true
  else
    isshort = true
  end

  local main_table = gui.add({ type = "table", name = "main_table", column_count = 2, style = "bob_table" })
  main_table.style.horizontal_spacing = 12

  main_table.add({
    type = "label",
    name = "pickup_label",
    style = "heading_2_label",
    caption = { "gui.bob-inserter-pickup" },
  })
  main_table.add({
    type = "label",
    name = "drop_label",
    style = "heading_2_label",
    caption = { "gui.bob-inserter-drop" },
  })

  main_table.add({ type = "frame", name = "pickup", style = "inside_shallow_frame_with_padding" })
  main_table.add({ type = "frame", name = "drop", style = "inside_shallow_frame_with_padding" })
  main_table.drop.add({ type = "table", name = "table", column_count = 3, style = "bob_table" })

  local column_count = 5

  if long2_unlocked or islong2 then
    column_count = 7
  elseif long_unlocked or islong then
    column_count = 5
  else
    column_count = 3
  end

  local gui_pickup = main_table.pickup.add({
    type = "table",
    name = name .. "_pickup",
    column_count = column_count,
    style = "bob_table",
  })
  local gui_drop = main_table.drop.table.add({
    type = "table",
    name = name .. "_drop",
    column_count = column_count,
    style = "bob_table",
  })
  local gui_offset = nil

  bobmods.inserters.draw_button_grid(
    gui_pickup,
    pickup_position,
    "bob_inserter_checkbox_pickup",
    long_unlocked,
    more_unlocked,
    islong,
    long2_unlocked,
    more2_unlocked,
    islong2,
    isshort
  )
  bobmods.inserters.draw_button_grid(
    gui_drop,
    drop_position,
    "bob_inserter_checkbox_drop",
    long_unlocked,
    more_unlocked,
    islong,
    long2_unlocked,
    more2_unlocked,
    islong2,
    isshort
  )

  if near_unlocked then
    main_table.drop.table.add({ type = "label", name = "spacer2", caption = "     " })
    main_table.drop.table.add({ type = "table", name = "offset", column_count = 1, style = "bob_table" })
    main_table.drop.table.offset.add({
      type = "label",
      name = "entity_name",
      caption = { "gui.bob-inserter-offset" },
      style = "heading_2_label",
    })
    gui_offset = main_table.drop.table.offset.add({
      type = "table",
      name = name .. "_offset",
      column_count = 3,
      style = "bob_table",
    })
    bobmods.inserters.draw_offset_grid(gui_offset, offset_position)
  end
  return gui_pickup, gui_drop, gui_offset
end

function bobmods.inserters.draw_offset_grid(gui, position)
  gui.add({ type = "checkbox", name = "button1", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button2", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button3", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button4", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button5", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button6", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button7", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button8", state = false, style = "bob_inserter_checkbox_small" })
  gui.add({ type = "checkbox", name = "button9", state = false, style = "bob_inserter_checkbox_small" })

  bobmods.inserters.draw_button_offset_check(gui, position)
end

function bobmods.inserters.draw_button_grid(gui, position, style, long, more, islong, long2, more2, islong2, isshort)
  if long2 or islong2 then
    if more then
      gui.add({ type = "checkbox", name = "button26", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank26", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button27", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank27", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button28", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank28", state = false, style = "bob_inserter_blank" })
    end
    gui.add({ type = "checkbox", name = "button29", state = false, style = style })
    if more2 then
      gui.add({ type = "checkbox", name = "button30", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank30", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button31", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank31", state = false, style = "bob_inserter_blank" })
    end
    if more then
      gui.add({ type = "checkbox", name = "button32", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank32", state = false, style = "bob_inserter_blank" })
    end
  end

  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button33", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank33", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 or long or islong then
    if more and (long or islong) then
      gui.add({ type = "checkbox", name = "button1", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank1", state = false, style = "bob_inserter_blank" })
    end
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button2", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank2", state = false, style = "bob_inserter_blank" })
    end
    if long or islong then
      gui.add({ type = "checkbox", name = "button3", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank3", state = false, style = "bob_inserter_blank" })
    end
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button4", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank4", state = false, style = "bob_inserter_blank" })
    end
    if more and (long or islong) then
      gui.add({ type = "checkbox", name = "button5", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank5", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button34", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank34", state = false, style = "bob_inserter_blank" })
    end
  end

  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button35", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank35", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 or long or islong then
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button6", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank6", state = false, style = "bob_inserter_blank" })
    end
  end
  if more and (long or long2 or isshort) then
    gui.add({ type = "checkbox", name = "button7", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank7", state = false, style = "bob_inserter_blank" })
  end
  if long or long2 or isshort then
    gui.add({ type = "checkbox", name = "button8", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank8", state = false, style = "bob_inserter_blank" })
  end
  if more and (long or long2 or isshort) then
    gui.add({ type = "checkbox", name = "button9", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank9", state = false, style = "bob_inserter_blank" })
  end
  if long2 or islong2 or long or islong then
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button10", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank10", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button36", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank36", state = false, style = "bob_inserter_blank" })
    end
  end

  if long2 or islong2 then
    gui.add({ type = "checkbox", name = "button37", state = false, style = style })
  end
  if long2 or islong2 or long or islong then
    if long or islong then
      gui.add({ type = "checkbox", name = "button11", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank11", state = false, style = "bob_inserter_blank" })
    end
  end
  if long or long2 or isshort then
    gui.add({ type = "checkbox", name = "button12", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank12", state = false, style = "bob_inserter_blank" })
  end
  gui.add({ type = "checkbox", name = "middle", state = false, style = "bob_inserter_middle" })
  if long or long2 or isshort then
    gui.add({ type = "checkbox", name = "button14", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank14", state = false, style = "bob_inserter_blank" })
  end
  if long2 or islong2 or long or islong then
    if long or islong then
      gui.add({ type = "checkbox", name = "button15", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank15", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 then
    gui.add({ type = "checkbox", name = "button38", state = false, style = style })
  end

  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button39", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank39", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 or long or islong then
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button16", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank16", state = false, style = "bob_inserter_blank" })
    end
  end
  if more and (long or long2 or isshort) then
    gui.add({ type = "checkbox", name = "button17", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank17", state = false, style = "bob_inserter_blank" })
  end
  if long or long2 or isshort then
    gui.add({ type = "checkbox", name = "button18", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank18", state = false, style = "bob_inserter_blank" })
  end
  if more and (long or long2 or isshort) then
    gui.add({ type = "checkbox", name = "button19", state = false, style = style })
  else
    gui.add({ type = "checkbox", name = "blank19", state = false, style = "bob_inserter_blank" })
  end
  if long2 or islong2 or long or islong then
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button20", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank20", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button40", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank40", state = false, style = "bob_inserter_blank" })
    end
  end

  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button41", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank41", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 or long or islong then
    if more and (long or islong) then
      gui.add({ type = "checkbox", name = "button21", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank21", state = false, style = "bob_inserter_blank" })
    end
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button22", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank22", state = false, style = "bob_inserter_blank" })
    end
    if long or islong then
      gui.add({ type = "checkbox", name = "button23", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank23", state = false, style = "bob_inserter_blank" })
    end
    if more2 and (long or islong) then
      gui.add({ type = "checkbox", name = "button24", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank24", state = false, style = "bob_inserter_blank" })
    end
    if more and (long or islong) then
      gui.add({ type = "checkbox", name = "button25", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank25", state = false, style = "bob_inserter_blank" })
    end
  end
  if long2 or islong2 then
    if more2 then
      gui.add({ type = "checkbox", name = "button42", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank42", state = false, style = "bob_inserter_blank" })
    end
  end

  if long2 or islong2 then
    if more then
      gui.add({ type = "checkbox", name = "button43", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank43", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button44", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank44", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button45", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank45", state = false, style = "bob_inserter_blank" })
    end
    gui.add({ type = "checkbox", name = "button46", state = false, style = style })
    if more2 then
      gui.add({ type = "checkbox", name = "button47", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank47", state = false, style = "bob_inserter_blank" })
    end
    if more2 then
      gui.add({ type = "checkbox", name = "button48", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank48", state = false, style = "bob_inserter_blank" })
    end
    if more then
      gui.add({ type = "checkbox", name = "button49", state = false, style = style })
    else
      gui.add({ type = "checkbox", name = "blank49", state = false, style = "bob_inserter_blank" })
    end
  end

  bobmods.inserters.draw_button_position_check(gui, position)
end

function bobmods.inserters.draw_button_position_check(gui, position)
  for i, new_position in ipairs(bobmods.inserters.positions) do
    if gui["button" .. i] then
      gui["button" .. i].state = false
      if check_position(position, new_position) then
        gui["button" .. i].state = true
      end
    end
  end
end

function bobmods.inserters.draw_button_offset_check(gui, position)
  for i, new_position in ipairs(bobmods.inserters.offset_positions) do
    if gui["button" .. i] then
      gui["button" .. i].state = false
      if check_position(position, new_position) then
        gui["button" .. i].state = true
      end
    end
  end
end

function bobmods.inserters.refresh_position_checkboxes(entity, player)
  local pickup_position = get_pickup_position(entity)
  local drop_position, drop_offset = get_split_drop_position(entity)

  if storage.bobmods.inserters[player.index].pickup then
    bobmods.inserters.draw_button_position_check(storage.bobmods.inserters[player.index].pickup, pickup_position)
  end
  if storage.bobmods.inserters[player.index].drop then
    bobmods.inserters.draw_button_position_check(storage.bobmods.inserters[player.index].drop, drop_position)
  end
  if storage.bobmods.inserters[player.index].offset then
    bobmods.inserters.draw_button_offset_check(storage.bobmods.inserters[player.index].offset, drop_offset)
  end
end

remote.add_interface("bobinserters", {
  --[[
This function will draw the inserters grid GUI as used in the GUI added by this mod in any GUI you choose. This mod will not respond to those buttons being pressed.
This function takes the following variables:
gui: The GUI element to draw this GUI inside of.
name: The name prefix for the main 3 tables.
player_index: obvious
pickup: the index in table bobmods.inserters.positions to define the pickup location.
drop: the index in table bobmods.inserters.positions to define the drop location.
offset: the index in table bobmods.inserters.offset_positions to define the offset location within the drop tile.
]]
  --
  draw_gui = function(data)
    local force = game.players[data.player_index].force
    bobmods.inserters.draw_inserter_gui_main_table(
      data.gui,
      data.name,
      bobmods.inserters.positions[data.pickup],
      bobmods.inserters.positions[data.drop],
      bobmods.inserters.offset_positions[data.offset],
      tech_unlocked(force, bobmods.inserters.long_technology),
      tech_unlocked(force, bobmods.inserters.long2_technology),
      tech_unlocked(force, bobmods.inserters.more_technology),
      tech_unlocked(force, bobmods.inserters.more2_technology),
      tech_unlocked(force, bobmods.inserters.near_technology)
    )
  end,

  --[[
This function will refresh the GUI checkboxes, designed to refresh a drawn GUI grid after you click one of it's buttons.
This function takes the following variables:
gui: the GUI table that the buttons are drawn inside of.
position: the index in table bobmods.inserters.positions to define the pickup/drop location.
]]
  --
  draw_button_position_check = function(data)
    bobmods.inserters.draw_button_position_check(data.gui, bobmods.inserters.positions[data.position])
  end,

  --[[
This function will refresh the GUI checkboxes, designed to refresh a drawn GUI grid after you click one of it's buttons.
This function takes the following variables:
gui: the GUI table that the buttons are drawn inside of.
position: the index in table bobmods.inserters.offset_positions to define the offset location.
]]
  --
  draw_button_offset_check = function(data)
    bobmods.inserters.draw_button_offset_check(data.gui, bobmods.inserters.offset_positions[data.position])
  end,

  --[[
This function will take the value position in the bobmods.inserters.positions table, and return the coordinates.
]]
  --
  get_position = function(data)
    return bobmods.inserters.positions[data.position]
  end,

  --[[
This function will take the value position in the bobmods.inserters.offset_positions table, and return the coordinates.
]]
  --
  get_offset = function(data)
    return bobmods.inserters.offset_positions[data.position]
  end,

  --[[
Pass this function the name of an inserter, and it will be ignored.
EG: remote.call("bobinserters", "blacklist_inserter", "burner-inserter") will blacklist the burner inserter.
]]
  --
  blacklist_inserter = function(data)
    bobmods.inserters.create_global_table_basic()
    storage.bobmods.inserters.blacklist[data] = true
  end,
  --[[
Pass this function a table of names of inserters, and they will be ignored.
EG: remote.call("bobinserters", "blacklist_inserters", {"burner-inserter"}) will blacklist the burner inserter.
]]
  --
  blacklist_inserters = function(data)
    bobmods.inserters.create_global_table_basic()
    for i, inserter in pairs(data) do
      storage.bobmods.inserters.blacklist[inserter] = true
    end
  end,
  --[[
Returns the ID number of the custom event
Triggered event returns the following table: {entity = entity, new_positions = {drop_position = {x,y}, pickup_position = {x,y}}, original_positions = {drop_position = {x,y}, pickup_position = {x,y}}}
]]
  --
  get_changed_position_event_id = function()
    return changed_position_event
  end,
})
