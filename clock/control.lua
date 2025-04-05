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

local font_colors = {
  standard = { r = 0, g = 0, b = 0 },
  red = { r = 0.7, g = 0, b = 0 },
  green = { r = 0, g = 1, b = 0 },
  yellow = { r = 1, g = 1, b = 0 },
  blue = { r = 0, g = 0.2, b = 0.7 },
}

function round_minute(min, round)
  return math.floor((min / round) + 0.5) * round
end
function time_to_clock(timeval, round)
  local time = (timeval * 24 + 12) % 24
  local hour = math.floor(time)
  local min = math.floor((time % 1) * 60)
  if round then
    min = round_minute(min, round)
  end
  return hour, min
end

function clock_to_string(hour, min)
  return string.format("%02d:%02d", hour, min)
end

function clock_to_string_12(hour, min)
  local hour12 = hour % 12
  if hour12 == 0 then
    hour12 = 12
  end
  return string.format("%d:%02d %s", hour12, min, hour < 12 and "AM" or "PM")
end

function update_time()
  local time = game.surfaces[1].daytime
  local ticks_per_day = game.surfaces[1].ticks_per_day
  local current_time_tick = math.floor(ticks_per_day * time) --floor current time
  local next_min_time = (math.floor(1440 * time) + 1) / 1440
  local next_min_tick = math.ceil(ticks_per_day * next_min_time) --ceil next min time
  local next_update = game.ticks_played + next_min_tick - current_time_tick --Estimated next time might overshoot by a tick or two due to the rounding, but will be consistantly just after a minute change.
  local hour, min = time_to_clock(time)
  storage.minute = min
  storage.time24 = clock_to_string(hour, min)
  storage.time12 = clock_to_string_12(hour, min)
  storage.next_update = next_update
end

function update_info()
  local played = game.ticks_played
  local played_sec = math.floor((played % 3600) / 60)
  local played_min = math.floor((played % 216000) / 3600)
  local played_hour = math.floor(played / 216000)

  storage.time_played = string.format("%d:%02d:%02d", played_hour, played_min, played_sec)
  storage.evolution_factor = string.format("%.2f%%", game.forces["enemy"].get_evolution_factor() * 100)
  storage.speed = string.format("%d%%", math.floor(game.speed * 100))
end

function on_tick(event)
  if game.ticks_played >= storage.next_update then
    update_time()
    for i, player in pairs(game.connected_players) do
      local gui = storage.player[player.index].info_pane
      setup_clockGUI(player)

      local timetext = settings.get_player_settings(player)["bobmods-clock-24hour"].value and storage.time24
        or storage.time12
      local update_interval = tonumber(settings.get_player_settings(player)["bobmods-clock-updateinterval"].value)
      if
        (update_interval == 1 or storage.minute % update_interval == 0)
        and settings.get_player_settings(player)["bobmods-clock-showonbutton"].value == "time"
      then
        storage.player[player.index].clockGUI.caption = timetext
      end

      if gui and gui.time then
        gui.time.val.caption = timetext
      end
      update_admin_pane_daytime_slider(player.index)
    end
  end

  if game.ticks_played % 60 == 0 then -- once a second
    update_info()
    for i, player in pairs(game.connected_players) do
      local gui = storage.player[player.index].info_pane
      if gui then
        gui.time_played.val.caption = storage.time_played
        gui.speed.val.caption = storage.speed
        gui.evolution_factor.val.caption = storage.evolution_factor
      end
      local show_on_button = settings.get_player_settings(player)["bobmods-clock-showonbutton"].value
      if show_on_button == "time_played" then
        storage.player[player.index].clockGUI.caption = storage.time_played
      elseif show_on_button == "evolution_factor" then
        storage.player[player.index].clockGUI.caption = storage.evolution_factor
      end
      update_admin_pane(storage.player[player.index].admin_pane)
    end
  end
end

