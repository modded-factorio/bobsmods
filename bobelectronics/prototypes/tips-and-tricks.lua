data.raw["tips-and-tricks-item"].splitters.simulation = {
  init_update_count = 800,
  init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 0.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_alt_info = true
    game.simulation.camera_player_cursor_position = player.position

    local technology = "bob-electronics"
    local technologies = prototypes.technology
    for name, prerequisite in pairs (technologies[technology].prerequisites) do
      game.forces.player.technologies[name].researched = true
    end
    game.forces.player.technologies[technology].researched = true

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtme2OqjAQQN+lv2FDv6D4KpuNQey6TRAIlL13s/Hdb9Go11jWmXF/KnjambbT0/rNNs1k+8G1nq2+mau7dmSr1282ul1bNfN3/qu3bMWct3uWsLbaz5/8ULVj3w0+3djGs0PCXLu1f9mKH94SZlvvvLMn0vHD17qd9hs7hBcuDNe+uzY8SusPO/rA7rsx/Kxr51YDKpXyRSfsi63yF31s4fT+erTeu3Y3zu8Ndt992vUUnjXeDna7njsaHvlhsgk7fXvqyLnZoWvTna2G9M+HtU1ot+6mOXyeZQnbd9v5pcqnja2OvboGdjgkd+GIpZREwsluwtm6wdan5yYClhdw01Xb8E0EKOI4lZwHrZt8P83Dc4dXhH4Xdw1FwPoCnkLiht0QkrtdQotyEX2JwbULIeSoltTjlpazVcCzJSQmWwYBFhhwiQBzDJhnCDJq5nAOJ/MSRUasUm5QZIkgFygyYoXyHEXWCLJCkXMEGbVOOGIFctRC4YglyHHzGbEGOWoNigxT+p6psYJjWnqqxgoB2PHogUi4d9yOBV47op6gCN5jftN7bBPSFdzH1Wnthnpy/qo+gqQ+muAQc0gxVg7WHfNwct2Gfw4i+SERIcBIn641Z+wb5320V1yfIwOsW0OovAZii6IkkEuQh2aIiXvOxVwo0TP3vWrG+NStu763Q1pXm8Y+OWnldR68h/fTxzP3vJvMJfrxEEvMgUDcpuvRSECOBGoBCKnAknIoOKYlBqNUh0i/Y+icdMb4KSmL+4YsSKcM4gAYwjkDmLOScNKAoVVGOGsA0Zxw2ACiBeG0cV8DYgtVSQoaVAOUItR5YEI0QbGBaMq5AIguCPoORBuCvwPRJUXgSQVMZxSDp9UvzaEKTwtF4B2eZCJLEq8lxYXEr7rQ8fqybypvn7y51IpiKiK+22sNdxNBmlr5rbf9YOTyMvYCcF1ZUDRFgm5CDQUtINuALmkGJCnXrBnNgCRlmHNOMSDQcOSCYkAwtKQYEAytKAYEQ2uKpsDQOQUtQGjYqdxc+gtAGsIlLjARJeEWF4YuENp9uaQAojnFMmFoQbFMGFpSLBOGVhTLhKE1xTJh6JxkmZRNoihIlknaIwoDtkxSKCXBMiXZMt+S01/rq//+iU/YZ7C+YzvCcGWkzvNcaV2Uh8M/6JlhIQ==",
      position = {-2, 0}
    }

    splitter1 = game.surfaces[1].find_entities_filtered{name = "splitter"}[1]
    splitter2 = game.surfaces[1].find_entities_filtered{name = "splitter"}[2]
    first_simulation = true
    saved_position = player.position

    local story_table =
    {
      {
        {
          name = "start",
          condition = story_elapsed_check(13),
        },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          name = "continue",
          condition = story_elapsed_check(3),
        },
        { condition = function() return game.simulation.move_cursor({position = splitter1.position}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = splitter1 end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-splitter.input-priority"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function() player.opened = nil end
        },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        { condition = function() return game.simulation.move_cursor({position = splitter2.position}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = splitter2 end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            saved_position = game.simulation.get_widget_position({type = "choose-button"})
            return game.simulation.move_cursor({position = saved_position, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            if first_simulation == false then story_jump_to(storage.story, "setElectronicCircuit") end
          end
        },

        { condition = function() return game.simulation.move_cursor({position = {saved_position.x, saved_position.y - 1}}) end },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "intermediate-products"})
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
        { condition = story_elapsed_check(0.25) },
        {
          name = "setElectronicCircuit",
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-item-slot", data = "electronic-circuit"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.75),
          action = function()
            game.simulation.control_press{control = "confirm-gui", notify = false}
          end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function() player.opened = nil end
        },

        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          condition = story_elapsed_check(3),
          action = function()
            splitter1.splitter_filter = nil
            splitter1.splitter_input_priority = "none"
            splitter2.splitter_filter = nil
            splitter2.splitter_output_priority = "none"
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            player.clear_cursor()
            first_simulation = false
            story_jump_to(storage.story, "continue")
          end
        }
      }
    }
    tip_story_init(story_table)

  ]],
}
