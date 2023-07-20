local bobmods = bobmods or {}
bobmods.migration = {}

function bobmods.migration.ensure_unlocked(tech_name, recipe_name)
  for index, force in pairs(game.forces) do
    if force.technologies[tech_name] and force.technologies[tech_name].researched and force.recipes[recipe_name] then
      force.recipes[recipe_name].enabled = true
    end
  end
end

return bobmods