function update_clock_button(player)
  if storage.player[player.index].clockGUI then
    local show_on_button = settings.get_player_settings(player)["bobmods-clock-showonbutton"].value
    if show_on_button == "time_played" then
      storage.player[player.index].clockGUI.caption = storage.time_played
    elseif show_on_button == "evolution_factor" then
      storage.player[player.index].clockGUI.caption = storage.evolution_factor
    elseif show_on_button == "time" then
      storage.player[player.index].clockGUI.caption = settings.get_player_settings(player)["bobmods-clock-24hour"].value
          and storage.time24
        or storage.time12
    end
  end
end

function set_clock_button_colour(player)
  local color = settings.get_player_settings(player)["bobmods-clock-color"].value or "standard"
  storage.player[player.index].clockGUI.style.font_color = font_colors[color]
end

function set_clock_button_font(player)
  storage.player[player.index].clockGUI.style.font = settings.get_player_settings(player)["bobmods-clock-font"].value
end

function style_clock_button(button)
  button.style.top_padding = 1
  button.style.right_padding = 1
  button.style.bottom_padding = 1
  button.style.left_padding = 1
  button.style.minimal_width = 64
  button.style.height = 36
end

function setup_clockGUI(player)
  local clockGUI = storage.player[player.index].clockGUI
  if clockGUI == nil or not clockGUI.valid then
    if player.gui.top.clockGUI ~= nil and player.gui.top.clockGUI.valid then
      clockGUI = player.gui.top.clockGUI
    else
      clockGUI = player.gui.top.add({ type = "button", name = "clockGUI" })
    end
    storage.player[player.index].clockGUI = clockGUI
    clockGUI.visible = true
    style_clock_button(clockGUI)
    set_clock_button_font(player)
    set_clock_button_colour(player)
    update_clock_button(player)
  end
end

function setup_player(player)
  if not storage.player[player.index] then
    storage.player[player.index] = {
      gui = nil,
      clockGUI = nil,
    }
  end
  setup_clockGUI(player)
  delete_gui(player.index)
end

function setup(event)
  if not storage.player then
    storage.player = {}
  end
  if not storage.time then
    storage.time = {}
  end
  update_time() -- Added to try and stop the map editor from crashing if you click it without time having ever passed.
  update_info() -- Added to try and stop the map editor from crashing if you click it without time having ever passed.
  for i, player in pairs(game.players) do
    setup_player(player)
  end
end

script.on_init(setup)
script.on_configuration_changed(setup)
script.on_event(defines.events.on_tick, on_tick)

script.on_event(defines.events.on_player_created, function(event)
  if not storage.player then
    setup(event)
  else
    setup_player(game.players[event.player_index])
  end
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  if event.player_index then
    local player = game.players[event.player_index]
    if event.setting == "bobmods-clock-font" then
      set_clock_button_font(player)
    end
    if event.setting == "bobmods-clock-color" then
      set_clock_button_colour(player)
    end
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  if event.element.valid then
    if event.element.name == "clockGUI" then
      draw_gui(event.player_index)
    elseif event.element.name == "bob_clock_speed_down" then
      if game.speed > 0.25 then
        game.speed = game.speed / 2
      end
    elseif event.element.name == "bob_clock_speed_pause" then
      game.tick_paused = not game.tick_paused
      update_all_admin_panes()
    elseif event.element.name == "bob_clock_speed_up" then
      if game.speed < 64 then
        game.speed = game.speed * 2
      end
    elseif event.element.name == "bob_clock_speed_reset" then
      game.speed = 1
    elseif event.element.name == "bob_clock_daytime_pause" then
      game.surfaces[1].freeze_daytime = not game.surfaces[1].freeze_daytime
      update_all_admin_panes()
    elseif event.element.name == "bob_clock_always_day" then
      game.surfaces[1].always_day = not game.surfaces[1].always_day
      update_all_admin_panes()
    elseif event.element.name == "bob_clock_ticks_per_day_confirm" then
      local ticks_per_day = tonumber(event.element.parent.bob_clock_ticks_per_day_textfield.text)
      if ticks_per_day > 1 then
        game.surfaces[1].ticks_per_day = ticks_per_day
      end
    elseif event.element.name == "bob_clock_gui_close" then
      delete_gui(event.player_index)
    end
  end
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  if event.setting_type == "runtime-global" and event.setting == "bobmods-clock-admin-mode" then
    for i, player in pairs(game.connected_players) do
      if storage.player[player.index].admin_pane then
        local visible = settings.global["bobmods-clock-admin-mode"].value
        local admin_pane = storage.player[player.index].admin_pane
        storage.player[player.index].gui.bob_clock_show_admin_panel.visible = visible
        if visible and storage.player[player.index].show_admin_panel then
          draw_admin_pane(admin_pane)
          admin_pane.visible = true
        else
          admin_pane.clear()
          admin_pane.visible = false
        end
      end
    end
  end
end)

