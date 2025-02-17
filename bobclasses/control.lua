local mod_gui = require("mod-gui")

if script.active_mods["gvv"] then
  require("__gvv__.gvv")()
end

local wlog
if script.active_mods["_debug"] then
  wlog = function(msg)
    log(string.format("BOB'S CLASSES:\n%s", msg))
  end
else
  wlog = function() end
end

-- For easier debugging
local controllers = {}
for k, v in pairs(defines.controllers) do
  controllers[v] = k
end

minime_events = {}

------------------------------------------------------------------------------------
-- Notify other mods that a character has been exchanged
announce_character_swap = {}

-- "minime" must update GUI
announce_character_swap.minime = function(data)
  wlog("Entered function announce_character_swap.minime(" .. serpent.line(data) .. ")")
  if remote.interfaces.minime and remote.interfaces.minime.on_character_swapped then
    wlog("Calling remote.interfaces.minime.on_character_swapped")
    remote.call("minime", "on_character_swapped", data)
  end
end

-- "jetpack" must update to new character
announce_character_swap.jetpack = function(data)
  wlog("Entered function announce_character_swap.jetpack(" .. serpent.line(data) .. ")")
  if remote.interfaces.jetpack and remote.interfaces.jetpack.swap_jetpack_character then
    wlog("Calling remote.interfaces.jetpack.swap_jetpack_character")
    remote.call("jetpack", "swap_jetpack_character", data)
  end
end

-- Call remote functions from other mods
local function announce(mod_name, data)
  wlog("Entered function announce(" .. tostring(mod_name) .. ", " .. serpent.line(data) .. ")")

  if mod_name and announce_character_swap[mod_name] then
    announce_character_swap[mod_name](data or {})
  else
    error("No such function: announce_character_swap[" .. tostring(mod_name) .. "]!")
  end
end
------------------------------------------------------------------------------------

function gui_add_title(gui, title, button_name, drag_target)
  wlog(
    "Entered function gui_add_title("
      .. serpent.line(gui)
      .. ", "
      .. serpent.line(title)
      .. ", "
      .. serpent.line(button_name)
      .. ", "
      .. serpent.line(drag_target)
      .. ")"
  )

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

remote.add_interface("bobclasses", {
  add_classes = function(data)
    for name, class in pairs(data) do
      add_class(name, class)
    end
    if remote.interfaces["minime"] and remote.interfaces["minime"].bob_classes_update then
      remote.call("minime", "bob_classes_update")
    end
  end,

  add_starting_inventory = function(data)
    for i, item in pairs(data) do
      table.insert(storage.starting_inventory, item)
    end
  end,

  add_respawn_inventory = function(data)
    for i, item in pairs(data) do
      table.insert(storage.respawn_inventory, item)
    end
  end,

  -- Added by Pi-C (2021-10-28)
  get_classes = function()
    wlog("Entered remote function get_classes!")
    wlog("next(storage.classes): " .. tostring(storage.classes and next(storage.classes) and true or false))
    return storage.classes
  end,

  -- Jetpack expects this function on other mods' remote interfaces to inform them
  -- when a character's flying state has been toggled.
  -- {new_unit_number = uint, old_unit_number = uint,
  --  new_character = luaEntity, old_character = luaEntity}
  on_character_swapped = function(event)
    wlog("Entered remote function get_classes!")
    wlog("next(storage.classes): " .. tostring(storage.classes and next(storage.classes) and true or false))
    local new, old = event.new_character, event.old_character
    local player = (new and new.valid and new.player or new.associated_player)
      or (old and old.valid and old.player or old.associated_player)
    if player then
      refresh_avatar_gui(player.index)
    end
  end,
})

function add_class(name, class)
  wlog("Entered function add_class(" .. name .. ", " .. serpent.line(class) .. ")")

  -- "class" must be a table so we can add class_name
  --~ if name and class then
  if name and type(class) == "table" then
    -- "name" won't be available when storage.classes[name] is passed on to a
    -- function. That is a problem when remote functions from other mods are
    -- called with just the class data, so better store the name with the data!
    class.class_name = name
    storage.classes[name] = class
  end
end

function add_classes()
  -- example call to add a class. Call on on_init.
  remote.call("bobclasses", "add_classes", {
    builder = {
      entity_name = "bob-character-builder",
      button = {
        name = "bob_class_builder",
        tooltip = { "gui.bob-class-builder" },
        sprite = "class-builder-button",
      },
      bonuses = {},
      starting_inventory = {
        add = {
          { name = "burner-inserter", count = 2 },
          { name = "transport-belt", count = 45 },
          { name = "burner-inserter", count = 10 },
        },
        replace = {
          { remove = { name = "firearm-magazine", count = 2 }, add = { name = "transport-belt", count = 5 } },
        },
      },
      respawn_inventory = {
        add = {},
      },
    },
  })
  -- example call to add items on spawn and respawn. Call on on_init.
  remote.call("bobclasses", "add_starting_inventory", {
    { name = "iron-plate", count = 8 },
    { name = "copper-plate", count = 8 },
  })
  remote.call("bobclasses", "add_respawn_inventory", {
    { name = "iron-plate", count = 4 },
    { name = "copper-plate", count = 4 },
  })
end

--[[-- from base game
script.on_event(defines.events.on_player_created, function(event)
  player.insert{name="iron-plate", count=8}
  player.insert{name="pistol", count=1}
  player.insert{name="firearm-magazine", count=10}
  player.insert{name="burner-mining-drill", count = 1}
  player.insert{name="stone-furnace", count = 1}
end)

script.on_event(defines.events.on_player_respawned, function(event)
  player.insert{name="pistol", count=1}
  player.insert{name="firearm-magazine", count=10}
end)
]]
--

function create_button(player_index)
  wlog("Entered function create_button(" .. player_index .. ")")
  if mod_gui.get_button_flow(game.players[player_index]).bob_avatar_toggle_gui then
    mod_gui.get_button_flow(game.players[player_index]).bob_avatar_toggle_gui.destroy()
  end
  mod_gui.get_button_flow(game.players[player_index]).add({
    type = "sprite-button",
    name = "bob_avatar_toggle_gui",
    tooltip = { "gui.bob-avatar-show-menu" },
    sprite = "entity/character",
    style = "mod_gui_button",
  })
end

