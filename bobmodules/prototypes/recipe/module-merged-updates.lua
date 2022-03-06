if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-1-combine", {"solder", 1})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-2", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-2-combine", {"solder", 2})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-3", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-3-combine", {"solder", 3})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-4", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-4-combine", {"solder", 4})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-5", {"solder", 6})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-5-combine", {"solder", 6})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-6", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-6-combine", {"solder", 7})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"solder", 10})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-7-combine", {"solder", 8})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-8-combine", {"solder", 10})
else
  bobmods.lib.recipe.add_ingredient("raw-speed-module-3", {"module-contact", 5})
end



if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-8", "advanced-circuit", "electronic-components")
end


if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-8", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"processing-electronics", 8})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"advanced-processing-unit", 8})
  else
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"processing-unit", 8})
  end
end


if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-5", {"ruby-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-5", {"alien-artifact", 1})
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-6", {"emerald-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-6", {"alien-artifact", 1})
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"topaz-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"alien-artifact", 1})
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"diamond-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"alien-artifact", 1})
  end
end


end

if settings.startup["bobmods-modules-enablegreenmodules"].value == true then

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("green-module-1-combine", {"solder", 1})

  bobmods.lib.recipe.add_ingredient("green-module-2", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("green-module-2-combine", {"solder", 2})

  bobmods.lib.recipe.add_ingredient("green-module-3", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("green-module-3-combine", {"solder", 3})

  bobmods.lib.recipe.add_ingredient("green-module-4", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("green-module-4-combine", {"solder", 4})

  bobmods.lib.recipe.add_ingredient("green-module-5", {"solder", 6})
  bobmods.lib.recipe.add_ingredient("green-module-5-combine", {"solder", 6})

  bobmods.lib.recipe.add_ingredient("green-module-6", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("green-module-6-combine", {"solder", 7})

  bobmods.lib.recipe.add_ingredient("green-module-7", {"solder", 10})
  bobmods.lib.recipe.add_ingredient("green-module-7-combine", {"solder", 8})

  bobmods.lib.recipe.add_ingredient("green-module-8", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("green-module-8-combine", {"solder", 10})
else
  bobmods.lib.recipe.add_ingredient("green-module-3", {"module-contact", 5})
end



if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("green-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("green-module-8", "advanced-circuit", "electronic-components")
end


if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("green-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("green-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("green-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("green-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("green-module-8", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("green-module-7", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("green-module-8", {"processing-electronics", 8})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("green-module-7", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("green-module-8", {"advanced-processing-unit", 8})
  else
    bobmods.lib.recipe.add_ingredient("green-module-7", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("green-module-8", {"processing-unit", 8})
  end
end



if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("green-module-5", {"ruby-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("green-module-5", {"alien-artifact", 1})
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("green-module-6", {"emerald-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("green-module-6", {"alien-artifact", 1})
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("green-module-7", {"topaz-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("green-module-7", {"alien-artifact", 1})
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("green-module-8", {"diamond-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("green-module-8", {"alien-artifact", 1})
  end
end


end

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-1-combine", {"solder", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-2", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-2-combine", {"solder", 2})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-3", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-3-combine", {"solder", 3})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-4", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-4-combine", {"solder", 4})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", {"solder", 6})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-5-combine", {"solder", 6})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-6-combine", {"solder", 7})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"solder", 10})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7-combine", {"solder", 8})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8-combine", {"solder", 10})
else
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-3", {"module-contact", 5})
end



if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-1", {"speed-processor", 1})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-1-combine", {"speed-module", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-2", {"speed-processor", 2})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-2-combine", {"speed-module-2", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-3", {"speed-processor-2", 3})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-3-combine", {"speed-module-3", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-4", {"speed-processor-2", 4})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-4-combine", {"speed-module-4", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", {"speed-processor-2", 5})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-5-combine", {"speed-module-5", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", {"speed-processor-3", 6})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-6-combine", {"speed-module-6", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"speed-processor-3", 8})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7-combine", {"speed-module-7", 1})

  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"speed-processor-3", 10})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8-combine", {"speed-module-8", 1})
end


if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-8", "advanced-circuit", "electronic-components")
end


if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-productivity-module-8", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"processing-electronics", 8})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"advanced-processing-unit", 8})
  else
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"processing-unit", 8})
  end
end


if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", {"ruby-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", {"alien-artifact", 1})
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", {"emerald-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", {"alien-artifact", 1})
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"topaz-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", {"alien-artifact", 1})
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"diamond-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", {"alien-artifact", 1})
  end
end


end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then

if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
  bobmods.lib.recipe.add_ingredient("god-module-1", {"speed-processor", 2})
  bobmods.lib.recipe.add_ingredient("god-module-2", {"speed-processor-2", 4})
  bobmods.lib.recipe.add_ingredient("god-module-3", {"speed-processor-3", 6})
  bobmods.lib.recipe.add_ingredient("god-module-4", {"speed-processor-3", 10})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"speed-processor-3", 15})
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("god-module-1", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("god-module-2", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("god-module-3", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("god-module-4", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"solder", 15})
end


if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("god-module-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("god-module-4", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("god-module-5", "advanced-circuit", "electronic-components")
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("god-module-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-5", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"processing-electronics", 8})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"processing-electronics", 10})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", {"advanced-processing-unit", 8})
    bobmods.lib.recipe.add_ingredient("god-module-5", {"advanced-processing-unit", 10})
  else
    bobmods.lib.recipe.add_ingredient("god-module-4", {"processing-unit", 8})
    bobmods.lib.recipe.add_ingredient("god-module-5", {"processing-unit", 10})
  end
end


if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-3", {"ruby-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-3", {"alien-artifact", 1})
  end
end

if data.raw.item["sapphire-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-3", {"sapphire-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-3", {"alien-artifact", 1})
  end
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"amethyst-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", {"alien-artifact", 1})
  end
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"emerald-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", {"alien-artifact", 1})
  end
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-5", {"topaz-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-5", {"alien-artifact", 1})
  end
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-5", {"diamond-5", 1})
else
  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("god-module-5", {"alien-artifact", 1})
  end
end


end