script.on_event(defines.events.on_gui_value_changed, function(event)
  if event.element.valid then
    if event.element.name == "bob_clock_daytime_slider" then
      game.surfaces[1].daytime = (event.element.slider_value + 0.5) % 1
      update_all_admin_pane_daytime_sliders()
    elseif event.element.name == "bob_clock_dawn_slider" then
      local value = (event.element.slider_value + 0.5) % 1
      if value >= 0.5 and value > game.surfaces[1].evening and value < game.surfaces[1].dawn then
        game.surfaces[1].morning = value
      end
      update_all_admin_pane_day_phases()
    elseif event.element.name == "bob_clock_sunrise_slider" then
      local value = (event.element.slider_value + 0.5) % 1
      if value == 0 then
        value = 1
      end
      if value >= 0.5 and value > game.surfaces[1].morning and value <= 1 then
        game.surfaces[1].dawn = value
      end
      update_all_admin_pane_day_phases()
    elseif event.element.name == "bob_clock_sunset_slider" then
      local value = (event.element.slider_value + 0.5) % 1
      if value >= 0 and value < game.surfaces[1].evening and value <= 0.5 then
        game.surfaces[1].dusk = value
      end
      update_all_admin_pane_day_phases()
    elseif event.element.name == "bob_clock_dusk_slider" then
      local value = (event.element.slider_value + 0.5) % 1
      if value > game.surfaces[1].dusk and value < game.surfaces[1].morning and value <= 0.5 then
        game.surfaces[1].evening = value
      end
      update_all_admin_pane_day_phases()
    end
  end
end)

script.on_event(defines.events.on_gui_checked_state_changed, function(event)
  if event.element and event.element.valid and event.element.name == "bob_clock_show_admin_panel" then
    local admin_pane = storage.player[event.player_index].admin_pane
    if admin_pane and admin_pane.valid then
      local visible = event.element.state
      storage.player[event.player_index].show_admin_panel = visible
      admin_pane.visible = visible
      if visible then
        draw_admin_pane(admin_pane)
      else
        admin_pane.clear()
      end
    end
  end
end)

function delete_gui(player_index)
  if storage.player[player_index].gui ~= nil and storage.player[player_index].gui.valid then
    storage.player[player_index].gui.destroy()
    storage.player[player_index].gui = nil
    storage.player[player_index].info_pane = nil
    storage.player[player_index].admin_pane = nil
  end
end

function draw_gui(player_index)
  local player = game.players[player_index]
  if storage.player[player_index].gui ~= nil then
    delete_gui(player_index)
  else
    local gui = mod_gui.get_frame_flow(player).add({ type = "frame", name = "clock_gui", direction = "vertical" })
    gui.style.bottom_padding = 8
    storage.player[player_index].gui = gui
    gui.style.vertically_stretchable = false
    gui.style.horizontally_stretchable = false

    gui_add_title(gui, { "gui.clock-gui" }, "bob_clock_gui_close")

    if not game.is_multiplayer or player.admin then
      gui.add({
        type = "checkbox",
        name = "bob_clock_show_admin_panel",
        state = storage.player[player_index].show_admin_panel or false,
        caption = { "gui.bob-clock-show-admin" },
      })
    end

    gui.add({ type = "flow", name = "main_table", direction = "horizontal" })
    gui.main_table.style.horizontal_spacing = 12
    local info_pane =
      gui.main_table.add({ type = "frame", name = "info_pane", style = "bob_invisible_frame", direction = "vertical" })
    storage.player[player_index].info_pane = info_pane
    draw_info_pane(info_pane)

    if not game.is_multiplayer or player.admin then
      local admin_pane = gui.main_table.add({
        type = "frame",
        name = "admin_pane",
        style = "bob_inside_shallow_frame",
        direction = "vertical",
      })
      --			admin_pane.style.vertical_spacing = 4
      storage.player[player_index].admin_pane = admin_pane
      if not settings.global["bobmods-clock-admin-mode"].value then
        gui.bob_clock_show_admin_panel.visible = false
      end
      if settings.global["bobmods-clock-admin-mode"].value and storage.player[player_index].show_admin_panel then
        draw_admin_pane(admin_pane)
      else
        admin_pane.visible = false
      end
    end
  end
