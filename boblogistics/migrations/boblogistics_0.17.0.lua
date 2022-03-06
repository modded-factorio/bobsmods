for index, force in pairs(game.forces) do
  if
    force.technologies["logistics-0"] and
    force.technologies["logistics"] and
    force.technologies["logistics"].researched == true
  then
    force.technologies["logistics-0"].researched = true
  end
end

