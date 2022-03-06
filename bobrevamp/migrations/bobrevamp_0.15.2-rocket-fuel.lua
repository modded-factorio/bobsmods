game.reload_script()


for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["fluid-handling"].researched then
    if force.recipes["fill-ammonia-barrel"] then
      force.recipes["fill-ammonia-barrel"].enabled = true
      force.recipes["empty-ammonia-barrel"].enabled = true
    end
    if force.recipes["fill-nitric-oxide-barrel"] then
      force.recipes["fill-nitric-oxide-barrel"].enabled = true
      force.recipes["empty-nitric-oxide-barrel"].enabled = true
    end
    if force.recipes["fill-hydrazine-barrel"] then
      force.recipes["fill-hydrazine-barrel"].enabled = true
      force.recipes["empty-hydrazine-barrel"].enabled = true
    end
    if force.recipes["fill-hydrogen-peroxide-barrel"] then
      force.recipes["fill-hydrogen-peroxide-barrel"].enabled = true
      force.recipes["empty-hydrogen-peroxide-barrel"].enabled = true
    end
    if force.recipes["fill-dinitrogen-tetroxide-barrel"] then
      force.recipes["fill-dinitrogen-tetroxide-barrel"].enabled = true
      force.recipes["empty-dinitrogen-tetroxide-barrel"].enabled = true
    end
    if force.recipes["fill-nitrogen-dioxide-barrel"] then
      force.recipes["fill-nitrogen-dioxide-barrel"].enabled = true
      force.recipes["empty-nitrogen-dioxide-barrel"].enabled = true
    end
  end
  if force.recipes["enriched-fuel-from-liquid-fuel"] then
    if force.technologies["chemical-processing-2"].researched then
      force.recipes["enriched-fuel-from-liquid-fuel"].enabled = true
    end
  end
  if force.recipes["enriched-fuel-from-hydrazine"] then
    if force.technologies["hydrazine"].researched then
      force.recipes["enriched-fuel-from-hydrazine"].enabled = true
    end
  end
end



