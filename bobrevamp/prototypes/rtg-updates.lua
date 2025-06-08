if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value == true then
  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data.raw.recipe["bob-sodium-cobaltate"].emissions_multiplier = 0.2
    bobmods.lib.recipe.add_result("bob-sodium-cobaltate", { type = "fluid", name = "bob-carbon-dioxide", amount = 150 })

    if data.raw.fluid["bob-pure-water"] then
      bobmods.lib.recipe.remove_result("bob-sodium-carbonate", "water")
      bobmods.lib.recipe.add_result(
        "bob-sodium-carbonate",
        { type = "fluid", name = "bob-pure-water", amount = 10, fluidbox_index = 1, ignored_by_productivity = 10 }
      )

      bobmods.lib.recipe.remove_result("bob-ammonium-chloride-reprocessing", "water")
      bobmods.lib.recipe.add_result(
        "bob-ammonium-chloride-reprocessing",
        { type = "fluid", name = "bob-pure-water", amount = 10 }
      )

      bobmods.lib.recipe.replace_ingredient("bob-brine", "water", "bob-pure-water")
    end

    bobmods.lib.tech.add_recipe_unlock("bob-rtg", "bob-brine-electrolysis")

    bobmods.lib.tech.add_recipe_unlock("bob-rtg", "bob-brine")
    bobmods.lib.tech.add_recipe_unlock("bob-rtg", "bob-ammoniated-brine")
    bobmods.lib.tech.add_recipe_unlock("bob-rtg", "bob-sodium-bicarbonate")
    bobmods.lib.tech.add_recipe_unlock("bob-rtg", "bob-ammonium-chloride-reprocessing")
  end
end
