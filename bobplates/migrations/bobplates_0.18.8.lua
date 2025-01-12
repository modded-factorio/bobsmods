game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["bob-chemical-processing-2"].researched then
    force.technologies["steel-chemical-furnace"].researched = true --automatically unlock it
  end
end
