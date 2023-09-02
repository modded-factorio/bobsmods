if mods["space-exploration"] then
    data.raw.technology["solar-panel-equipment-3"].prerequisites = {
        "solar-panel-equipment-2",
        "se-holmium-cable"
    }
    data.raw.technology["solar-panel-equipment-3"].unit.count = 180
    data.raw.technology["solar-panel-equipment-3"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"se-energy-science-pack-1", 1},
    }
    bobmods.lib.tech.remove_science_pack("fusion-reactor-equipment-se-2", "production-science-pack")
    bobmods.lib.tech.remove_science_pack("fusion-reactor-equipment-se-2", "se-material-science-pack-4")
    data.raw.technology["fusion-reactor-equipment-se-2"].unit.count = 500

    data.raw.technology["battery-mk2-equipment"].prerequisites = {
        "battery-equipment",
        "se-rocket-science-pack"
    }
    data.raw.technology["battery-mk2-equipment"].unit.count = 75
    data.raw.technology["battery-mk2-equipment"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1}
    }

    data.raw.technology["bob-battery-equipment-3"].prerequisites = {
        "battery-mk2-equipment",
        "se-processing-cryonite",
        "se-processing-vulcanite"
    }
    data.raw.technology["bob-battery-equipment-3"].unit.count = 100
    data.raw.technology["bob-battery-equipment-3"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
    }

    data.raw.technology["bob-battery-equipment-4"].prerequisites = {
        "bob-battery-equipment-3",
        "se-holmium-cable",
    }
    data.raw.technology["bob-battery-equipment-4"].unit.count = 125
    data.raw.technology["bob-battery-equipment-4"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
        {"se-energy-science-pack-1", 1}
    }

    data.raw.technology["bob-battery-equipment-5"].prerequisites = {
        "bob-battery-equipment-4",
        "se-astronomic-science-pack-1",
        "se-material-science-pack-1",
        "se-vitalic-acid"
    }
    data.raw.technology["bob-battery-equipment-5"].unit.count = 150
    data.raw.technology["bob-battery-equipment-5"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
        {"se-astronomic-science-pack-1", 1},
        {"se-biological-science-pack-1", 1},
        {"se-energy-science-pack-1", 1},
        {"se-material-science-pack-1", 1}
    }

    data.raw.technology["bob-battery-equipment-6"].prerequisites = {
        "bob-battery-equipment-5",
        "se-naquium-cube"
    }
    data.raw.technology["bob-battery-equipment-6"].unit.count = 80
    data.raw.technology["bob-battery-equipment-6"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
        {"se-astronomic-science-pack-4", 1},
        {"se-biological-science-pack-4", 1},
        {"se-energy-science-pack-4", 1},
        {"se-material-science-pack-4", 1},
        {"se-deep-space-science-pack-1", 1}
    }

    bobmods.lib.tech.remove_science_pack("personal-roboport-mk2-equipment", "se-material-science-pack-1")
    bobmods.lib.tech.remove_science_pack("personal-roboport-mk3-equipment", "se-material-science-pack-2")
    bobmods.lib.tech.remove_science_pack("personal-roboport-modular-equipment-2", "se-material-science-pack-1")
    bobmods.lib.tech.remove_science_pack("personal-roboport-modular-equipment-3", "se-material-science-pack-2")

end