function minime_exchanged_characters(event)
  wlog("Entered function minime_exchanged_characters(" .. serpent.line(event) .. ")")
  local player_index = event.player_index
  local old_character = event.old_character
  local new_character = event.new_character
  local editor = event.editor_mode
  local god = event.god_mode

  -- Switch to another character
  if new_character and not (editor or god) then
    wlog("Calling refresh_avatar_gui(" .. player_index .. ")")
    refresh_avatar_gui(player_index)

  -- Enter editor mode
  elseif editor then
    wlog("Calling switch_to_editor(" .. player_index .. ", " .. tostring(old_character and old_character.name) .. ")")
    switch_to_editor(player_index, old_character)
  -- Enter god mode
  elseif god then
    wlog("Calling switch_to_god(" .. player_index .. ", " .. tostring(old_character and old_character.name) .. ")")
    switch_to_god(player_index, old_character)
  end
end

function get_minime_events()
  wlog("Entered function get_minime_events()")

  return (
    remote.interfaces["minime"]
    and remote.interfaces["minime"].get_minime_event_ids
    and remote.call("minime", "get_minime_event_ids")
  ) or {}
end

function register_minime_events()
  wlog("Entered function register_minime_events()")

  -- The two if-statements could be combined, but keeping them separate makes
  -- it easy to look for more events if that should ever be necessary.
  if minime_events then
    -- Player changed skin
    if minime_events["minime_exchanged_characters"] then
      wlog('Registering handler for custom event "minime_exchanged_characters"!')
      script.on_event(minime_events["minime_exchanged_characters"], minime_exchanged_characters)
    end
  end
end

