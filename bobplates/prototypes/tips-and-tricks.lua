data.raw["tips-and-tricks-item"]["clear-cursor"].simulation = {
  init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 4.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position

    player.insert{name = "iron-plate", count = 600}
    player.clear_inventory_highlights()
    player.opened = player

    local story_table =
    {
      {
        {
          name = "start",
          condition = function()
            local target = game.simulation.get_slot_position{inventory_index = defines.inventory.character_main, slot_index = 2}
            return game.simulation.move_cursor({position = target})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.control_press{control = "pick-item", notify = false} end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = {player.position.x - 2, player.position.y - 0.5}}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.control_press{control = "clear-cursor", notify = true} end
        },
        {
          condition = story_elapsed_check(2),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
  ]],
}

data.raw["tips-and-tricks-item"]["circuit-network"].simulation = {
  init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "cable-guy"}
    player.teleport({0.5, -7})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_alt_info = true
    storage.resting_position = {0.5, 4}
    game.simulation.camera_player_cursor_position = storage.resting_position
    storage.character = player.character
    storage.character.character_running_speed_modifier = -0.5

    local technology = "inserter-capacity-bonus-2"
    local technologies = prototypes.technology
    for name, prerequisite in pairs (technologies[technology].prerequisites) do
      game.forces.player.technologies[name].researched = true
    end
    game.forces.player.technologies[technology].researched = true

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqd1++OojAQAPB36eeyoS1F4FXMhiCOXnOlkLbcnWt49y3cLeqKypwfCFj49V+mkzmTne6hs8p4UpyJqlvjSLE9E6eOptLjf/7UASmI8tAQSkzVjE/eVsZ1rfXRDrQnAyXK7OEPKdjwTgkYr7yCv9L0cCpN3+zAhhdmwzWV1hFoqL1VddS1GkIHXevCt60Zuw5eJPibpOREivxNDgO98/jszRIYsMdTFOYE9lDVy+pkZmHge2XDd1NbQsmuPxzAlk59BJLF82+hZ3GZiQfQUf0DnF/qiz2fQTI7yjiwYdBLSHyF3Ayaham0v8BatYfS+ar++TX6hb7kox2875Hnj3rMFuAUua1cPl+UDdJj+XMvw3riuZcjFjL7R7H4+0omCzKL/2OPVtIMQW9wNEfQKY4WCFri6ARBJzgaE2oCR6cImuPoDYJmODpD0DGOztccoexxHKLOUI4IUIYLUM5W5hR2E51LEv924Omq6Zag5BUkVkLyFZSshMQrCBFZbD5q+Kr1R0TWZQvW0YjIumzKOhoRWZdtWkcj8hzjKFpgwkjgaESeYzGORuQ5xnA0Is9lOBmR5nKcjIhFXCgKRCjiIlFcIlG31X4xVzz06FwPma4fC597PrtKRgdlQtvj0uB24F/vlw68V+boxvcsNCE1lX1o0yGxwb4cS7HQ5G0Pw1hu/Q7jG2utLaOSplS+02240s10F640C3fhvamEK64qPkpCznPTeHjGkkzINE0TKTf5MHwCYxiRcw==",
      position = {-1, 0}
    }
    lamp1 = game.surfaces[1].find_entity("small-lamp", {1.5, 0.5})
    lamp2 = game.surfaces[1].find_entity("small-lamp", {2.5, 0.5})
    lamp3 = game.surfaces[1].find_entity("small-lamp", {3.5, 0.5})
    chest1 = game.surfaces[1].find_entity("steel-chest", {-14.5, -0.5})
    chest2 = game.surfaces[1].find_entity("steel-chest", {-0.5, 0.5})
    inserter = nil

    first_simulation = true

    local story_table =
    {
      {
        {
          name = "start",
          init = function() storage.character.walking_state = {walking = true, direction = defines.direction.south} end
        },
        {
          condition = function() return storage.character.position.y > -0.5 end,
          action = function() storage.character.walking_state = {walking = false} end
        },

        -- SETUP LAMP1

        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = chest2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = chest2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp1.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {lamp1.position.x, lamp1.position.y + 1}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp1 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            if first_simulation == false then story_jump_to(storage.story, "setIronPlate") end
          end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "bob-resource-products"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_down() end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_up() end
        },
        {
          name = "setIronPlate",
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          init = function() chest1.insert({name = "iron-plate", count = 1}) end,
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(6) },

        -- SETUP LAMP2 & LAMP3

        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp1.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp3.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp3.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {lamp2.position.x, lamp2.position.y + 1}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp2.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp2 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "1"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp3.position, speed = 0.15}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp3 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "2"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          init = function() chest1.insert({name = "iron-plate", count = 2}) end,
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(7) },

        -- SETUP INSERTER

        {
          init = function()
            player.cursor_stack.set_stack{name = "bulk-inserter", count = 1}
            action = function() game.simulation.camera_player_cursor_direction = defines.direction.west end
          end,
          condition = function() return game.simulation.move_cursor({position = {chest2.position.x, chest2.position.y + 1}, speed = 0.1}) end,
          action = function()
            player.build_from_cursor{position = game.simulation.camera_player_cursor_position, direction = defines.direction.west}
          end
        },
        {
          condition = story_elapsed_check(1),
          action = function() inserter = game.surfaces[1].find_entity("bulk-inserter", {chest2.position.x, chest2.position.y + 1}) end
        },
        { condition = function() return game.simulation.move_cursor({position = {inserter.position.x + 1, inserter.position.y}, speed = 0.1}) end },
        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = chest2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = chest2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = inserter.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {inserter.position.x + 1, inserter.position.y}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = inserter end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "3"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          init = function() chest1.insert({name = "iron-plate", count = 7}) end,
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.2}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() inserter.rotate({by_player = player}) end
        },
        { condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end },

        -- RESET EVERYTHING

        {
          condition = story_elapsed_check(17),
          action = function()
            player.opened = nil
            storage.character.walking_state = {walking = true, direction = defines.direction.north}
          end
        },
        {
          condition = function() return storage.character.position.y < -7 end,
          action = function() storage.character.walking_state = {walking = false} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function()
            lamp1.destroy()
            lamp1 = game.surfaces[1].create_entity{name = "small-lamp", position = {1.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            lamp2.destroy()
            lamp2 = game.surfaces[1].create_entity{name = "small-lamp", position = {2.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            lamp3.destroy()
            lamp3 = game.surfaces[1].create_entity{name = "small-lamp", position = {3.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            inserter.destroy()
            chest2.clear_items_inside()
            first_simulation = false
            story_jump_to(storage.story, "start")
          end
        }
      }
    }
    tip_story_init(story_table)
  ]],
}
