--Enable recipes
for index, force in pairs(game.forces) do

  for techToResearch, techToCheck in pairs{
    ["radars-1"] = "radars-2"
  } do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched or force.technologies[techToResearch].researched
    end
  end
end
