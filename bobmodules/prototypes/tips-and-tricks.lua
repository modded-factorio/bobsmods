if mods["quality"] then
  data.raw["tips-and-tricks-item"]["quality-probabilities"].simulation = {
    init_update_count = 120,
    init = [[
      player = game.simulation.create_test_player{name = "Quality Manager"}
      player.teleport({-7.5, 0})
      game.simulation.camera_player = player
      game.simulation.camera_position = {0, 0.5}
      game.simulation.camera_alt_info = true
      game.simulation.camera_player_cursor_position = player.position
      game.simulation.hide_cursor = true
      player.character.direction = defines.direction.south

      game.surfaces[1].create_entities_from_blueprint_string
      {
        string = "0eNp9UV9vgyAQ/y73jE2tYjq+ymIM6sVeBocD7WYM331Y13QvLuHl+P09WKE1M46eeAK1AnWOA6j3FQINrM12x9oiKNAhoG0N8ZBZ3d2IMSsgCiDu8RtUHmsByBNNhLvDY1ganm2LPhHEv04CRheS2PGWuRmeLycpYAFVnGTK8djRuMnJO84G1D77uiEaeELN56xNSkwUdt7qDaEJ7d6G+j+7/DIz6/rZPPfYqYnJDfE9tXd+2aWvqRQQJt19gDpHcYDkh8jlECliHdOp9xqp4etXBNzRh8e7XK55eS1kVVWllG8yxh9sPJXs",
        position = {-8, 2}
      }

      show_probabilities = function()

        local quality_prototypes = prototypes.quality
        local quality_levels = {}
        local current_quality = prototypes.quality["normal"];
        while true do
           table.insert(quality_levels, current_quality);
           current_quality = current_quality.next;
           if current_quality == nil then
             break
           end
        end

        local frame = game.players[1].gui.screen.add{type = "frame", caption = {"tips-and-tricks-simulation.quality-calculation"}, direction = "vertical"}
        frame.auto_center = true
        local inner = frame.add{type = "frame", style = "inside_shallow_frame_with_padding", direction = "vertical"}
        local quality_table = inner.add{type = "table", column_count = table_size(quality_levels), style = "bordered_table"}
        quality_table.add{type = "label", caption = {"tips-and-tricks-simulation.input"}, style = "bold_label"}

        for k, quality in pairs (quality_levels) do
          if quality.name ~= "normal" then
            quality_table.add{type = "label", caption = {"tips-and-tricks-simulation.chance", "[item=iron-gear-wheel,quality=" .. quality.name .. "]"}, style = "bold_label"}
          end
        end

        local module_chance = prototypes.item["bob-quality-module-5"].module_effects["quality"] * 6;
        local row_header = string.rep("[item=bob-quality-module-5]", 6)
        for k, quality in pairs (quality_levels) do
          if quality.name ~= "legendary" then
            quality_table.add{type = "label", caption = row_header.. " [item=iron-plate,quality="..quality.name.."]"}
            local cumulative_chance = module_chance;
            for j, quality in pairs(quality_levels) do
              if quality.name ~= "normal" then
                  if k >= j then
                    quality_table.add{type = "label", caption = ""}
                  else
                    quality_table.add{type = "label", caption = string.format("%.2f%%", cumulative_chance * 100)}
                  end
              end
              if k <= j then
                cumulative_chance = cumulative_chance * quality.next_probability
              end
            end
          end
        end
      end

      show_probabilities()
    ]],
  }
end