function init()
  wlog("Entered function init()")
  if not storage.players then
    storage.players = {}
  end
  if not storage.names then
    storage.names = {}
  end
  if not storage.sprite then
    storage.sprite = {}
  end
  if not storage.classes then
    storage.classes = {}
  end
  if not storage.starting_inventory then
    storage.starting_inventory = {}
  end
  if not storage.respawn_inventory then
    storage.respawn_inventory = {}
  end

  storage.classes["bob-ballanced"] = nil
  storage.classes["bob-balanced"] = nil
  storage.classes["bob-miner"] = nil
  storage.classes["bob-fighter"] = nil
  storage.classes["bob-builder"] = nil

  add_class("bob-balanced", {
    entity_name = "character",
    button = {
      name = "bob_class_balanced",
      tooltip = { "gui.bob-class-balanced" },
      sprite = "class-balanced-button",
      group = "t1",
    },
    bonuses = {
      character_crafting_speed_modifier = 1,
    },
    starting_inventory = {
      add = {},
      replace = {},
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-miner", {
    entity_name = "bob-character-miner",
    button = {
      name = "bob_class_miner",
      tooltip = { "gui.bob-class-miner" },
      sprite = "class-miner-button",
      group = "t1",
    },
    bonuses = {
      character_crafting_speed_modifier = 2,
    },
    starting_inventory = {
      add = {
        { name = "burner-mining-drill", count = 1 },
        { name = "stone-furnace", count = 1 },
      },
      replace = {},
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-fighter", {
    entity_name = "bob-character-fighter",
    button = {
      name = "bob_class_fighter",
      tooltip = { "gui.bob-class-fighter" },
      sprite = "class-fighter-button",
      group = "t1",
    },
    bonuses = {
      character_maximum_following_robot_count_bonus = 10,
    },
    starting_inventory = {
      add = {
        { name = "modular-armor", count = 1 },
        { name = "personal-laser-defense-equipment", count = 1 },
        { name = "battery-equipment", count = 2 },
        { name = "solar-panel-equipment", count = 6 },
      },
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
        { remove = { name = "burner-mining-drill", count = 1 }, add = { name = "firearm-magazine", count = 45 } },
        { remove = { name = "stone-furnace", count = 1 }, add = { name = "firearm-magazine", count = 45 } },
      },
    },
    respawn_inventory = {
      add = {},
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
      },
    },
  })

  add_class("bob-builder", {
    entity_name = "bob-character-builder",
    button = {
      name = "bob_class_builder",
      tooltip = { "gui.bob-class-builder" },
      sprite = "class-builder-button",
      group = "t1",
    },
    bonuses = {},
    starting_inventory = {
      add = {
        { name = "burner-inserter", count = 6 },
        { name = "transport-belt", count = 20 },
      },
      replace = {
        { remove = { name = "firearm-magazine", count = 2 }, add = { name = "transport-belt", count = 5 } },
      },
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-balanced-2", {
    entity_name = "bob-character-balanced-2",
    button = {
      name = "bob_class_balanced_2",
      tooltip = { "gui.bob-class-balanced-2" },
      sprite = "class-balanced-2-button",
      group = "t2",
    },
    prerequisites = { "bob-bodies-2" },
    bonuses = {
      character_crafting_speed_modifier = 2,
    },
    starting_inventory = {
      add = {},
      replace = {},
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-miner-2", {
    entity_name = "bob-character-miner-2",
    button = {
      name = "bob_class_miner_2",
      tooltip = { "gui.bob-class-miner-2" },
      sprite = "class-miner-2-button",
      group = "t2",
    },
    prerequisites = { "bob-miner-body-2" },
    bonuses = {
      character_crafting_speed_modifier = 3,
    },
    starting_inventory = {
      add = {
        { name = "burner-mining-drill", count = 1 },
        { name = "stone-furnace", count = 1 },
      },
      replace = {},
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-fighter-2", {
    entity_name = "bob-character-fighter-2",
    button = {
      name = "bob_class_fighter_2",
      tooltip = { "gui.bob-class-fighter-2" },
      sprite = "class-fighter-2-button",
      group = "t2",
    },
    prerequisites = { "bob-fighter-body-2" },
    bonuses = {
      character_maximum_following_robot_count_bonus = 20,
    },
    starting_inventory = {
      add = {
        { name = "modular-armor", count = 1 },
        { name = "personal-laser-defense-equipment", count = 1 },
        { name = "battery-equipment", count = 2 },
        { name = "solar-panel-equipment", count = 6 },
      },
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
        { remove = { name = "burner-mining-drill", count = 1 }, add = { name = "firearm-magazine", count = 45 } },
        { remove = { name = "stone-furnace", count = 1 }, add = { name = "firearm-magazine", count = 45 } },
      },
    },
    respawn_inventory = {
      add = {},
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
      },
    },
  })

  add_class("bob-builder-2", {
    entity_name = "bob-character-builder-2",
    button = {
      name = "bob_class_builder_2",
      tooltip = { "gui.bob-class-builder-2" },
      sprite = "class-builder-2-button",
      group = "t2",
    },
    prerequisites = { "bob-builder-body-2" },
    bonuses = {
      character_crafting_speed_modifier = 2,
    },
    starting_inventory = {
      add = {
        { name = "burner-inserter", count = 6 },
        { name = "transport-belt", count = 20 },
      },
      replace = {
        { remove = { name = "firearm-magazine", count = 2 }, add = { name = "transport-belt", count = 5 } },
      },
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-engineer", {
    entity_name = "bob-character-engineer",
    button = {
      name = "bob_class_engineer",
      tooltip = { "gui.bob-class-engineer" },
      sprite = "class-engineer-button",
      group = "t2_advanced",
    },
    prerequisites = { "bob-engineer-body" },
    bonuses = {
      character_crafting_speed_modifier = 2,
    },
    starting_inventory = {
      add = {
        { name = "burner-mining-drill", count = 1 },
        { name = "burner-inserter", count = 4 },
        { name = "transport-belt", count = 10 },
      },
      replace = {
        { remove = { name = "firearm-magazine", count = 2 }, add = { name = "transport-belt", count = 5 } },
      },
    },
    respawn_inventory = {
      add = {},
    },
  })

  add_class("bob-prospector", {
    entity_name = "bob-character-prospector",
    button = {
      name = "bob_class_prospector",
      tooltip = { "gui.bob-class-prospector" },
      sprite = "class-prospector-button",
      group = "t2_advanced",
    },
    prerequisites = { "bob-prospector-body" },
    bonuses = {
      character_maximum_following_robot_count_bonus = 10,
    },
    starting_inventory = {
      add = {
        { name = "modular-armor", count = 1 },
        { name = "energy-shield-equipment", count = 1 },
        { name = "battery-equipment", count = 2 },
        { name = "solar-panel-equipment", count = 6 },
      },
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
        { remove = { name = "burner-mining-drill", count = 1 }, add = { name = "firearm-magazine", count = 50 } },
      },
    },
    respawn_inventory = {
      add = {},
      replace = {
        { remove = { name = "pistol", count = 1 }, add = { name = "submachine-gun", count = 1 } },
      },
    },
  })

  for i, player in pairs(game.players) do
    create_button(i)
    if not storage.players[i] then
      storage.players[i] = { respawn = false, first_character = true }
    end

    -- reset class bonuses
    for _, class in pairs(storage.classes) do
      if player.character and player.character.name == class.entity_name then
        for i, bonus in pairs(class.bonuses) do
          player.character[i] = bonus
        end
      end
    end
    local characters = player.get_associated_characters()
    for _, character in pairs(characters) do
      for _, class in pairs(storage.classes) do
        if character.name == class.entity_name then
          for i, bonus in pairs(class.bonuses) do
            character[i] = bonus
          end
        end
      end
    end
    close_avatar_gui(i) --reworked the GUI in 0.18.8, this should force close any old versions.
  end

  if remote.interfaces["minime"] and remote.interfaces["minime"].bob_classes_update then
    remote.call("minime", "bob_classes_update")
  end

  wlog('Looking for custom events from "minime" (on_configuration_changed)')
  minime_events = get_minime_events()
  register_minime_events()
end

script.on_init(init)
script.on_configuration_changed(init)

script.on_load(function()
  wlog('Looking for custom events from "minime" (on_load)')
  minime_events = get_minime_events()
  register_minime_events()
end)

script.on_event(defines.events.on_player_created, function(event)
  wlog("Entered event handler on_player_created(" .. serpent.line(event) .. ")")
  create_button(event.player_index)
  storage.players[event.player_index] = { respawn = false, first_character = true }
  class_select(event.player_index)
end)

script.on_event(defines.events.on_player_respawned, function(event)
  wlog("Entered event handler on_player_respawned(" .. serpent.line(event) .. ")")
  --player_index :: uint
  --player_port :: LuaEntity (optional): The player port used to respawn if one was used.
  if not storage.players[event.player_index] then
    storage.players[event.player_index] = {}
  end
  storage.players[event.player_index].respawn = true
  storage.players[event.player_index].first_character = false
  class_select(event.player_index)
end)

script.on_event(defines.events.on_built_entity, function(event)
  wlog("Entered event handler on_built_entity(" .. serpent.line(event) .. ")")
  if event.entity.type == "character" then
    -- when a player builds a character entity, it gets associated to them.
    game.players[event.player_index].associate_character(event.entity)
    --    event.entity.associated_player = game.players[event.player_index] -- an alternate that should do the same thing as above.
    refresh_avatar_gui(event.player_index)

    for i, class in pairs(storage.classes) do
      if event.entity.name == class.entity_name then
        for i, bonus in pairs(class.bonuses) do
          event.entity[i] = bonus
        end
      end
    end
  end
  -- due to how I want this to work, character entities can't have ghosts.
  if event.entity.type == "entity-ghost" and event.entity.ghost_type == "character" then
    event.entity.destroy()
  end
end)

-- Calls when a player dies. we're going to use it to force you to switch to a backup body on death instead of respawning.
script.on_event(defines.events.on_pre_player_died, function(event)
  wlog("Entered event handler on_pre_player_died(" .. serpent.line(event) .. ")")
  next_character(event.player_index)
end)

--script.on_event(defines.events.on_player_died, function(event)
--player_index :: uint
--cause :: LuaEntity (optional)
--end)

-- Called when an entity dies. we're going to refresh the GUI if it was one of our entities that died.
script.on_event(defines.events.on_entity_died, function(event)
  wlog("Entered event handler on_entity_died(" .. serpent.line(event) .. ")")
  wlog("entity.type: " .. tostring(event.entity.type) .. "\tentity.name: " .. tostring(event.entity.name))
  if event.entity.type == "character" then
    if remote.interfaces.minime and remote.interfaces.minime.on_entity_died then
      wlog("Inform minime about dead entity!")
      remote.call("minime", "on_entity_died", event)
    end
    local player = event.entity.associated_player
    if player then
      player.disassociate_character(event.entity)
      --      event.entity.associated_player = nil --alternate method
      refresh_avatar_gui(player.index)
    end
    storage.names[event.entity.unit_number] = nil --character name cleanup
    storage.sprite[event.entity.unit_number] = nil --character icon cleanup
  end
  --~ end)
end, { { filter = "type", type = "character" } })

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  wlog("Entered event handler on_runtime_mod_setting_changed(" .. serpent.line(event) .. ")")

  if event.setting_type == "runtime-global" then
    if
      event.setting == "bobmods-classes-god-mode"
      or event.setting == "bobmods-classes-editor-mode"
      or event.setting == "bobmods-classes-class-select"
      or event.setting == "bobmods-classes-class-select-user"
    then
      for i, player in pairs(game.players) do
        refresh_buttons_row(player.index)
      end
    end
  end
end)

