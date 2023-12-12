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
  if data.raw.item["chemical-plant-4"] then
    data.raw.item["chemical-plant"].subgroup = "bob-chemical-machine"
  end
  if data.raw.item["oil-refinery-4"] then
    data.raw.item["oil-refinery"].subgroup = "bob-chemical-machine"
    data.raw.item["oil-refinery-2"].subgroup = "bob-chemical-machine"
    data.raw.item["oil-refinery-3"].subgroup = "bob-chemical-machine"
    data.raw.item["oil-refinery-4"].subgroup = "bob-chemical-machine"
  end
end
