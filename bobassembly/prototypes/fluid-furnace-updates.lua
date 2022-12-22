if settings.startup["bobmods-assembly-oilfurnaces"].value == true then
  if settings.startup["bobmods-assembly-limits"].value == true then
    if data.raw.recipe["fluid-mixing-furnace"] then
      data.raw["assembling-machine"]["fluid-mixing-furnace"].ingredient_count = 4
    end
    if data.raw.recipe["fluid-chemical-furnace"] then
      data.raw["assembling-machine"]["fluid-chemical-furnace"].ingredient_count = 4
    end
  end

  if mods["space-exploration"] then
    for _, furnace in pairs({
      "fluid-furnace",
    }) do
      local prototype = data.raw["furnace"][furnace]
      if prototype and prototype.crafting_categories then
        table.insert(prototype.crafting_categories, "kiln")
      end
    end
  end
end
