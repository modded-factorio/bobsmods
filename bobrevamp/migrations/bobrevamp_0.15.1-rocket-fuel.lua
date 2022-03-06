game.reload_script()


for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["nitrogen-processing"] then
    if force.technologies["nitrogen-processing"].researched then
      if force.recipes["ammonia"] then
        force.recipes["ammonia"].enabled = true
      end
      if force.recipes["nitric-oxide"] then
        force.recipes["nitric-oxide"].enabled = true
      end
    end
  else
    if force.technologies["chemical-plant"].researched then
      if force.recipes["ammonia"] then
        force.recipes["ammonia"].enabled = true
      end
      if force.recipes["nitric-oxide"] then
        force.recipes["nitric-oxide"].enabled = true
      end
      if force.recipes["nitrogen-dioxide"] then
        force.recipes["nitrogen-dioxide"].enabled = true
      end
    end
  end
end







