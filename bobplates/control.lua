script.on_configuration_changed(function(event)
  for index, force in pairs(game.forces) do
    force.reset_technology_effects()
  end
end)

