for index, force in pairs(game.forces) do
  if force.technologies["electronics"].researched then
    force.technologies["bob-electronics"].researched = true
  end
end
