if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-1-combine", { type = "item", name = "solder", amount = 1 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-2", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-2-combine", { type = "item", name = "solder", amount = 2 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-3", { type = "item", name = "solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-3-combine", { type = "item", name = "solder", amount = 3 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-4", { type = "item", name = "solder", amount = 5 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-4-combine", { type = "item", name = "solder", amount = 4 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-5", { type = "item", name = "solder", amount = 6 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-5-combine", { type = "item", name = "solder", amount = 6 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-6", { type = "item", name = "solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-6-combine", { type = "item", name = "solder", amount = 7 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", { type = "item", name = "solder", amount = 10 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7-combine", { type = "item", name = "solder", amount = 8 })

    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", { type = "item", name = "solder", amount = 12 })
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8-combine", { type = "item", name = "solder", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("raw-speed-module-3", { type = "item", name = "module-contact", amount = 5 })
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
    bobmods.lib.recipe.add_ingredient(
      "raw-speed-module-7",
      { type = "item", name = "processing-electronics", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-speed-module-8",
      { type = "item", name = "processing-electronics", amount = 8 }
    )
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-speed-module-7",
        { type = "item", name = "advanced-processing-unit", amount = 5 }
      )
      bobmods.lib.recipe.add_ingredient(
        "raw-speed-module-8",
        { type = "item", name = "advanced-processing-unit", amount = 8 }
      )
    else
      bobmods.lib.recipe.add_ingredient("raw-speed-module-7", { type = "item", name = "processing-unit", amount = 5 })
      bobmods.lib.recipe.add_ingredient("raw-speed-module-8", { type = "item", name = "processing-unit", amount = 8 })
    end
  end

  if data.raw.item["ruby-5"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-5", { type = "item", name = "ruby-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("raw-speed-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["emerald-5"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-6", { type = "item", name = "emerald-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("raw-speed-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["topaz-5"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", { type = "item", name = "topaz-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("raw-speed-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["diamond-5"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", { type = "item", name = "diamond-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("raw-speed-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end
end

if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("green-module-1-combine", { type = "item", name = "solder", amount = 1 })

    bobmods.lib.recipe.add_ingredient("green-module-2", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("green-module-2-combine", { type = "item", name = "solder", amount = 2 })

    bobmods.lib.recipe.add_ingredient("green-module-3", { type = "item", name = "solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient("green-module-3-combine", { type = "item", name = "solder", amount = 3 })

    bobmods.lib.recipe.add_ingredient("green-module-4", { type = "item", name = "solder", amount = 5 })
    bobmods.lib.recipe.add_ingredient("green-module-4-combine", { type = "item", name = "solder", amount = 4 })

    bobmods.lib.recipe.add_ingredient("green-module-5", { type = "item", name = "solder", amount = 6 })
    bobmods.lib.recipe.add_ingredient("green-module-5-combine", { type = "item", name = "solder", amount = 6 })

    bobmods.lib.recipe.add_ingredient("green-module-6", { type = "item", name = "solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient("green-module-6-combine", { type = "item", name = "solder", amount = 7 })

    bobmods.lib.recipe.add_ingredient("green-module-7", { type = "item", name = "solder", amount = 10 })
    bobmods.lib.recipe.add_ingredient("green-module-7-combine", { type = "item", name = "solder", amount = 8 })

    bobmods.lib.recipe.add_ingredient("green-module-8", { type = "item", name = "solder", amount = 12 })
    bobmods.lib.recipe.add_ingredient("green-module-8-combine", { type = "item", name = "solder", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("green-module-3", { type = "item", name = "module-contact", amount = 5 })
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
    bobmods.lib.recipe.add_ingredient("green-module-7", { type = "item", name = "processing-electronics", amount = 5 })
    bobmods.lib.recipe.add_ingredient("green-module-8", { type = "item", name = "processing-electronics", amount = 8 })
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "green-module-7",
        { type = "item", name = "advanced-processing-unit", amount = 5 }
      )
      bobmods.lib.recipe.add_ingredient(
        "green-module-8",
        { type = "item", name = "advanced-processing-unit", amount = 8 }
      )
    else
      bobmods.lib.recipe.add_ingredient("green-module-7", { type = "item", name = "processing-unit", amount = 5 })
      bobmods.lib.recipe.add_ingredient("green-module-8", { type = "item", name = "processing-unit", amount = 8 })
    end
  end

  if data.raw.item["ruby-5"] then
    bobmods.lib.recipe.add_ingredient("green-module-5", { type = "item", name = "ruby-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("green-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["emerald-5"] then
    bobmods.lib.recipe.add_ingredient("green-module-6", { type = "item", name = "emerald-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("green-module-6", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["topaz-5"] then
    bobmods.lib.recipe.add_ingredient("green-module-7", { type = "item", name = "topaz-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("green-module-7", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["diamond-5"] then
    bobmods.lib.recipe.add_ingredient("green-module-8", { type = "item", name = "diamond-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("green-module-8", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end
end

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-1-combine",
      { type = "item", name = "solder", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-2", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-2-combine",
      { type = "item", name = "solder", amount = 2 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-3", { type = "item", name = "solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-3-combine",
      { type = "item", name = "solder", amount = 3 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-4", { type = "item", name = "solder", amount = 5 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-4-combine",
      { type = "item", name = "solder", amount = 4 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", { type = "item", name = "solder", amount = 6 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-5-combine",
      { type = "item", name = "solder", amount = 6 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", { type = "item", name = "solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-6-combine",
      { type = "item", name = "solder", amount = 7 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", { type = "item", name = "solder", amount = 10 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-7-combine",
      { type = "item", name = "solder", amount = 8 }
    )

    bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", { type = "item", name = "solder", amount = 12 })
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-8-combine",
      { type = "item", name = "solder", amount = 10 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-3",
      { type = "item", name = "module-contact", amount = 5 }
    )
  end

  if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-1",
      { type = "item", name = "speed-processor", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-1-combine",
      { type = "item", name = "speed-module", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-2",
      { type = "item", name = "speed-processor", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-2-combine",
      { type = "item", name = "speed-module-2", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-3",
      { type = "item", name = "speed-processor-2", amount = 3 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-3-combine",
      { type = "item", name = "speed-module-3", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-4",
      { type = "item", name = "speed-processor-2", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-4-combine",
      { type = "item", name = "speed-module-4", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-5",
      { type = "item", name = "speed-processor-2", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-5-combine",
      { type = "item", name = "speed-module-5", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-6",
      { type = "item", name = "speed-processor-3", amount = 6 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-6-combine",
      { type = "item", name = "speed-module-6", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-7",
      { type = "item", name = "speed-processor-3", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-7-combine",
      { type = "item", name = "speed-module-7", amount = 1 }
    )

    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-8",
      { type = "item", name = "speed-processor-3", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-8-combine",
      { type = "item", name = "speed-module-8", amount = 1 }
    )
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
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-7",
      { type = "item", name = "processing-electronics", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "raw-productivity-module-8",
      { type = "item", name = "processing-electronics", amount = 8 }
    )
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-7",
        { type = "item", name = "advanced-processing-unit", amount = 5 }
      )
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-8",
        { type = "item", name = "advanced-processing-unit", amount = 8 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-7",
        { type = "item", name = "processing-unit", amount = 5 }
      )
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-8",
        { type = "item", name = "processing-unit", amount = 8 }
      )
    end
  end

  if data.raw.item["ruby-5"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-5", { type = "item", name = "ruby-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-5",
        { type = "item", name = "alien-artifact", amount = 1 }
      )
    end
  end

  if data.raw.item["emerald-5"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-6", { type = "item", name = "emerald-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-6",
        { type = "item", name = "alien-artifact", amount = 1 }
      )
    end
  end

  if data.raw.item["topaz-5"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-7", { type = "item", name = "topaz-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-7",
        { type = "item", name = "alien-artifact", amount = 1 }
      )
    end
  end

  if data.raw.item["diamond-5"] then
    bobmods.lib.recipe.add_ingredient("raw-productivity-module-8", { type = "item", name = "diamond-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "raw-productivity-module-8",
        { type = "item", name = "alien-artifact", amount = 1 }
      )
    end
  end
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
    bobmods.lib.recipe.add_ingredient("god-module-1", { type = "item", name = "speed-processor", amount = 2 })
    bobmods.lib.recipe.add_ingredient("god-module-2", { type = "item", name = "speed-processor-2", amount = 4 })
    bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "speed-processor-3", amount = 6 })
    bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "speed-processor-3", amount = 10 })
    bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "speed-processor-3", amount = 15 })
  end

  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("god-module-1", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("god-module-2", { type = "item", name = "solder", amount = 5 })
    bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "solder", amount = 12 })
    bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "solder", amount = 15 })
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
    bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "processing-electronics", amount = 8 })
    bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "processing-electronics", amount = 10 })
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "god-module-4",
        { type = "item", name = "advanced-processing-unit", amount = 8 }
      )
      bobmods.lib.recipe.add_ingredient(
        "god-module-5",
        { type = "item", name = "advanced-processing-unit", amount = 10 }
      )
    else
      bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "processing-unit", amount = 8 })
      bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "processing-unit", amount = 10 })
    end
  end

  if data.raw.item["ruby-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "ruby-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["sapphire-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "sapphire-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-3", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["amethyst-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "amethyst-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["emerald-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "emerald-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-4", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["topaz-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "topaz-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end

  if data.raw.item["diamond-5"] then
    bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "diamond-5", amount = 1 })
  else
    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("god-module-5", { type = "item", name = "alien-artifact", amount = 1 })
    end
  end
end
