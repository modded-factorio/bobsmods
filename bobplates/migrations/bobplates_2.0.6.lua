for index, force in pairs(game.forces) do
  if force.technologies["bob-lithium-processing"].researched and prototypes.technology["lithium-processing"] then
    force.technologies["lithium-processing"].researched = true
  end
end