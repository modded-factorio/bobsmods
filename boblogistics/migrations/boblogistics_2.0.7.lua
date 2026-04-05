for index, force in pairs(game.forces) do
  if force.technologies["turbo-transport-belt"].researched then
    force.technologies["logistics-4"].researched = true
  end
end