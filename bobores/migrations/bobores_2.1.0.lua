if script.active_mods["space-age"] then
  local surface = game.surfaces["nauvis"]
  if surface and prototypes.entity["tungsten-ore"] then
    local entities = surface.find_entities_filtered({
      name = { "tungsten-ore" },
      type = "resource",
    })
    for _, entity in pairs(entities) do
      entity.destroy()
    end
  end
end
