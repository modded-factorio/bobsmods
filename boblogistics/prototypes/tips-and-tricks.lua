data.raw["tips-and-tricks-item"]["e-confirm"].simulation = {
  init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({-8.5, -1.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position
    player.character.direction = defines.direction.south
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNptkd2KwyAQhd9lrk2pSQzBV1mWEt1JV0g0609pGnz3NbZkF6o3cgbPd5jjBmIKuFilPfANlDTaAf/YwKmrHqZ95tcFgYPyOAMBPcy7skaYxVgPkYDSX3gHTuMnAdReeYVPRhbrRYdZoE0P3t0EFuOSweg9KUGquiOwAq9jJG+A+gC4IJwfsq+AaDKiKSGaA4ETSm+VrFCjva5VagDtOEgsEemLSECEcUR7ceqRIPR8nEJW+7cv/gR0iV/J73SXEtiJ5Qx6PrG4N5n75v++h8ANrcueuqdt37Cu61rG+tTVLwHtlQY=",
      position = {-7, -5},
    }

    game.forces.player.technologies["logistic-system"].research_recursive()
    game.forces.player.technologies["logistics"].researched = true -- for splitters to be selectable

    chest = game.surfaces[1].find_entities_filtered{name = "requester-chest"}[1]
    button = ""
    slot_data = ""

    local story_table =
    {
      {
        {
          name = "start",
          init = function()
            button = "0"
            slot_data = "steel-chest"
          end,
          condition = function() return game.simulation.move_cursor({position = chest.position, speed = 0.75}) end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = chest end
        },
        { condition = story_elapsed_check(0.25) },
        {
          name = "continue",
          condition = function()
            local target = game.simulation.get_widget_position({type = "logistics-button", data = button})
            return game.simulation.move_cursor({position = target, speed = 0.45})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id-base", data = slot_data})
            return game.simulation.move_cursor({position = target, speed = 0.45})
          end
        },
        {
          condition = story_elapsed_check(0.35),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.75),
          action = function()
            game.simulation.control_press{control = "confirm-gui", notify = true}
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            if button == "5" then button = "6" end
            if button == "4" then
              button = "5"
              slot_data = "storage-chest"
            end
            if button == "3" then
              button = "4"
              slot_data = "passive-provider-chest"
            end
            if button == "2" then
              button = "3"
              slot_data = "requester-chest"
            end
            if button == "1" then
              button = "2"
              slot_data = "storage-tank"
            end
            if button == "0" then
              button = "1"
              slot_data = "small-electric-pole"
            end
            if button < "6" then story_jump_to(storage.story, "continue") end
          end
        },
        {
          condition = function() return game.simulation.move_cursor({position = player.position, speed = 0.5}) end,
          action = function() player.opened = nil end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function()
            local position = chest.position
            chest.destroy()
            chest = game.surfaces[1].create_entity{name = "requester-chest", position = position, force = player.force, create_build_effect_smoke = false}
            story_jump_to(storage.story, "start")
          end
        }
      }
    }
    tip_story_init(story_table)
  ]],
}