end

function draw_info_pane(gui)
  if gui then
    gui.clear()
    gui.add({ type = "flow", name = "time", style = "horizontal_flow" })
    gui.time.add({ type = "label", name = "desc", style = "bold_label", caption = { "gui.clock-time", ": " } })
    gui.time.add({
      type = "label",
      name = "val",
      caption = settings.get_player_settings(gui.player_index)["bobmods-clock-24hour"].value and storage.time24
        or storage.time12,
    })

    gui.add({ type = "flow", name = "time_played", style = "horizontal_flow" })
    gui.time_played.add({
      type = "label",
      name = "desc",
      style = "bold_label",
      caption = { "gui.clock-time-played", ": " },
    })
    gui.time_played.add({ type = "label", name = "val", caption = storage.time_played })

    gui.add({ type = "flow", name = "evolution_factor", style = "horizontal_flow" })
    gui.evolution_factor.add({
      type = "label",
      name = "desc",
      style = "bold_label",
      caption = { "gui.clock-evolution-factor", ": " },
    })
    gui.evolution_factor.add({ type = "label", name = "val", caption = storage.evolution_factor })

    gui.add({ type = "flow", name = "speed", style = "horizontal_flow" })
    gui.speed.add({ type = "label", name = "desc", caption = { "gui.clock-game-speed", ": " }, style = "bold_label" })
    gui.speed.add({ type = "label", name = "val", caption = storage.speed })
  end
end

function shift_time(time)
  newtime = time + 0.5
  if newtime > 1 then
    newtime = newtime - 1
  end
  return newtime
end