script.on_event(defines.events.on_research_finished, function(event)
  wlog("Entered event handler on_research_finished(" .. serpent.line(event) .. ")")
  for i, player in pairs(event.research.force.players) do
    refresh_class_gui_classes(player.index)
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  wlog("Entered event handler on_gui_click(" .. serpent.line(event) .. ")")

  wlog("Name of clicked button: " .. tostring(event.element.valid and event.element.name))
  local player = game.players[event.player_index]
  if event.element.valid and event.element.name == "bob_avatar_toggle_gui" then
    toggle_avatar_gui(event.element.player_index)
  end

  if event.element.valid and string.find(event.element.name, "bob_avatar_list_character_") then
    local i = tonumber(string.match(event.element.name, "%d+"))
    local characters = game.players[event.player_index].get_associated_characters()
    local character = characters[i]
    if character then
      wlog("Calling switch_character for player " .. event.player_index .. "!")
      -- Must call switch_character AFTER delete_minimap_gui!
      --~ switch_character(event.player_index, character)
      --~ if character.unit_number == storage.players[event.player_index].minimap_unit then
      --~ delete_minimap_gui(event.player_index)
      --~ end
      if character.unit_number == storage.players[event.player_index].minimap_unit then
        delete_minimap_gui(event.player_index)
      end
      switch_character(event.player_index, character)
    end
  end

  if event.element.valid and string.find(event.element.name, "bob_avatar_list_minimap_") then
    local i = tonumber(string.match(event.element.name, "%d+"))
    local characters = game.players[event.player_index].get_associated_characters()
    local character = characters[i]
    if character then
      draw_minimap_gui(event.player_index, character)
    end
    refresh_minimap_buttons(event.player_index)
  end

  if event.element.valid and string.find(event.element.name, "bob_avatar_list_map_view_") then
    local i = tonumber(string.match(event.element.name, "%d+"))
    local characters = game.players[event.player_index].get_associated_characters()
    local character = characters[i]
    if character then
      player.set_controller({
        type = defines.controllers.remote,
        position = character.position,
        surface = character.surface,
      })
    end
  end

  if event.element.valid and string.find(event.element.name, "bob_avatar_list_seticon_") then
    local i = tonumber(string.match(event.element.name, "%d+"))
    local characters = game.players[event.player_index].get_associated_characters()
    local character = characters[i]
    if character then
      set_character_icon(event.player_index, character)
    end
    refresh_avatar_gui(event.player_index)
  end

  if event.element.valid and event.element.name == "bob_avatar_current_character_seticon" then
    if player.character then
      set_character_icon(event.player_index, player.character)
    end
    refresh_avatar_gui(event.player_index)
  end

  if event.element.valid and event.element.name == "bob_avatar_god" then
    switch_to_god(event.player_index)
  end
  if event.element.valid and event.element.name == "bob_avatar_editor" then
    switch_to_editor(event.player_index)
  end
  if event.element.valid and event.element.name == "bob_avatar_class_select" then
    draw_class_gui(event.player_index)
  end
  if event.element.valid and event.element.name == "bob_avatar_rename" then
    storage.players[event.player_index].rename_mode = not storage.players[event.player_index].rename_mode
    refresh_avatar_gui(event.player_index)
    refresh_buttons_row(event.player_index)
  end

  wlog("Checking class buttons")
  for i, class in pairs(storage.classes) do
    if event.element.valid and event.element.name == class.button.name then
      wlog("Must create character of class " .. class.button.name .. "!")
      create_character(event.player_index, class)
      storage.players[event.player_index].respawn = false
      storage.players[event.player_index].first_character = false
      close_class_gui(event.player_index)
    end
  end

  if event.element.valid and event.element.name == "bob_avatar_gui_close" then
    close_avatar_gui(event.player_index)
  end
  if event.element.valid and event.element.name == "bob_class_gui_close" then
    close_class_gui(event.player_index)
    storage.players[event.player_index].respawn = false
    storage.players[event.player_index].first_character = false
  end
end)

script.on_event(defines.events.on_gui_text_changed, function(event)
  wlog("Entered event handler on_gui_text_changed(" .. serpent.line(event) .. ")")
  if event.element.valid and string.find(event.element.name, "bob_avatar_list_textfield_") then
    local characters = game.players[event.player_index].get_associated_characters()
    local i = tonumber(string.match(event.element.name, "%d+"))
    local character = characters[i]
    storage.names[character.unit_number] = event.element.text
  end

  if event.element.valid and event.element.name == "bob_avatar_current_character_textfield" then
    local player = game.players[event.player_index]
    if player.character then
      storage.names[player.character.unit_number] = event.element.text
    end
  end
end)

function try_to_reopen_class_select(event)
  wlog("Entered function try_to_reopen_class_select(" .. serpent.line(event) .. ")")
  local player = game.players[event.player_index]
  if
    storage.players[event.player_index].first_character
    and player.controller_type == defines.controllers.character
    and player.character
    and player.character.valid
  then
    draw_class_gui(event.player_index)
  else
    close_class_gui(event.player_index)
  end
  refresh_avatar_gui(event.player_index)
end

script.on_event(defines.events.on_player_toggled_map_editor, try_to_reopen_class_select)
script.on_event(defines.events.on_cutscene_cancelled, try_to_reopen_class_select)

function class_select(player_index)
  wlog("Entered function class_select(" .. player_index .. ")")
  local player = game.players[player_index]
  if player.controller_type == defines.controllers.character and player.character and player.character.valid then
    draw_class_gui(player_index)
  end
end

function draw_class_gui(player_index)
  wlog("Entered function draw_class_gui(" .. player_index .. ")")
  local player = game.players[player_index]
  if not player.gui.center.bob_class_gui then
    local gui = player.gui.center.add({ type = "frame", name = "bob_class_gui", direction = "vertical" })
    gui.style.bottom_padding = 8

    gui_add_title(gui, { "gui.bob-class-pick" }, "bob_class_gui_close")

    gui.add({ type = "table", name = "table", column_count = 2 })
    gui.table.style.horizontal_spacing = 10
    add_class_gui_classes(gui.table, player_index)

    --    gui.add({type = "flow", name = "button_flow", style = "bob_button_flow"})
    --    gui.button_flow.add({type = "frame", name = "filler", style = "bob_button_filler"})
    --    gui.button_flow.add({type = "button", name = "bob_class_gui_close", style = "confirm_button", caption = {"gui.close"}})
  end
end