data.raw["tips-and-tricks-item"]["pipette"].simulation = {
  game_view_settings = {
    default_show_value = false,
    show_controller_gui = true,
    show_quickbar = true,
    update_entity_selection = true,
  },
  init = [[
    require("__core__/lualib/story")
    game.simulation.active_quickbars = 1
    player = game.simulation.create_test_player{name = "big K"}
    player.character.teleport{0, 4}
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position
    player.set_quick_bar_slot(1,'burner-inserter')
    game.forces.player.technologies.logistics.researched = true

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqV1FFqhDAQBuC7zHNcTDQac5WlFHWnJaBRklgq4t0bXdoui9LOYzTz+Tsks0DTTTg6YwPoBUw7WA/6uoA377butmdhHhE0mIA9MLB1v62Cq60fBxeSBrsAKwNjb/gJmq/sz2IfBovJ2+Rs3eJDrVhfGKANJhi8p9gX86ud+gZdxE8IBuPgY9Vgt29GKREpgxl0tW5xnhTxb4WrcyU768VBmPIid4jzi4y/ezMO2/uG/EDOCXJBkiVBliS5IMg5SS4JckaSFUEWJLn6kZt4ttAlxnp0Ib46OqnfdPpMqwOap4TUnJSacwKd0mhB6AhXtI4QbiKvaLEJV/E39QEd59o+AvXDuGXwgc7vG4TiucpkURS5lGUcN19DUdJu",
      position = {-6,0},
    }

    local story_table =
    {
      {
        {
          name = "start",
          init = function()
            player.insert("transport-belt")
            player.insert("stone-furnace")
            player.insert("burner-inserter")
          end,
          condition = story_elapsed_check(1)
        },
        { condition = function() return game.simulation.move_cursor({position = {-1, -1}}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.control_press{control = "pipette", notify = true} end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = {1, -1}}) end},
        {
          init = function() game.simulation.control_down{control = "build", notify = false} end,
          condition = function() return game.simulation.move_cursor({position = {3, -1}}) end,
          action = function() game.simulation.control_up{control = "build"} end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.clear_cursor() end
        },
        { condition = story_elapsed_check(0.25),
          action = function()
            if player.input_method ~= defines.input_method.game_controller then
              story_jump_to(storage.story, "inserter-mouse-branch")
            end
          end
        },
        -- controller branch
        {
          action = function() player.opened = player end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "burner-inserter"})
            return game.simulation.move_cursor({position = target})
          end
        },
        { condition = story_elapsed_check(0.25),
          action = function()
            story_jump_to(storage.story, "inserter-pipette")
          end
        },
        -- mouse branch
        { action = function() end }, --called by story_jump_to(storage.story, "inserter-mouse-branch")
        {
          name = "inserter-mouse-branch",
          condition = function()
            local target = game.simulation.get_widget_position({type = "quickbar-slot", data = "burner-inserter"})
            return game.simulation.move_cursor({position = target})
          end
        },
        { condition = story_elapsed_check(0.25) },
        -- branch join
        {
          name = "inserter-pipette",
          action = function()
            game.simulation.control_press{control = "pipette", notify = true}
            game.simulation.camera_player_cursor_direction = defines.direction.south
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = {0.5, 0.5}}) end,
          action = function() game.simulation.control_press{control = "build", notify = false} end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = {2.5, 0.5}}) end,
          action = function() game.simulation.control_press{control = "build", notify = false} end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.clear_cursor() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = player end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "bob-logistics"})
            return game.simulation.move_cursor({position = target})
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
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "transport-belt"})
            return game.simulation.move_cursor({position = target})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action =
            function() game.simulation.control_press{control = "pipette", notify = true}
            game.simulation.camera_player_cursor_direction = defines.direction.east
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = {-0.5, 1.5}}) end},
        {
          init = function() game.simulation.control_down{control = "build", notify = false} end,
          condition = function() return game.simulation.move_cursor({position = {2.5, 1.5}}) end,
          action = function() game.simulation.control_up{control = "build"} end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.clear_cursor() end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          condition = story_elapsed_check(1),
          action = function()
            for k, v in pairs (game.surfaces[1].find_entities_filtered{area = {{0, -2}, {3,  2}}}) do
              v.destroy()
            end
            local belt = game.surfaces[1].find_entity("transport-belt", {-0.5, 1.5})
            belt.destroy()
            player.character.clear_items_inside()
            story_jump_to(storage.story, "start")
          end
        }
      }
    }
    tip_story_init(story_table)
  ]],
}

data.raw["tips-and-tricks-item"]["bulk-crafting"].simulation = {
  game_view_settings = { default_show_value = false, show_controller_gui = true, show_crafting_queue = true },
  init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 4.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position

    player.insert{name = "iron-plate", count = 20}
    player.insert{name = "iron-gear-wheel", count = 20}
    player.clear_inventory_highlights()
    player.opened = player

    local story_table =
    {
      {
        {
          name = "start",
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "bob-logistics"})
            return game.simulation.move_cursor({position = target})
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
        { condition = story_elapsed_check(0.25) },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "burner-inserter"})
            return game.simulation.move_cursor({position = target})
          end,
          action = function() player.clear_inventory_highlights() end
        },
        { condition = story_elapsed_check(1) },
        {
          init = function() game.simulation.control_down{control = "craft-5", notify = true} end,
          condition = story_elapsed_check(0.25)
        },
        {
          init = function() game.simulation.control_up{control = "craft-5"} end,
          condition = function() return game.simulation.move_cursor({position = player.position}) end
        },
        { condition = story_elapsed_check(3) },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "burner-inserter"})
            return game.simulation.move_cursor({position = target})
          end,
          action = function() player.clear_inventory_highlights() end
        },
        { condition = story_elapsed_check(1) },
        {
          init = function() game.simulation.control_down{control = "craft-all", notify = true} end,
          condition = story_elapsed_check(0.25)
        },
        {
          init = function() game.simulation.control_up{control = "craft-all"} end,
          condition = function() return game.simulation.move_cursor({position = player.position}) end
        },

        {
          condition = story_elapsed_check(15),
          action = function()
            player.clear_items_inside()
            player.insert{name = "iron-plate", count = 20}
            player.insert{name = "iron-gear-wheel", count = 20}
            player.clear_inventory_highlights()
          end
        },
        {
          condition = story_elapsed_check(1),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
  ]],
}
