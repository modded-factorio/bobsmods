local function regenerate_entity(ore)
  if prototypes.entity[ore] and prototypes.entity[ore].autoplace_specification then
    game.regenerate_entity(ore)
  end
end

remote.add_interface("bobores", {
  Regenerate = function()
    --    for _, player in pairs(game.players) do
    --      player.print("Regenerating all ores now, this may take some time...")
    --    end
    regenerate_entity("bob-tin-ore")
    regenerate_entity("bob-lead-ore")
    regenerate_entity("bob-quartz")
    regenerate_entity("bob-silver-ore")
    regenerate_entity("bob-zinc-ore")
    regenerate_entity("bob-gold-ore")
    regenerate_entity("bob-bauxite-ore")
    regenerate_entity("bob-rutile-ore")
    regenerate_entity("bob-tungsten-ore")

    regenerate_entity("bob-nickel-ore")
    regenerate_entity("bob-cobalt-ore")
    regenerate_entity("bob-sulfur")
    regenerate_entity("bob-gem-ore")

    regenerate_entity("bob-lithia-water")
    regenerate_entity("bob-ground-water")

    regenerate_entity("bob-thorium-ore")
    for i, player in ipairs(game.players) do
      player.print("All ores successfully regenerated!")
    end
  end,
})