function add_class_gui_classes(gui, player_index)
  wlog("Entered function add_class_gui_classes(" .. serpent.line(gui) .. ", " .. player_index .. ")")
  local player = game.players[player_index]
  gui.add({ type = "table", name = "table", column_count = 2 })
  gui.table.style.horizontal_spacing = 7
  gui.table.style.vertical_spacing = 7
  gui.table.add({ type = "table", name = "t1", column_count = 5 })
  gui.table.add({ type = "table", name = "t1_advanced", column_count = 5 })
  gui.table.add({ type = "table", name = "t2", column_count = 5 })
  gui.table.add({ type = "table", name = "t2_advanced", column_count = 5 })
  gui.table.add({ type = "table", name = "t3", column_count = 5 })
  gui.table.add({ type = "table", name = "t3_advanced", column_count = 5 })
  gui.add({ type = "table", name = "other", column_count = 5 })
  for i, class in pairs(storage.classes) do
    local add_it = true
    if class.prerequisites then
      for i, technology in pairs(class.prerequisites) do
        if player.force.technologies[technology] and player.force.technologies[technology].researched == false then
          add_it = false
        end
      end
    end
    if add_it then
      if class.button.group and gui.table[class.button.group] then
        gui.table[class.button.group].add({
          type = "sprite-button",
          name = class.button.name,
          tooltip = class.button.tooltip,
          sprite = class.button.sprite,
          style = "mod_gui_item_button",
        })
      else
        gui.other.add({
          type = "sprite-button",
          name = class.button.name,
          tooltip = class.button.tooltip,
          sprite = class.button.sprite,
          style = "mod_gui_item_button",
        })
      end
    end
  end
end

function refresh_class_gui_classes(player_index)
  wlog("Entered function refresh_class_gui_classes(" .. player_index .. ")")
  local player = game.players[player_index]
  if player.gui.center.bob_class_gui and player.gui.center.bob_class_gui.table then
    player.gui.center.bob_class_gui.table.clear()
    add_class_gui_classes(player.gui.center.bob_class_gui.table, player_index)
  end
end

function close_class_gui(player_index)
  wlog("Entered function close_class_gui(" .. player_index .. ")")
  local player = game.players[player_index]
  if player.gui.center.bob_class_gui then
    player.gui.center.bob_class_gui.destroy()
  end
end

function toggle_avatar_gui(player_index)
  wlog("Entered function toggle_avator_gui(" .. player_index .. ")")
  local player = game.players[player_index]
  if not player.gui.left.bob_avatar_gui then
    draw_avatar_gui(player_index)
  else
    close_avatar_gui(player_index)
  end
end

function close_avatar_gui(player_index)
  wlog("Entered function close_avatar_gui(" .. player_index .. ")")
  local player = game.players[player_index]
  if player.gui.left.bob_avatar_gui then
    player.gui.left.bob_avatar_gui.destroy()
    local globtable = storage.players[player_index]
    globtable.rename_mode = nil
    globtable.minimap_unit = nil

    globtable.gui = nil
    globtable.buttons_row = nil
    globtable.characters_list = nil
    globtable.minimap_gui = nil
    globtable.current_character = nil
  end
end

function draw_avatar_gui(player_index)
  wlog("Entered function draw_avatar_gui(" .. player_index .. ")")
  close_avatar_gui(player_index)
  local globtable = storage.players[player_index]

  local player = game.players[player_index]
  local gui = player.gui.left.add({ type = "frame", name = "bob_avatar_gui", direction = "vertical" }) --, caption = {"gui.bob-avatar-gui"}
  globtable.gui = gui
  gui.style.bottom_padding = 8
  gui.style.vertically_stretchable = false
  gui.style.horizontally_stretchable = false

  gui_add_title(gui, { "gui.bob-avatar-gui" }, "bob_avatar_gui_close")

  globtable.current_character = gui.add({ type = "flow", name = "current_character_info" })
  gui.current_character_info.style.vertical_align = "center"
  draw_current_character_info(player_index)

  gui.add({ type = "flow", name = "main_flow", style = "horizontal_flow" })
  gui.main_flow.style.horizontal_spacing = 8

  gui.main_flow.add({ type = "frame", style = "inside_shallow_frame", name = "characters_frame" })
  gui.main_flow.characters_frame.style.padding = 4
  gui.main_flow.style.right_padding = 2
  gui.main_flow.characters_frame.style.horizontally_stretchable = true

  globtable.characters_list = gui.main_flow.characters_frame.add({
    type = "scroll-pane",
    style = "naked_scroll_pane",
    name = "bob_avatar_list",
    vertical_scroll_policy = "auto",
    horizontal_scroll_policy = "never",
  })
  gui.main_flow.characters_frame.bob_avatar_list.style.minimal_height = 0
  gui.main_flow.characters_frame.bob_avatar_list.style.maximal_height = 250
  gui.main_flow.characters_frame.bob_avatar_list.style.right_padding = 4
  draw_characters_list(player_index)

  globtable.minimap_gui = nil

  globtable.buttons_row = gui.add({ type = "flow", name = "cheat_buttons_flow" })
  gui.cheat_buttons_flow.style.top_padding = 8
  gui.cheat_buttons_flow.style.horizontally_stretchable = true
  draw_buttons_row(player_index)
end

function draw_current_character_info(player_index)
  wlog("Entered function draw_current_character_info(" .. player_index .. ")")
  local player = game.players[player_index]
  local gui = storage.players[player_index].current_character
  if gui then
    gui.clear()
    if player.character then
      local entity = player.character
      if not storage.sprite[entity.unit_number] then
        reset_character_icon(entity)
      end
      gui.add({ type = "label", name = "current", caption = { "gui.bob-current-character" } })
      gui.add({
        type = "sprite-button",
        name = "bob_avatar_current_character",
        sprite = storage.sprite[entity.unit_number],
        style = "transparent_slot",
      })
      if storage.players[player_index].rename_mode then
        gui.add({
          type = "sprite-button",
          name = "bob_avatar_current_character_seticon",
          sprite = "utility/downloading",
          style = "mod_gui_button_28",
          tooltip = { "gui.bob-avatar-seticon" },
        })
        gui.add({ type = "textfield", name = "bob_avatar_current_character_textfield" })
        if storage.names[entity.unit_number] then
          gui["bob_avatar_current_character_textfield"].text = storage.names[entity.unit_number]
        end
      else
        gui.add({
          type = "label",
          name = "bob_avatar_current_character_name",
          caption = entity.prototype.localised_name,
        })
        if storage.names[entity.unit_number] then
          gui["bob_avatar_current_character_name"].caption = storage.names[entity.unit_number]
        end
      end
    elseif player.controller_type ~= defines.controllers.character then
      gui.add({ type = "label", name = "bob_avatar_current_character_name", caption = { "gui.bob-no-character" } })
      if player.controller_type == defines.controllers.god then
        gui.bob_avatar_current_character_name.caption = { "gui.bob-avatar-god-mode" }
      elseif player.controller_type == defines.controllers.editor then
        gui.bob_avatar_current_character_name.caption = { "gui.bob-avatar-editor-mode" }
      end
    end
  end
