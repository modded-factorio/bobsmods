if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value == true then
  if settings.startup["bobmods-revamp-hardmode"].value == true then
    data.raw.recipe["sodium-cobaltate"].emissions_multiplier = 0.2
    bobmods.lib.recipe.add_result("sodium-cobaltate", {
      type = "fluid",
      name = "carbon-dioxide",
      amount = 150,
      catalyst_amount = 150
    })

    bobmods.lib.recipe.remove_result("sodium-carbonate", "water")
    bobmods.lib.recipe.add_result("sodium-carbonate", {
      type = "fluid",
      name = "pure-water",
      amount = 10,
      fluidbox_index = 1,
      catalyst_amount = 10
    })

    bobmods.lib.recipe.remove_result("ammonium-chloride-recycling", "water")
    bobmods.lib.recipe.add_result("ammonium-chloride-recycling", {
      type = "fluid",
      name = "pure-water",
      amount = 10
    })

    bobmods.lib.recipe.replace_ingredient("brine", "water", "pure-water")

    bobmods.lib.tech.add_recipe_unlock("rtg", "brine-electrolysis")

    bobmods.lib.tech.add_recipe_unlock("rtg", "brine")
    bobmods.lib.tech.add_recipe_unlock("rtg", "ammoniated-brine")
    bobmods.lib.tech.add_recipe_unlock("rtg", "sodium-bicarbonate")
    bobmods.lib.tech.add_recipe_unlock("rtg", "ammonium-chloride-recycling")

    bobmods.lib.module.add_productivity_limitation("brine")
    bobmods.lib.module.add_productivity_limitation("ammoniated-brine")
    bobmods.lib.module.add_productivity_limitation("sodium-bicarbonate")
  end
  bobmods.lib.module.add_productivity_limitation("sodium-carbonate")
  bobmods.lib.module.add_productivity_limitation("sodium-cobaltate")
end