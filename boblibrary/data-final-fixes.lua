if settings.startup["bobmods-library-technology-cleanup"].value == true then
  bobmods.lib.tech.prerequisite_cleanup()
end
if settings.startup["bobmods-library-recipe-cleanup"].value == true then
  bobmods.lib.recipe.ingredients_cleanup()
end