end

function draw_buttons_row(player_index)
  wlog("Entered function draw_buttons_row(" .. player_index .. ")")
  local player = game.players[player_index]
  local gui = storage.players[player_index].buttons_row
  if gui then
    gui.clear()

    gui.add({
      type = "sprite-button",
      name = "bob_avatar_rename",
      sprite = "utility/rename_icon",
      style = "mod_gui_button_28",
    })
    gui.add({ type = "empty-widget", name = "filler", style = "bob_draggable_footer" })
    gui.filler.style.height = 28
    if storage.players[player_index].rename_mode then
      gui.bob_avatar_rename.style = "selected_mod_gui_button_28"
    end

    if not game.is_multiplayer or player.admin then
      if settings.global["bobmods-classes-god-mode"].value then
        gui.add({
          type = "button",
          name = "bob_avatar_god",
          caption = { "gui.bob-avatar-god-mode" },
          tooltip = { "gui.bob-avatar-god-mode-tooltip" },
        })
        gui.bob_avatar_god.style.minimal_width = 56
      end
      if settings.global["bobmods-classes-editor-mode"].value then
        gui.add({
          type = "button",
          name = "bob_avatar_editor",
          caption = { "gui.bob-avatar-editor-mode" },
          tooltip = { "gui.bob-avatar-editor-mode-tooltip" },
        })
        gui.bob_avatar_editor.style.minimal_width = 56
      end
    end
    if
      ((not game.is_multiplayer or player.admin) and settings.global["bobmods-classes-class-select"].value)
      or settings.global["bobmods-classes-class-select-user"].value
    then
      gui.add({
        type = "button",
        name = "bob_avatar_class_select",
        caption = { "gui.bob-avatar-class-select" },
        tooltip = { "gui.bob-avatar-class-select-tooltip" },
      })
      gui.bob_avatar_class_select.style.minimal_width = 56
    end
  end
end

function draw_characters_list(player_index)
  wlog("Entered function draw_characters_list(" .. player_index .. ")")
  if not storage.players[player_index] then -- If this doesn't exist, something went wrong.
    storage.players[player_index] = { respawn = false, rename_mode = false } --so we'll attempt to fix it
  end

  local gui = storage.players[player_index].characters_list
  local characters = game.players[player_index].get_associated_characters()
  if gui then
    gui.clear()

    if table_size(characters) == 0 then
      gui.add({ type = "label", name = "bob_avatar_no_list", caption = { "gui.bob-no-avatars" } })
      return
    end

    if storage.players[player_index].rename_mode then
      gui.add({
        type = "table",
        column_count = 6,
        name = "table",
        style = "bob_table",
        draw_horizontal_lines = true,
        draw_vertical_lines = false,
      })
    else
      gui.add({
        type = "table",
        column_count = 5,
        name = "table",
        style = "bob_table",
        draw_horizontal_lines = true,
        draw_vertical_lines = false,
      })
    end
    for i, entity in pairs(characters) do
      gui.table.add({ type = "label", name = "bob_avatar_list_number_" .. i, caption = string.format("#%d ", i) })
      if not storage.sprite[entity.unit_number] then
        reset_character_icon(entity)
      end
      gui.table.add({
        type = "sprite-button",
        name = "bob_avatar_list_character_" .. i,
        sprite = storage.sprite[entity.unit_number],
        style = "mod_gui_item_button",
        tooltip = { "gui.bob-avatar-switch" },
      })
      if storage.players[player_index].rename_mode then
        gui.table.add({
          type = "sprite-button",
          name = "bob_avatar_list_seticon_" .. i,
          sprite = "utility/downloading",
          style = "mod_gui_button_28",
          tooltip = { "gui.bob-avatar-seticon" },
        })

        gui.table.add({ type = "textfield", name = "bob_avatar_list_textfield_" .. i })
        if storage.names[entity.unit_number] then
          gui.table["bob_avatar_list_textfield_" .. i].text = storage.names[entity.unit_number]
        end
      else
        gui.table.add({ type = "label", name = "bob_avatar_list_name_" .. i, caption = entity.prototype.localised_name })
        if storage.names[entity.unit_number] then
          gui.table["bob_avatar_list_name_" .. i].caption = storage.names[entity.unit_number]
        end
      end
      gui.table.add({
        type = "sprite-button",
        name = "bob_avatar_list_map_view_" .. i,
        sprite = "utility/map",
        style = "mod_gui_button_28",
        tooltip = { "gui-train.open-in-map" },
      })
      gui.table.add({
        type = "sprite-button",
        name = "bob_avatar_list_minimap_" .. i,
        sprite = "utility/search_icon",
        style = "mod_gui_button_28",
        tooltip = { "gui.bob-avatar-minimap" },
      })
      if entity.unit_number == storage.players[player_index].minimap_unit then
        gui.table["bob_avatar_list_minimap_" .. i].style = "selected_mod_gui_button_28"
      end
    end
  end
end

function refresh_buttons_row(player_index)
  wlog("Entered function refresh_buttons_row(" .. player_index .. ")")
  draw_buttons_row(player_index)
end

function refresh_avatar_gui(player_index)
  wlog("Entered function refresh_avatar_gui(" .. player_index .. ")!")
  draw_current_character_info(player_index)
  draw_characters_list(player_index)
end

function refresh_minimap_buttons(player_index)
  wlog("Entered function refresh_minimap_buttons(" .. player_index .. ")")
  local characters = game.players[player_index].get_associated_characters()
  local gui = storage.players[player_index].characters_list
  if gui and gui.table then
    for i, entity in pairs(characters) do
      if gui.table["bob_avatar_list_minimap_" .. i] then
        if characters[i].unit_number == storage.players[player_index].minimap_unit then
          gui.table["bob_avatar_list_minimap_" .. i].style = "selected_mod_gui_button_28"
        else
          gui.table["bob_avatar_list_minimap_" .. i].style = "mod_gui_button_28"
        end
      end
    end
  end
end

