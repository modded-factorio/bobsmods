if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value == true then
  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data.raw.recipe["sodium-cobaltate"].emissions_multiplier = 0.2
    bobmods.lib.recipe.add_result("sodium-cobaltate", { type = "fluid", name = "carbon-dioxide", amount = 150 })

    if data.raw.fluid["bob-pure-water"] then
      bobmods.lib.recipe.remove_result("sodium-carbonate", "water")
      bobmods.lib.recipe.add_result(
        "sodium-carbonate",
        { type = "fluid", name = "bob-pure-water", amount = 10, fluidbox_index = 1, ignored_by_productivity = 10 }
      )

      bobmods.lib.recipe.remove_result("bob-ammonium-chloride-recycling", "water")
      bobmods.lib.recipe.add_result(
        "bob-ammonium-chloride-recycling",
        { type = "fluid", name = "bob-pure-water", amount = 10 }
      )

      bobmods.lib.recipe.replace_ingredient("brine", "water", "bob-pure-water")
    end

    bobmods.lib.tech.add_recipe_unlock("rtg", "brine-electrolysis")

    bobmods.lib.tech.add_recipe_unlock("rtg", "brine")
    bobmods.lib.tech.add_recipe_unlock("rtg", "ammoniated-brine")
    bobmods.lib.tech.add_recipe_unlock("rtg", "sodium-bicarbonate")
    bobmods.lib.tech.add_recipe_unlock("rtg", "bob-ammonium-chloride-recycling")
  end
end
