for index, force in pairs(game.forces) do
  if force.technologies["bob-area-drills-1"].researched or force.technologies["bob-drills-2"].researched then
    force.technologies["electric-mining-drill"].researched = true
  end
  if force.technologies["bob-drills-4"].researched then
    force.technologies["bob-drills-5"].researched = true
  end
end