function draw_minimap_gui(player_index, entity)
  wlog("Entered function draw_minimap_gui(" .. player_index .. ")")

  local player = game.players[player_index]
  local gui = storage.players[player_index].minimap_gui

  if storage.players[player_index].minimap_unit == entity.unit_number then
    delete_minimap_gui(player_index)
  else
    if not gui and storage.players[player_index].gui and storage.players[player_index].gui.main_flow then
      gui = storage.players[player_index].gui.main_flow.add({ type = "flow", name = "minimap_flow" })
      gui.style.padding = 4
      storage.players[player_index].minimap_gui = gui
    end
    if gui then
      gui.clear()
      storage.players[player_index].minimap_unit = entity.unit_number
      gui.add({
        type = "minimap",
        name = "bob_avatar_minimap",
        position = entity.position,
        surface_index = entity.surface.index,
        zoom = 0.5,
      })
      gui.bob_avatar_minimap.style.width = 250
      gui.bob_avatar_minimap.style.height = 250
    end
  end
end

function delete_minimap_gui(player_index)
  wlog("Entered function delete_minimap_gui(" .. player_index .. ")")
  local gui = storage.players[player_index].minimap_gui
  if gui then
    gui.destroy()
    storage.players[player_index].minimap_unit = nil
    storage.players[player_index].minimap_gui = nil
    refresh_minimap_buttons(player_index)
  end
end

function set_character_icon(player_index, entity)
  wlog("Entered function set_character_icon(" .. player_index .. ", " .. entity.name .. ")")

  local player = game.players[player_index]
  local hand_item = nil
  if
    player.cursor_stack
    and player.cursor_stack.valid
    and player.cursor_stack.valid_for_read
    and player.cursor_stack.name
  then
    hand_item = player.cursor_stack.name
  elseif player.cursor_ghost and player.cursor_ghost.valid and player.cursor_ghost.name then
    hand_item = player.cursor_ghost.name
  end
  if hand_item then
    storage.sprite[entity.unit_number] = "item/" .. hand_item
  else
    reset_character_icon(entity)
  end
end

function reset_character_icon(entity)
  wlog("Entered function reset_character_icon(" .. entity.name .. ")")
  local sprite = "entity/" .. entity.name
  for i, class in pairs(storage.classes) do
    if entity.name == class.entity_name then
      sprite = class.button.sprite
    end
  end
  storage.sprite[entity.unit_number] = sprite
end

function create_character(player_index, class)
  wlog("Entered function create_character(" .. player_index .. ", " .. serpent.line(class) .. ")")
  local player = game.players[player_index]

  if player.controller_type == defines.controllers.character and player.character ~= nil and player.character.valid then
    local position = player.character.position
    local surface = player.surface
    local force = player.force
    local direction = player.character.direction
    local orientation = player.character.orientation

    wlog("Creating new character!")
    --~ if player.character ~= nil and player.character.name ~= class.entity_name then
    --~ player.character = surface.create_entity{name = class.entity_name, position = position, force = force, fast_replace = true, raise_built = true}
    --~ end
    local old = player.character
    wlog("Old character: " .. tostring(old and old.name) .. " (" .. tostring(old and old.unit_number) .. ")")
    wlog(
      tostring(old and old.name)
        .. " ~= "
        .. tostring(class and class.entity_name)
        .. ": "
        .. tostring(old and old.valid and old.name ~= class.entity_name)
    )
    --~ if player.character ~= nil and player.character.name ~= class.entity_name then
    if old and old.valid and old.name ~= class.entity_name then
      wlog("Passed old character test")
      local skin
      local old_id = old.unit_number

      -- Let "minime" determine the final character version. Currently, it only has
      -- support for Bob's classes and Jetpack, but perhaps more mods will provide
      -- new versions of a character in the future, and as "minime" is a character
      -- selector mod, it's probably better at picking the correct character.
      if remote.interfaces["minime"] and remote.interfaces["minime"].bob_class_pick_character then
        skin = remote.call("minime", "bob_class_pick_character", player_index, class)
      end
      wlog("Old entity still exists after call to minime: " .. tostring(old and old.valid))
      -- For some reason, "minime" could have returned nil!
      if not (skin and prototypes.entity[skin]) then
        -- Basic compatibility with "jetpack". This assumes that "jetpack" will be the
        -- last mod creating new character versions, so that the names of flying
        -- characters will always end with "-jetpack". This may or may not be true.
        local flying = old.name:match("^(.+)%-jetpack")
        local new = class.entity_name .. "-jetpack"
        if flying and prototypes.entity[new] then
          wlog(new .. " is a flying prototype!")
          skin = new
        else
          wlog(new .. " is NOT a flying prototype!")
          skin = class.entity_name
        end
      end
      wlog("skin: " .. tostring(skin))
      wlog("Old entity still exists after setting skin: " .. tostring(old and old.valid))

      -- Added direction
      player.character = surface.create_entity({
        name = skin,
        position = position,
        direction = direction,
        force = force,
        fast_replace = true,
        raise_built = true,
      })
      wlog("New character name: " .. player.character.name)
      wlog("Old entity still exists after creating new character: " .. tostring(old and old.valid))
      -- "minime" already knows of the character change, but we must notify
      -- other mods!
      wlog("old_id: " .. tostring(old_id))
      announce("jetpack", {
        old_character = old,
        new_character = player.character,
        old_character_unit_number = old_id,
      })
      wlog("Old entity still exists after announcing new character: " .. tostring(old and old.valid))

      -- This is strange: orientation is more fine-grained than direction, but can't be
      -- used with create_entity. If direction is set only in surface.create_entity, the
      -- character will only look at N, E, S, W, but not at NE, SE, SW, and NW. Therefore,
      -- we should apply orientation after creating the new character. However, for some
      -- reason that doesn't have any effect, but setting player.character.direction again
      -- does.
      if player.character then
        player.character.direction = direction
      end
      wlog("Old entity still exists after setting direction: " .. tostring(old and old.valid))

      -- It seems that creating a character with fast_replace would destroy the old entity.
      -- But there are situations where the old character may still be around and block the
      -- new one. Make sure the old character is really removed!
      --~ wlog("Removing old character \"" .. old.name .. "\" (" .. old.unit_number .. ")")
      if old and old.valid then
        wlog("Removing old character!")
        old.destroy()
      end
    end

    if class and player.character then
      for i, bonus in pairs(class.bonuses) do
        player.character[i] = bonus
      end

      if not storage.players[player_index] then -- If this doesn't exist, something went wrong.
        storage.players[player_index] = { respawn = false, first_character = true } --so we'll attempt to fix it
      end

      if storage.players[player_index].first_character then
        for i, item in pairs(storage.starting_inventory) do
          player.insert(item)
        end
        if class.starting_inventory then
          for i, item in pairs(class.starting_inventory.add) do
            player.insert(item)
          end
          for i, item in pairs(class.starting_inventory.replace) do
            if item.remove and item.add and player.get_item_count(item.remove.name) >= item.remove.count then
              player.remove_item(item.remove)
              player.insert(item.add)
            end
          end
        end
        storage.players[player_index].first_character = false
      elseif storage.players[player_index].respawn then
        for i, item in pairs(storage.respawn_inventory) do
          player.insert(item)
        end
        if class.respawn_inventory.replace then
          for i, item in pairs(class.respawn_inventory.add) do
            player.insert(item)
          end
          for i, item in pairs(class.respawn_inventory.replace) do
            if item.remove and item.add and player.get_item_count(item.remove.name) >= item.remove.count then
              player.remove_item(item.remove)
              player.insert(item.add)
            end
          end
        end
        storage.players[player_index].respawn = false
      end
      refresh_avatar_gui(player_index)
    end
  end
