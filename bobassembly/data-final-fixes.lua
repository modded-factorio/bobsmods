bobmods.lib.machine.copy_categories_from("assembling-machine", "assembling-machine-3", "assembling-machine-4")
bobmods.lib.machine.copy_categories_from("assembling-machine", "assembling-machine-3", "assembling-machine-5")
bobmods.lib.machine.copy_categories_from("assembling-machine", "assembling-machine-3", "assembling-machine-6")
bobmods.lib.machine.copy_categories_from("assembling-machine", "chemical-plant", "chemical-plant-2")
bobmods.lib.machine.copy_categories_from("assembling-machine", "chemical-plant", "chemical-plant-3")
bobmods.lib.machine.copy_categories_from("assembling-machine", "chemical-plant", "chemical-plant-4")
bobmods.lib.machine.copy_categories_from("furnace", "steel-furnace", "fluid-furnace")
bobmods.lib.machine.copy_categories_from("furnace", "electric-furnace", "electric-furnace-2")
bobmods.lib.machine.copy_categories_from("furnace", "electric-furnace", "electric-furnace-3")
bobmods.lib.machine.copy_categories_from("furnace", "electric-furnace", "multi-purpose-furnace-1")
bobmods.lib.machine.copy_categories_from("furnace", "electric-furnace", "multi-purpose-furnace-2")

if mods["space-exploration"] then
  bobmods.lib.tech.remove_science_pack("electronics-machine-3", "se-material-science-pack-4")
  bobmods.lib.tech.remove_science_pack("chemical-plant-3", "se-material-science-pack-1")
  bobmods.lib.tech.remove_science_pack("chemical-plant-4", "se-material-science-pack-4")

  local new_subgroup = data.raw["item-subgroup"]["bob-chemical-machine"] and "bob-chemical-machine" or "bob-refinery-machine"

  if data.raw.item["chemical-plant-4"] then
    bobmods.lib.item.set_subgroup("chemical-plant", new_subgroup)
  end
  if data.raw.item["oil-refinery-4"] then
    bobmods.lib.item.set_subgroup("oil-refinery", new_subgroup)
    bobmods.lib.item.set_subgroup("oil-refinery-2", new_subgroup)
    bobmods.lib.item.set_subgroup("oil-refinery-3", new_subgroup)
    bobmods.lib.item.set_subgroup("oil-refinery-4", new_subgroup)
  end
end