function draw_admin_pane(gui)
  if gui and gui.visible then
    gui.clear()

    gui.add({ type = "flow", name = "ticks_per_day", style = "horizontal_flow" })
    gui.ticks_per_day.style.vertical_align = "center"
    gui.ticks_per_day.add({
      type = "label",
      name = "label",
      style = "bold_label",
      caption = { "gui-map-editor-time-editor.ticks-per-day" },
    })
    gui.ticks_per_day.add({
      type = "textfield",
      name = "bob_clock_ticks_per_day_textfield",
      numeric = true,
      allow_decimal = false,
      allow_negative = false,
      text = game.surfaces[1].ticks_per_day,
    })
    gui.ticks_per_day.add({
      type = "sprite-button",
      name = "bob_clock_ticks_per_day_confirm",
      sprite = "utility/confirm_slot",
      style = "slot_sized_button",
      tooltip = { "gui-map-editor-time-editor.apply-ticks-per-day" },
    })

    gui.add({ type = "flow", name = "daytime", style = "horizontal_flow" })
    gui.daytime.style.vertical_align = "center"
    gui.daytime.add({
      type = "label",
      name = "label",
      style = "bold_label",
      caption = { "gui-map-editor-time-editor.daytime" },
    })
    gui.daytime.add({ type = "flow", name = "filler" })
    gui.daytime.filler.style.horizontally_stretchable = true
    gui.daytime.add({
      type = "slider",
      name = "bob_clock_daytime_slider",
      minimum_value = 0,
      maximum_value = 1,
      value_step = 1 / 96,
      value = (game.surfaces[1].daytime + 0.5) % 1,
    })
    gui.daytime.add({
      type = "sprite-button",
      name = "bob_clock_daytime_pause",
      sprite = "utility/editor_pause",
      style = "slot_sized_button",
      tooltip = { "gui-map-editor-time-editor.freeze-daytime" },
    })
    gui.daytime.add({
      type = "sprite-button",
      name = "bob_clock_always_day",
      sprite = "bob-always-day-on",
      style = "slot_sized_button",
      tooltip = { "gui.clock-always-day-off" },
    })

    gui.add({ type = "table", name = "day_phases", column_count = 3 })

    gui.day_phases.add({ type = "label", name = "dawn_name", style = "bold_label", caption = { "gui.bobmods-clock-dawn" } })
    gui.day_phases.add({
      type = "label",
      name = "dawn_clock",
      caption = clock_to_string(time_to_clock(game.surfaces[1].morning, 15)),
    })
    gui.day_phases.dawn_clock.style.width = 64
    gui.day_phases.add({
      type = "slider",
      name = "bob_clock_dawn_slider",
      minimum_value = 0,
      maximum_value = 1,
      value_step = 1 / 96,
      value = (game.surfaces[1].morning + 0.5) % 1,
    })

    gui.day_phases.add({
      type = "label",
      name = "sunrise_name",
      style = "bold_label",
      caption = { "gui.bobmods-clock-sunrise" },
    })
    gui.day_phases.add({
      type = "label",
      name = "sunrise_clock",
      caption = clock_to_string(time_to_clock(game.surfaces[1].dawn, 15)),
    })
    gui.day_phases.sunrise_clock.style.width = 64
    gui.day_phases.add({
      type = "slider",
      name = "bob_clock_sunrise_slider",
      minimum_value = 0,
      maximum_value = 1,
      value_step = 1 / 96,
      value = (game.surfaces[1].dawn + 0.5) % 1,
    })

    gui.day_phases.add({
      type = "label",
      name = "sunset_name",
      style = "bold_label",
      caption = { "gui.bobmods-clock-sunset" },
    })
    gui.day_phases.add({
      type = "label",
      name = "sunset_clock",
      caption = clock_to_string(time_to_clock(game.surfaces[1].dusk, 15)),
    })
    gui.day_phases.sunset_clock.style.width = 64
    gui.day_phases.add({
      type = "slider",
      name = "bob_clock_sunset_slider",
      minimum_value = 0,
      maximum_value = 1,
      value_step = 1 / 96,
      value = (game.surfaces[1].dusk + 0.5) % 1,
    })

    gui.day_phases.add({ type = "label", name = "dusk_name", style = "bold_label", caption = { "gui.bobmods-clock-dusk" } })
    gui.day_phases.add({
      type = "label",
      name = "dusk_clock",
      caption = clock_to_string(time_to_clock(game.surfaces[1].evening, 15)),
    })
    gui.day_phases.dusk_clock.style.width = 64
    gui.day_phases.add({
      type = "slider",
      name = "bob_clock_dusk_slider",
      minimum_value = 0,
      maximum_value = 1,
      value_step = 1 / 96,
      value = shift_time(game.surfaces[1].evening),
    })

    gui.add({ type = "flow", name = "speed_buttons", style = "horizontal_flow" })
    gui.speed_buttons.style.vertical_align = "center"
    gui.speed_buttons.add({
      type = "label",
      name = "label",
      caption = { "gui.clock-game-speed", ": " },
      style = "bold_label",
    })
    gui.speed_buttons.add({ type = "flow", name = "filler" })
    gui.speed_buttons.filler.style.horizontally_stretchable = true
    gui.speed_buttons.add({
      type = "sprite-button",
      name = "bob_clock_speed_down",
      sprite = "utility/editor_speed_down",
      style = "slot_sized_button",
      tooltip = { "controls.editor-speed-down" },
    })
    gui.speed_buttons.add({
      type = "sprite-button",
      name = "bob_clock_speed_pause",
      sprite = "utility/editor_pause",
      style = "slot_sized_button",
      tooltip = { "gui-menu.pause-game" },
    })
    gui.speed_buttons.add({
      type = "sprite-button",
      name = "bob_clock_speed_up",
      sprite = "utility/editor_speed_up",
      style = "slot_sized_button",
      tooltip = { "controls.editor-speed-up" },
    })
    gui.speed_buttons.add({
      type = "sprite-button",
      name = "bob_clock_speed_reset",
      sprite = "utility/reset",
      style = "slot_sized_button",
      tooltip = { "controls.editor-reset-speed" },
    })

    update_admin_pane(gui)
    update_admin_pane_day_phases(gui.player_index)
  end
