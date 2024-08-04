if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("speed-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-2", { type = "item", name = "solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("speed-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("productivity-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-3", { type = "item", name = "solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("speed-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("productivity-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-4", { type = "item", name = "solder", amount = 3 })

  bobmods.lib.recipe.add_ingredient("speed-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("productivity-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-5", { type = "item", name = "solder", amount = 4 })

  bobmods.lib.recipe.add_ingredient("speed-module-6", { type = "item", name = "solder", amount = 5 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-6", { type = "item", name = "solder", amount = 5 })
  bobmods.lib.recipe.add_ingredient("productivity-module-6", { type = "item", name = "solder", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", { type = "item", name = "solder", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-6", { type = "item", name = "solder", amount = 5 })

  bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "solder", amount = 7 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "solder", amount = 7 })
  bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "solder", amount = 7 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "solder", amount = 7 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "solder", amount = 7 })

  bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "solder", amount = 8 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "solder", amount = 8 })
  bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "solder", amount = 8 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "solder", amount = 8 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "solder", amount = 8 })
else
  bobmods.lib.recipe.add_ingredient("speed-module-3", { type = "item", name = "module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-3", { type = "item", name = "module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("productivity-module-3", { type = "item", name = "module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-3", { type = "item", name = "module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-3", { type = "item", name = "module-contact", amount = 5 })
end

if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("speed-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-3", "advanced-circuit", "electronic-components")

  bobmods.lib.recipe.replace_ingredient("speed-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-8", "advanced-circuit", "electronic-components")
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("speed-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-4", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("speed-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-5", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("speed-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-6", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("speed-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-7", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("speed-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("effectivity-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-module-8", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "processing-electronics", amount = 3 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "processing-electronics", amount = 3 })
  bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "processing-electronics", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "processing-electronics", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "processing-electronics", amount = 3 })

  bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "processing-electronics", amount = 5 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "processing-electronics", amount = 5 })
  bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "processing-electronics", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "processing-electronics", amount = 5 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "processing-electronics", amount = 5 })
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "advanced-processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "advanced-processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "advanced-processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "advanced-processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "advanced-processing-unit", amount = 3 })

    bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "advanced-processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "advanced-processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "advanced-processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "advanced-processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "advanced-processing-unit", amount = 5 })
  else
    bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "processing-unit", amount = 3 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "processing-unit", amount = 3 })

    bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "processing-unit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "processing-unit", amount = 5 })
  end
end

if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-5", { type = "item", name = "ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-5", { type = "item", name = "ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-5", { type = "item", name = "ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", { type = "item", name = "ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-5", { type = "item", name = "ruby-5", amount = 1 })
  if data.raw.technology["gem-processing-3"] then
    bobmods.lib.tech.add_prerequisite("speed-module-5", "gem-processing-3")
    bobmods.lib.tech.add_prerequisite("productivity-module-5", "gem-processing-3")
    bobmods.lib.tech.add_prerequisite("effectivity-module-5", "gem-processing-3")
    bobmods.lib.tech.add_prerequisite("pollution-clean-module-5", "gem-processing-3")
    bobmods.lib.tech.add_prerequisite("pollution-create-module-5", "gem-processing-3")
  end
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("productivity-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-5", { type = "item", name = "alien-artifact", amount = 1 })
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-6", { type = "item", name = "emerald-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-6", { type = "item", name = "emerald-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-6", { type = "item", name = "emerald-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", { type = "item", name = "emerald-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-6", { type = "item", name = "emerald-5", amount = 1 })
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("productivity-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-6", { type = "item", name = "alien-artifact", amount = 1 })
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "topaz-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "topaz-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "topaz-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "topaz-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "topaz-5", amount = 1 })
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("productivity-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", { type = "item", name = "alien-artifact", amount = 1 })
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "diamond-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "diamond-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "diamond-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "diamond-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "diamond-5", amount = 1 })
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("productivity-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", { type = "item", name = "alien-artifact", amount = 1 })
  end
end
