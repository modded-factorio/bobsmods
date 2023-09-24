if not bobmods.lib.module then
  bobmods.lib.module = {}
  bobmods.lib.module.excluded_prod_modules = {}
end

function bobmods.lib.module.exclude_productivity_module(module_name)
  if type(module_name) == "string" and data.raw.module[module_name] then
    bobmods.lib.module.excluded_prod_modules[module_name] = true
  else
    log(debug.traceback())
  end
end

function bobmods.lib.module.add_productivity_limitation(recipe)
  if type(recipe) == "string" and data.raw.recipe[recipe] then
    for i, module in pairs(data.raw.module) do
      if not bobmods.lib.module.excluded_prod_modules[module.name] and module.limitation and module.effect.productivity then
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
