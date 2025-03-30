for index, force in pairs(game.forces) do
  if prototypes.technology["bob-burner-lab"] and force.technologies["automation-science-pack"].researched then
    force.technologies["bob-burner-lab"].researched = true
  end
  if prototypes.technology["bob-alien-research"] and force.technologies["bob-alien-research"].researched then
    force.technologies["bob-artifact-processing"].researched = true
  end
end
