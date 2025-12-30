require("prototypes.rocket-fuel-updates")
require("prototypes.rocket-parts-updates")
require("prototypes.hard-mode-updates")
require("prototypes.rtg-updates")

-- oil overhaul
if settings.startup["bobmods-revamp-old-oil"].value == true or settings.startup["bobmods-revamp-oil"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "chemical-plant")
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
  bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
  bobmods.lib.tech.remove_prerequisite("oil-processing", "steel-processing")
  data.raw.technology["oil-processing"].icon = "__base__/graphics/technology/oil-processing.png"
  bobmods.lib.tech.set_science_pack_count("oil-processing", 30)

  if
    data.raw.recipe["basic-oil-processing"]
    and data.raw.recipe["basic-oil-processing"].results
    and data.raw.recipe["basic-oil-processing"].results[1].name == "petroleum-gas"
    and data.raw.recipe["basic-oil-processing"].results[1].amount == 45
  then
    data.raw.recipe["basic-oil-processing"].results[1].amount = 70 --increase PG count for 0.17.60.
  end
  bobmods.lib.recipe.set_ingredient("coal-liquefaction", { type = "fluid", name = "heavy-oil", amount = 10 })

  bobmods.lib.tech.replace_prerequisite("fluid-handling", "oil-processing", "steel-processing")
  bobmods.lib.tech.set_science_pack_count("fluid-handling", 30)

  --chemical plant before oil processing
  bobmods.lib.tech.add_prerequisite("oil-processing", "bob-chemical-plant")
  if data.raw.technology["bob-chemical-processing-2"] then
    bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-2", "chemical-plant")
    bobmods.lib.tech.add_prerequisite("bob-chemical-processing-2", "bob-chemical-plant")
    bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-2", "bob-solid-fuel-from-hydrogen")
    bobmods.lib.tech.add_recipe_unlock("flammables", "bob-solid-fuel-from-hydrogen")
    bobmods.lib.tech.replace_prerequisite("bob-nitrogen-processing", "bob-chemical-processing-2", "bob-chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("lubricant", "bob-chemical-plant")
  bobmods.lib.tech.add_prerequisite("plastics", "bob-chemical-plant")
  bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "steel-processing")
  bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "electronics")

  if data.raw.fluid["bob-chlorine"] then
    bobmods.lib.recipe.replace_ingredient("plastic-bar", "coal", "bob-chlorine")
    bobmods.lib.tech.add_prerequisite("plastics", "bob-electrolysis-2")
  end
  if data.raw.fluid["bob-sulfur-dioxide"] and data.raw.recipe["bob-sulfuric-acid-2"] then
    for i, technology in pairs(data.raw.technology) do
      bobmods.lib.tech.remove_recipe_unlock(technology.name, "sulfuric-acid")
    end
    bobmods.lib.recipe.hide("sulfuric-acid")
  end
end

--old oil overhaul
if
  settings.startup["bobmods-revamp-old-oil"].value == true
  and not settings.startup["bobmods-revamp-oil"].value == true
then
  bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "sulfur")
  bobmods.lib.recipe.hide("sulfur")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur")

  if data.raw.fluid["bob-sulfur-dioxide"] then
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide-2")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide-3")
  end
end

--new oil overhaul
if settings.startup["bobmods-revamp-oil"].value == true then
  if data.raw.recipe["bob-sulfur-2"] or data.raw.recipe["bob-sulfur-3"] then
    bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
    bobmods.lib.tech.remove_recipe_unlock("oil-processing", "sulfur")
    bobmods.lib.recipe.hide("sulfur")
  end
  bobmods.lib.tech.add_recipe_unlock("flammables", "bob-solid-fuel-from-sour-gas")
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-petroleum-gas-sweetening")
  bobmods.lib.create_gas_bottle(data.raw.fluid["bob-sour-gas"])

  if data.raw.fluid["bob-hydrogen-sulfide"] then
    bobmods.lib.recipe.add_result(
      "bob-petroleum-gas-sweetening",
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 10 }
    )
  end

  local function change_pg_to_sg(results)
    for i, result in pairs(results) do
      if result.name == "petroleum-gas" then
        result.name = "bob-sour-gas"
      end
    end
  end

  for i, recipe in pairs(data.raw.recipe) do
    if recipe.category == "oil-processing" then
      if recipe.results then
        change_pg_to_sg(recipe.results)
      end
      if recipe.main_product == "petroleum-gas" then
        recipe.main_product = "bob-sour-gas"
      end
    end
  end

  if data.raw["item-subgroup"]["bob-chemical-fuels"] then
    data.raw.recipe["bob-solid-fuel-from-sour-gas"].subgroup = "bob-chemical-fuels"
  end
end
