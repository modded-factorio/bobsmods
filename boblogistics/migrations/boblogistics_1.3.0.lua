-- This migration turns all the old 1.1 bob valves into a configurable valve
-- with the correct circuit conditions

-- Bob's valves are replaced with new valves in json migration
-- However they will be facing the wrong direction so need to be removed and recreated

if not script.active_mods["valves"] then
  return
end

local util = require("util")

local replace_behaviour = {
  "valves-overflow",
  "valves-top_up",
  "valves-one_way",
}

for _, surface in pairs(game.surfaces) do
  for _, entity_name in pairs(replace_behaviour) do
    if prototypes.entity[entity_name] then
      for _, entity in pairs(surface.find_entities_filtered({ name = entity_name })) do
        local position = entity.position
        local direction = entity.direction
        local force = entity.force
        entity.destroy({ raise_destroy = true })

        direction = util.oppositedirection(direction)

        local valve = surface.create_entity({
          name = entity_name,
          position = position,
          force = force,
          direction = direction,
          raise_built = true,
        })
      end
    end
  end
end

for index, force in pairs(game.forces) do
  if force.technologies["bob-repair-pack-2"].researched then
    force.technologies["repair-pack"].researched = true
  end
end
