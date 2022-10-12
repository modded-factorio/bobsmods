if not bobmods.lib.module then
  bobmods.lib.module = {}
end

function bobmods.lib.module.add_productivity_limitation(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        table.insert(module.limitation, recipe)
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.module.add_productivity_limitations(recipes)
  if type(recipes) == "table" then
    for j, recipe in pairs(recipes) do
      bobmods.lib.module.add_productivity_limitation(recipe)
    end
  else
    log(debug.traceback())
    log("Expected table.")
  end
end

function bobmods.lib.module.remove_productivity_limitation(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        for limitationIndex, limitationRecipeName in pairs(module.limitation) do
          if recipe == limitationRecipeName then
            table.remove(module.limitation, limitationIndex)
          end
        end
      end
    end
  else
    log(debug.traceback())
    bobmods.lib.error.recipe(recipe)
  end
end

function bobmods.lib.module.remove_productivity_limitations(recipes)
  if type(recipes) == "table" then
    for j, recipe in pairs(recipes) do
      bobmods.lib.module.remove_productivity_limitation(recipe)
    end
  else
    log(debug.traceback())
    log("Expected table.")
  end
end