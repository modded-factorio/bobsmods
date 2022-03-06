if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("speed-module-2", {"solder", 1})
  bobmods.lib.recipe.add_ingredient("effectivity-module-2", {"solder", 1})
  bobmods.lib.recipe.add_ingredient("productivity-module-2", {"solder", 1})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-2", {"solder", 1})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-2", {"solder", 1})

  bobmods.lib.recipe.add_ingredient("speed-module-3", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("effectivity-module-3", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("productivity-module-3", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-3", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-3", {"solder", 2})

  bobmods.lib.recipe.add_ingredient("speed-module-4", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("effectivity-module-4", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("productivity-module-4", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-4", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-4", {"solder", 3})

  bobmods.lib.recipe.add_ingredient("speed-module-5", {"solder", 4})
  bobmods.lib.recipe.add_ingredient("effectivity-module-5", {"solder", 4})
  bobmods.lib.recipe.add_ingredient("productivity-module-5", {"solder", 4})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", {"solder", 4})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-5", {"solder", 4})

  bobmods.lib.recipe.add_ingredient("speed-module-6", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("effectivity-module-6", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("productivity-module-6", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-6", {"solder", 5})

  bobmods.lib.recipe.add_ingredient("speed-module-7", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("productivity-module-7", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"solder", 7})

  bobmods.lib.recipe.add_ingredient("speed-module-8", {"solder", 8})
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"solder", 8})
  bobmods.lib.recipe.add_ingredient("productivity-module-8", {"solder", 8})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"solder", 8})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"solder", 8})
else
  bobmods.lib.recipe.add_ingredient("speed-module-3", {"module-contact", 5})
  bobmods.lib.recipe.add_ingredient("effectivity-module-3", {"module-contact", 5})
  bobmods.lib.recipe.add_ingredient("productivity-module-3", {"module-contact", 5})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-3", {"module-contact", 5})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-3", {"module-contact", 5})
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
  bobmods.lib.recipe.add_ingredient("speed-module-7", {"processing-electronics", 3})
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"processing-electronics", 3})
  bobmods.lib.recipe.add_ingredient("productivity-module-7", {"processing-electronics", 3})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"processing-electronics", 3})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"processing-electronics", 3})

  bobmods.lib.recipe.add_ingredient("speed-module-8", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("productivity-module-8", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"processing-electronics", 5})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("speed-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("productivity-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"advanced-processing-unit", 3})

    bobmods.lib.recipe.add_ingredient("speed-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("productivity-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"advanced-processing-unit", 5})
  else
    bobmods.lib.recipe.add_ingredient("speed-module-7", {"processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("productivity-module-7", {"processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"processing-unit", 3})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"processing-unit", 3})

    bobmods.lib.recipe.add_ingredient("speed-module-8", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("productivity-module-8", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"processing-unit", 5})
  end
end



if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-5", {"ruby-5", 1})
  bobmods.lib.recipe.add_ingredient("effectivity-module-5", {"ruby-5", 1})
  bobmods.lib.recipe.add_ingredient("productivity-module-5", {"ruby-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", {"ruby-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-5", {"ruby-5", 1})
  if data.raw.technology["gem-processing-2"] then
    bobmods.lib.tech.add_prerequisite("speed-module-5", "gem-processing-2")
    bobmods.lib.tech.add_prerequisite("productivity-module-5", "gem-processing-2")
    bobmods.lib.tech.add_prerequisite("effectivity-module-5", "gem-processing-2")
    bobmods.lib.tech.add_prerequisite("pollution-clean-module-5", "gem-processing-2")
    bobmods.lib.tech.add_prerequisite("pollution-create-module-5", "gem-processing-2")
  end
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-5", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("effectivity-module-5", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("productivity-module-5", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-5", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-5", {"alien-artifact", 1})
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-6", {"emerald-5", 1})
  bobmods.lib.recipe.add_ingredient("effectivity-module-6", {"emerald-5", 1})
  bobmods.lib.recipe.add_ingredient("productivity-module-6", {"emerald-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", {"emerald-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-6", {"emerald-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-6", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("effectivity-module-6", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("productivity-module-6", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-6", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-6", {"alien-artifact", 1})
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-7", {"topaz-5", 1})
  bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"topaz-5", 1})
  bobmods.lib.recipe.add_ingredient("productivity-module-7", {"topaz-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"topaz-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"topaz-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-7", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("effectivity-module-7", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("productivity-module-7", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-7", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-7", {"alien-artifact", 1})
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("speed-module-8", {"diamond-5", 1})
  bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"diamond-5", 1})
  bobmods.lib.recipe.add_ingredient("productivity-module-8", {"diamond-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"diamond-5", 1})
  bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"diamond-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("speed-module-8", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("effectivity-module-8", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("productivity-module-8", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-clean-module-8", {"alien-artifact", 1})
    bobmods.lib.recipe.add_ingredient("pollution-create-module-8", {"alien-artifact", 1})
  end
end