end

--Switches to the first character in the association list.
function next_character(player_index)
  wlog("Entered function next_character(" .. player_index .. ")")
  local characters = game.players[player_index].get_associated_characters()
  if characters[1] then
    wlog(
      string.format(
        "Bobclasses -- Calling switch_character for olayer %s. New character: %s",
        player_index,
        characters[1].name
      )
    )
    switch_character(player_index, characters[1])
  end
end

--Switches to the new character, then adds the old one to the (end of the) association list.
function switch_character(player_index, new_character)
  wlog(
    "Entered function switch_character("
      .. player_index
      .. ", "
      .. tostring(new_character and new_character.name)
      .. ")"
  )

  local player = game.players[player_index]
  if player.controller_type == defines.controllers.editor then
    player.toggle_map_editor() --safety restores the character entity.
  end
  if remote.interfaces["space-exploration"] then
    remote.call("space-exploration", "remote_view_stop", { player = player }) --Attempt to safe exit SatNav mode
  end
  local old_character = player.character
  if new_character.surface ~= player.surface then --are we looking at the same surface as the new character?
    player.character = nil --we're not, disconnect the player
    player.teleport(new_character.position, new_character.surface) --look at the new surface
  end
  player.character = new_character

  if old_character then
    player.associate_character(old_character)
  end

  local old_unit_number = old_character and old_character.unit_number
  local new_unit_number = new_character and new_character.unit_number

  announce("minime", {
    old_character = old_character,
    new_character = new_character,
    --~ old_unit_number = old_character and old_character.unit_number,
    --~ new_unit_number = new_character and new_character.unit_number,
    old_unit_number = old_unit_number,
    new_unit_number = new_unit_number,
  })
  --~ announce("jetpack", {
  --~ old_character = old_character,
  --~ new_character = new_character,
  --~ old_unitnumber = old_character and old_character.unit_number,
  --~ new_unitnumber = new_character and new_character.unit_number,
  --~ })
  --~ end
  if remote.interfaces["jetpack"] then
    wlog("Jetpack is active!")
    local jetpacks = remote.interfaces["jetpack"].get_jetpacks and remote.call("jetpack", "get_jetpacks", {})
    wlog("Jetpacks: " .. serpent.block(jetpacks))
    -- Block jetpack of old character
    --~ if jetpacks[old_character.unit_number] and remote.interfaces["jetpack"].block_jetpack then
    if old_unit_number and jetpacks[old_unit_number] and remote.interfaces["jetpack"].block_jetpack then
      wlog("Old character was flying. Must block jetpack of character " .. old_unit_number)
      remote.call("jetpack", "block_jetpack", { character = old_character })
      old_character.active = false
    end
    -- Unblock jetpack of new character
    if new_unit_number and jetpacks[new_unit_number] and remote.interfaces["jetpack"].unblock_jetpack then
      wlog("New character is flying. Must unblock jetpack of character " .. new_unit_number)
      remote.call("jetpack", "unblock_jetpack", { character = new_character })
      new_character.active = true
    end
  end

  storage.players[player_index].respawn = false
  storage.players[player_index].first_character = false
  refresh_avatar_gui(player_index)
end

--Switches to the god controller, then adds the connected character to the (end of the) association list.
-- Added optional argument old_char. Per default, the player's current character will be used, but
-- if this function is called from a remote function, this allows to pass on a different character.
--~ function switch_to_god(player_index)
function switch_to_god(player_index, old_char)
  wlog("Entered function switch_to_god(" .. player_index .. ")")

  --~ local old_character = game.players[player_index].character
  local old_character = old_char or game.players[player_index].character
  game.players[player_index].set_controller({ type = defines.controllers.god })
  if old_character then
    game.players[player_index].associate_character(old_character)
  end

  -- Skip this if called with old_char, i.e. if this function is called in response
  -- to changes by another mod. If another mod toggled editor/god mode, it's their
  -- responsibility to announce the change.
  if not old_char then
    -- Notify other mods that a character has been exchanged
    --~ announce("minime", {old = old_character})
    announce("minime", {
      old_character = old_character,
      old_unit_number = old_character and old_character.unit_number,
      player_index = player_index,
      god_mode = true,
    })
    announce("jetpack", {
      old_character = old_character,
      old_character_unit_number = old_character and old_character.unit_number,
    })
  end

  refresh_avatar_gui(player_index)
end

--Switches to the editor controller, then adds the connected character to the (end of the) association list.
-- Added optional argument old_char. Per default, the player's current character will be used, but
-- if this function is called from a remote function, this allows to pass on a different character.
--~ function switch_to_editor(player_index)
function switch_to_editor(player_index, old_char)
  wlog("Entered function switch_to_editor(" .. player_index .. ", " .. tostring(old_char and old_char.name) .. ")")
  wlog(
    string.format("Controller of player %s: %s", player_index, controllers[game.players[player_index].controller_type])
  )

  --~ local old_character = game.players[player_index].character
  local old_character = old_char or game.players[player_index].character
  game.players[player_index].set_controller({ type = defines.controllers.editor })
  wlog(
    string.format(
      "Controller of player %s after change: %s",
      player_index,
      controllers[game.players[player_index].controller_type]
    )
  )
  if old_character then
    game.players[player_index].associate_character(old_character)
  end

  -- Skip this if called with old_char, i.e. if this function is called in response
  -- to changes by another mod. If another mod toggled editor/god mode, it's their
  -- responsibility to announce the change.
  if not old_char then
    -- Notify other mods that a character has been exchanged
    announce("minime", {
      old_character = old_character,
      old_unit_number = old_character and old_character.unit_number,
      player_index = player_index,
      editor_mode = true,
    })
    announce("jetpack", {
      old_character = old_character,
      old_character_unit_number = old_character and old_character.unit_number,
    })
  end

  refresh_avatar_gui(player_index)
end
