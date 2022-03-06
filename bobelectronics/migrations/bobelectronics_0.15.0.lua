game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["chemical-processing-2"] then
    if force.technologies["chemical-processing-2"].researched then
      force.recipes["ferric-chloride-solution"].enabled = true
    end
  else
    if force.technologies["oil-processing"].researched then
      force.recipes["ferric-chloride-solution"].enabled = true
    end
  end

  if force.technologies["oil-processing"].researched then
    force.recipes["bob-resin-oil"].enabled = true
  end

  if force.technologies["advanced-oil-processing"].researched then
    force.recipes["coal-cracking"].enabled = true
    force.recipes["bob-oil-processing"].enabled = true
  end

  if force.technologies["plastics"].researched then
    force.recipes["synthetic-wood"].enabled = true
  end

  if force.technologies["electronics"].researched then
    force.recipes["insulated-cable"].enabled = true
    force.recipes["basic-electronic-components"].enabled = true
    force.recipes["electronic-circuit"].enabled = true
    if force.recipes["solder"] then
      force.recipes["solder"].enabled = true
    end
    if force.recipes["solder-alloy"] then
      force.recipes["solder-alloy"].enabled = true
    end
    if force.recipes["solder-alloy-lead"] then
      force.recipes["solder-alloy-lead"].enabled = true
    end
    if force.recipes["tinned-copper-cable"] then
      force.recipes["tinned-copper-cable"].enabled = true
    end
  end

  if force.technologies["advanced-electronics"].researched then
    force.recipes["electronic-components"].enabled = true
    force.recipes["phenolic-board"].enabled = true
    force.recipes["circuit-board"].enabled = true
    force.recipes["advanced-circuit"].enabled = true
  end

  if force.technologies["advanced-electronics-2"].researched then
    force.recipes["intergrated-electronics"].enabled = true
    force.recipes["fibreglass-board"].enabled = true
    force.recipes["superior-circuit-board"].enabled = true
    force.recipes["processing-unit"].enabled = true
  end

  if force.technologies["advanced-electronics-3"].researched then
    if force.recipes["gilded-copper-cable"] then
      force.recipes["gilded-copper-cable"].enabled = true
    end
    force.recipes["processing-electronics"].enabled = true
    force.recipes["multi-layer-circuit-board"].enabled = true
    force.recipes["advanced-processing-unit"].enabled = true
  end

  if force.technologies["silicon-processing"] then
    if force.technologies["silicon-processing"].researched then
      if force.recipes["silicon-wafer"] then
        force.recipes["silicon-wafer"].enabled = true
      end
    end
  end


  force.recipes["basic-circuit-board"].enabled = true
  if force.recipes["basic-electronic-circuit-board"] then
    force.recipes["basic-electronic-circuit-board"].enabled = false
  end
  if force.recipes["electronic-circuit-board"] then
    force.recipes["electronic-circuit-board"].enabled = false
  end
  if force.recipes["electronic-processing-board"] then
    force.recipes["electronic-processing-board"].enabled = false
  end
  if force.recipes["electronic-processing-board-2"] then
    force.recipes["electronic-processing-board-2"].enabled = false
  end

  if force.technologies["alloy-processing-2"] and force.technologies["alloy-processing-2"].researched and force.recipes["solder-alloy"] then
    force.recipes["solder-alloy"].enabled = true
  end
end

