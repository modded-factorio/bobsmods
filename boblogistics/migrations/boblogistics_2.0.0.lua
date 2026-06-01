for index, force in pairs(game.forces) do
  if force.technologies["bob-repair-pack-2"].researched then
    force.technologies["repair-pack"].researched = true
  end
end
