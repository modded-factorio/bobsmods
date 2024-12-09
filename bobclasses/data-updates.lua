local multiplier = data.raw.character.character.inventory_size / 80
if settings.startup["bobmods-plates-inventorysize"] then
  multiplier = settings.startup["bobmods-plates-inventorysize"].value / 80
end

for index, character in pairs(bobmods.classes.characters) do
  if not (character.name == "character") then -- should fix the issue where if you're not using bobplates, but another mod changes the base inventory size, the base character doesn't end up with the multiplier being applied twice.
    data.raw.character[character.name].inventory_size = math.floor(character.inventory_size * multiplier)
    data.raw.character[character.name].animations = util.table.deepcopy(data.raw.character.character.animations)
  end
end

--Fix for Space Age crafting category changes
local categories = data.raw.character.character.crafting_categories
data.raw.character["bob-character-miner"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-fighter"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-builder"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-balanced-2"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-miner-2"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-fighter-2"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-builder-2"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-engineer"].crafting_categories = util.copy(categories)
data.raw.character["bob-character-prospector"].crafting_categories = util.copy(categories)

table.insert(bobmods.classes.characters["bob-character-miner"].crafting_categories, "smelting")
table.insert(bobmods.classes.characters["bob-character-miner-2"].crafting_categories, "smelting")
table.insert(bobmods.classes.characters["bob-character-engineer"].crafting_categories, "smelting")
table.insert(bobmods.classes.characters["bob-character-prospector"].crafting_categories, "smelting")

--if mixing furnace category exists, add it to characters with smelting category
if data.raw["recipe-category"]["mixing-furnace"] then
  for index, character in pairs(bobmods.classes.characters) do
    bobmods.lib.machine.type_if_add_category("character", "smelting", "mixing-furnace")
  end
end

require("prototypes.recipe-updates")