end

function update_all_admin_pane_day_phases()
  for i, player in pairs(game.connected_players) do
    update_admin_pane_day_phases(player.index)
  end
end

function update_admin_pane_day_phases(player_index)
  local gui = storage.player[player_index].admin_pane
  if gui and gui.valid and gui.day_phases then
    local clock_function = settings.get_player_settings(player_index)["bobmods-clock-24hour"].value and clock_to_string
      or clock_to_string_12

    gui.day_phases.dawn_clock.caption = clock_function(time_to_clock(game.surfaces[1].morning, 15))
    gui.day_phases.bob_clock_dawn_slider.slider_value = (game.surfaces[1].morning + 0.5) % 1

    gui.day_phases.sunrise_clock.caption = clock_function(time_to_clock(game.surfaces[1].dawn, 15))
    gui.day_phases.bob_clock_sunrise_slider.slider_value = (game.surfaces[1].dawn + 0.5) % 1

    gui.day_phases.sunset_clock.caption = clock_function(time_to_clock(game.surfaces[1].dusk, 15))
    gui.day_phases.bob_clock_sunset_slider.slider_value = (game.surfaces[1].dusk + 0.5) % 1

    gui.day_phases.dusk_clock.caption = clock_function(time_to_clock(game.surfaces[1].evening, 15))
    gui.day_phases.bob_clock_dusk_slider.slider_value = shift_time(game.surfaces[1].evening)
  end
end

function update_all_admin_pane_daytime_sliders()
  for i, player in pairs(game.connected_players) do
    update_admin_pane_daytime_slider(player.index)
  end
end

function update_admin_pane_daytime_slider(player_index)
  local gui = storage.player[player_index].admin_pane
  if gui and gui.visible and gui.daytime and gui.daytime.bob_clock_daytime_slider then
    gui.daytime.bob_clock_daytime_slider.slider_value = (game.surfaces[1].daytime + 0.5) % 1
  end
end

function update_all_admin_panes()
  for i, player in pairs(game.connected_players) do
    update_admin_pane(storage.player[player.index].admin_pane)
  end
end

function update_admin_pane(gui)
  if gui and gui.visible then
    if game.tick_paused then
      gui.speed_buttons.bob_clock_speed_pause.sprite = "utility/editor_play"
      gui.speed_buttons.bob_clock_speed_pause.tooltip = { "gui-menu.unpause-game" }
    else
      gui.speed_buttons.bob_clock_speed_pause.sprite = "utility/editor_pause"
      gui.speed_buttons.bob_clock_speed_pause.tooltip = { "gui-menu.pause-game" }
    end

    if game.surfaces[1].freeze_daytime then
      gui.daytime.bob_clock_daytime_pause.sprite = "utility/editor_play"
      gui.daytime.bob_clock_daytime_pause.tooltip = { "gui-map-editor-time-editor.unfreeze-daytime" }
    else
      gui.daytime.bob_clock_daytime_pause.sprite = "utility/editor_pause"
      gui.daytime.bob_clock_daytime_pause.tooltip = { "gui-map-editor-time-editor.freeze-daytime" }
    end

    if game.surfaces[1].always_day then
      gui.daytime.bob_clock_always_day.sprite = "bob-always-day-off"
      gui.daytime.bob_clock_always_day.tooltip = { "gui.clock-always-day-off" }
    else
      gui.daytime.bob_clock_always_day.sprite = "bob-always-day-on"
      gui.daytime.bob_clock_always_day.tooltip = { "gui.clock-always-day-on" }
    end
  end
end
