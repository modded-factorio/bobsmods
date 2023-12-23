--Assembling machines
if data.raw.item["assembling-machine-6"] then
  data.raw.recipe["assembling-machine-4"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 8 },
      { type = "item", name = "se-iridium-plate", amount = 6 },
      { type = "item", name = "se-heavy-girder", amount = 4 },
      { type = "item", name = "inserter", amount = 2 },
      { type = "item", name = "assembling-machine-3", amount = 1 },
    },
    result = "assembling-machine-4",
  }
  data.raw.recipe["assembling-machine-4"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 8 },
      { type = "item", name = "advanced-circuit", amount = 16 },
      { type = "item", name = "se-iridium-plate", amount = 12 },
      { type = "item", name = "se-heavy-girder", amount = 8 },
      { type = "item", name = "inserter", amount = 2 },
      { type = "item", name = "assembling-machine-3", amount = 1 },
    },
    result = "assembling-machine-4",
  }

  data.raw.recipe["assembling-machine-5"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 4 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "refined-concrete", amount = 8 },
      { type = "item", name = "se-heavy-bearing", amount = 4 },
      { type = "item", name = "fast-inserter", amount = 2 },
      { type = "item", name = "assembling-machine-4", amount = 1 },
    },
    result = "assembling-machine-5",
  }
  data.raw.recipe["assembling-machine-5"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 8 },
      { type = "item", name = "processing-unit", amount = 6 },
      { type = "item", name = "refined-concrete", amount = 16 },
      { type = "item", name = "se-heavy-bearing", amount = 8 },
      { type = "item", name = "fast-inserter", amount = 2 },
      { type = "item", name = "assembling-machine-4", amount = 1 },
    },
    result = "assembling-machine-5",
  }

  data.raw.recipe["assembling-machine-6"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "se-heavy-assembly", amount = 4 },
      { type = "item", name = "se-quantum-processor", amount = 1 },
      { type = "item", name = "se-nanomaterial", amount = 2 },
      { type = "fluid", name = "lubricant", amount = 8 },
      { type = "item", name = "stack-inserter", amount = 1 },
      { type = "item", name = "assembling-machine-5", amount = 1 },
    },
    result = "assembling-machine-6",
  }
  data.raw.recipe["assembling-machine-6"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "se-heavy-assembly", amount = 8 },
      { type = "item", name = "se-quantum-processor", amount = 2 },
      { type = "item", name = "se-nanomaterial", amount = 4 },
      { type = "fluid", name = "lubricant", amount = 16 },
      { type = "item", name = "stack-inserter", amount = 1 },
      { type = "item", name = "assembling-machine-5", amount = 1 },
    },
    result = "assembling-machine-6",
  }
  data.raw.recipe["assembling-machine-6"].category = "crafting-with-fluid"

  data.raw.item["assembling-machine-4"].subgroup = "assembling"
  data.raw.item["assembling-machine-5"].subgroup = "assembling"
  data.raw.item["assembling-machine-6"].subgroup = "assembling"

  data.raw.technology["automation-4"].prerequisites = {
    "automation-3",
    "se-heavy-girder",
  }
  data.raw.technology["automation-4"].unit.count = 150
  data.raw.technology["automation-4"].unit.ingredients = {
    { "automation-science-pack", 2 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-1", 1 },
  }

  data.raw.technology["automation-5"].prerequisites = {
    "automation-4",
    "se-heavy-bearing",
    "fast-inserter",
  }
  data.raw.technology["automation-5"].unit.count = 240
  data.raw.technology["automation-5"].unit.ingredients = {
    { "automation-science-pack", 2 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-2", 1 },
  }
  if data.raw.technology["express-inserters"] then
    bobmods.lib.tech.replace_prerequisite("automation-5", "fast-inserter", "express-inserters")
    bobmods.lib.tech.replace_prerequisite("se-space-manufactory", "fast-inserter", "express-inserters")
  end

  data.raw.technology["automation-6"].prerequisites = {
    "automation-5",
    "se-nanomaterial",
    "se-heavy-assembly",
    "stack-inserter",
  }
  data.raw.technology["automation-6"].unit.count = 500
  data.raw.technology["automation-6"].unit.ingredients = {
    { "automation-science-pack", 2 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-4", 1 },
    { "se-energy-science-pack-4", 1 },
  }
  if data.raw.technology["stack-inserter-2"] then
    bobmods.lib.tech.replace_prerequisite("automation-6", "stack-inserter", "stack-inserter-2")
  end
end

--Electronics assembling machines
if data.raw.item["electronics-machine-1"] then
  data.raw.recipe["electronics-machine-1"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-motor", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
    },
    result = "electronics-machine-1",
  }
  data.raw.recipe["electronics-machine-1"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-motor", amount = 4 },
      { type = "item", name = "electronic-circuit", amount = 10 },
      { type = "item", name = "iron-plate", amount = 10 },
    },
    result = "electronics-machine-1",
  }

  data.raw.recipe["electronics-machine-2"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 3 },
      { type = "item", name = "processing-unit", amount = 8 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "electronics-machine-1", amount = 1 },
    },
    result = "electronics-machine-2",
  }
  data.raw.recipe["electronics-machine-2"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 6 },
      { type = "item", name = "processing-unit", amount = 16 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "electronics-machine-1", amount = 1 },
    },
    result = "electronics-machine-2",
  }

  data.raw.recipe["electronics-machine-3"].normal = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 5 },
      { type = "item", name = "se-quantum-processor", amount = 1 },
      { type = "item", name = "se-self-sealing-gel", amount = 4 },
      { type = "item", name = "se-heavy-girder", amount = 3 },
      { type = "item", name = "fast-inserter", amount = 1 },
      { type = "item", name = "electronics-machine-2", amount = 1 },
    },
    result = "electronics-machine-3",
  }
  data.raw.recipe["electronics-machine-3"].expensive = {
    enabled = false,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 10 },
      { type = "item", name = "se-quantum-processor", amount = 2 },
      { type = "item", name = "se-self-sealing-gel", amount = 8 },
      { type = "item", name = "se-heavy-girder", amount = 6 },
      { type = "item", name = "fast-inserter", amount = 1 },
      { type = "item", name = "electronics-machine-2", amount = 1 },
    },
    result = "electronics-machine-3",
  }

  data.raw["assembling-machine"]["electronics-machine-1"].crafting_categories =
    { "electronics", "electronics-machine", "electronics-with-fluid", "crafting-or-electromagnetics" }
  data.raw["assembling-machine"]["electronics-machine-2"].crafting_categories =
    { "electronics", "electronics-machine", "electronics-with-fluid", "crafting-or-electromagnetics" }
  data.raw["assembling-machine"]["electronics-machine-3"].crafting_categories =
    { "electronics", "electronics-machine", "electronics-with-fluid", "crafting-or-electromagnetics" }
  data.raw.recipe["se-processing-unit-holmium"].category = "electronics-with-fluid"

  data.raw["assembling-machine"]["electronics-machine-1"].fluid_boxes = {
    {
      base_area = 10,
      base_level = -1,
      pipe_connections = {
        {
          position = {
            0.5,
            -1.5,
          },
          type = "input",
        },
      },
      pipe_covers = {
        east = {
          layers = {
            {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 64,
              hr_version = {
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
              height = 64,
              hr_version = {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 64,
              hr_version = {
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
              height = 64,
              hr_version = {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 64,
              hr_version = {
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
              height = 64,
              hr_version = {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 64,
              hr_version = {
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
              height = 64,
              hr_version = {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                height = 128,
                priority = "extra-high",
                scale = 0.5,
                width = 128,
              },
              priority = "extra-high",
              width = 64,
            },
          },
        },
      },
      pipe_picture = {
        east = {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
          height = 38,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-E.png",
            height = 76,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              -0.765625,
              0.03125,
            },
            width = 42,
          },
          priority = "extra-high",
          shift = {
            -0.78125,
            0.03125,
          },
          width = 20,
        },
        north = {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-N.png",
            height = 38,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.0703125,
              0.421875,
            },
            width = 71,
          },
          priority = "extra-high",
          shift = {
            0.078125,
            0.4375,
          },
          width = 35,
        },
        south = {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
          height = 31,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-S.png",
            height = 61,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0,
              -0.9765625,
            },
            width = 88,
          },
          priority = "extra-high",
          shift = {
            0,
            -0.984375,
          },
          width = 44,
        },
        west = {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
          height = 37,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-W.png",
            height = 73,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.8046875,
              0.0390625,
            },
            width = 39,
          },
          priority = "extra-high",
          shift = {
            0.796875,
            0.046875,
          },
          width = 19,
        },
      },
      production_type = "input",
    },
    off_when_no_fluid_recipe = true,
  }

  bobmods.lib.tech.replace_prerequisite("electronics-machine-1", "automation", "electronics")
  data.raw.technology["electronics-machine-2"].prerequisites = {
    "electronics-machine-1",
    "production-science-pack",
  }
  data.raw.technology["electronics-machine-2"].unit.count = 100
  data.raw.technology["electronics-machine-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
  }
  data.raw.technology["electronics-machine-3"].prerequisites = {
    "electronics-machine-2",
    "se-heavy-girder",
    "se-quantum-processor",
    "se-self-sealing-gel",
  }
  data.raw.technology["electronics-machine-3"].unit.count = 500
  data.raw.technology["electronics-machine-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-biological-science-pack-4", 1 },
    { "se-material-science-pack-1", 1 },
  }

  data.raw["assembling-machine"]["electronics-machine-1"].module_specification.module_slots = 3
end

--Chemical plants
if data.raw.item["chemical-plant-4"] then
  data.raw.recipe["chemical-plant-2"].ingredients = {
    { type = "item", name = "advanced-circuit", amount = 5 },
    { type = "item", name = "se-heat-shielding", amount = 6 },
    { type = "fluid", name = "se-pyroflux", amount = 8 },
    { type = "item", name = "steel-plate", amount = 5 },
    { type = "item", name = "chemical-plant", amount = 1 },
  }
  data.raw.recipe["chemical-plant-2"].category = "crafting-with-fluid"

  data.raw.recipe["chemical-plant-3"].ingredients = {
    { type = "item", name = "processing-unit", amount = 10 },
    { type = "item", name = "se-bioscrubber", amount = 4 },
    { type = "item", name = "se-iridium-plate", amount = 5 },
    { type = "item", name = "chemical-plant-2", amount = 1 },
  }

  if bobmods.logistics then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "steel-plate", "steel-pipe")
    bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "se-iridium-plate", "iridium-pipe")
  end

  data.raw.recipe["chemical-plant-4"].ingredients = {
    { type = "item", name = "se-quantum-processor", amount = 1 },
    { type = "item", name = "se-lattice-pressure-vessel", amount = 1 },
    { type = "item", name = "se-self-sealing-gel", amount = 6 },
    { type = "item", name = "chemical-plant-3", amount = 1 },
  }

  data.raw.technology["chemical-plant-2"].prerequisites = {
    "se-processing-vulcanite",
  }
  data.raw.technology["chemical-plant-2"].unit.count = 100
  data.raw.technology["chemical-plant-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["chemical-plant-3"].prerequisites = {
    "chemical-plant-2",
    "se-bioscrubber",
  }
  data.raw.technology["chemical-plant-3"].unit.count = 200
  data.raw.technology["chemical-plant-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-biological-science-pack-1", 1 },
  }

  data.raw.technology["chemical-plant-4"].prerequisites = {
    "chemical-plant-3",
    "se-quantum-processor",
    "se-lattice-pressure-vessel",
  }
  data.raw.technology["chemical-plant-4"].unit.count = 500
  data.raw.technology["chemical-plant-4"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-biological-science-pack-4", 1 },
  }

  if data.raw.item["bob-pump-4"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant", { type = "item", name = "pump", amount = 2 })
    bobmods.lib.recipe.add_ingredient("chemical-plant-2", { type = "item", name = "bob-pump-2", amount = 2 })
    bobmods.lib.recipe.add_ingredient("chemical-plant-3", { type = "item", name = "bob-pump-3", amount = 2 })
    bobmods.lib.recipe.add_ingredient("chemical-plant-4", { type = "item", name = "bob-pump-4", amount = 2 })
    bobmods.lib.tech.add_prerequisite("chemical-plant-2", "bob-fluid-handling-2")
    bobmods.lib.tech.add_prerequisite("chemical-plant-3", "bob-fluid-handling-3")
    bobmods.lib.tech.add_prerequisite("chemical-plant-4", "bob-fluid-handling-4")
  end

  data.raw.item["chemical-plant"].order = "e[chemical-plant-1]"
end

--Centrifuges
if data.raw.item["centrifuge-3"] then
  bobmods.lib.recipe.replace_ingredient("centrifuge", "processing-unit", "advanced-circuit")

  data.raw.recipe["centrifuge-2"].ingredients = {
    { type = "item", name = "se-iridium-plate", amount = 50 },
    { type = "item", name = "se-heavy-bearing", amount = 20 },
    { type = "item", name = "se-holmium-solenoid", amount = 20 },
    { type = "item", name = "processing-unit", amount = 20 },
    { type = "item", name = "centrifuge", amount = 1 },
  }

  data.raw.recipe["centrifuge-3"].ingredients = {
    { type = "item", name = "se-nanomaterial", amount = 20 },
    { type = "item", name = "se-superconductive-cable", amount = 20 },
    { type = "item", name = "se-quantum-processor", amount = 5 },
    { type = "item", name = "centrifuge-2", amount = 1 },
  }

  bobmods.lib.tech.replace_prerequisite("se-centrifuge", "advanced-electronics-2", "se-rocket-science-pack")

  data.raw.technology["centrifuge-2"].prerequisites = {
    "se-centrifuge",
    "se-heavy-bearing",
    "se-holmium-solenoid",
  }
  data.raw.technology["centrifuge-2"].unit.count = 800
  data.raw.technology["centrifuge-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-energy-science-pack-2", 1 },
    { "se-material-science-pack-2", 1 },
  }

  data.raw.technology["centrifuge-3"].prerequisites = {
    "centrifuge-2",
    "se-nanomaterial",
    "se-superconductive-cable",
    "se-quantum-processor",
  }
  data.raw.technology["centrifuge-3"].unit.count = 2000
  data.raw.technology["centrifuge-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-biological-science-pack-4", 1 },
    { "se-energy-science-pack-4", 1 },
    { "se-material-science-pack-4", 1 },
  }

  data.raw.technology["centrifuge-2"].icon = "__space-exploration-graphics__/graphics/technology/centrifuge.png"
  data.raw.technology["centrifuge-2"].icon_size = 256
  data.raw.technology["centrifuge-3"].icon = "__space-exploration-graphics__/graphics/technology/centrifuge.png"
  data.raw.technology["centrifuge-3"].icon_size = 256

  data.raw.item["centrifuge-2"].icon = "__space-exploration-graphics__/graphics/icons/centrifuge.png"
  data.raw.item["centrifuge-3"].icon = "__space-exploration-graphics__/graphics/icons/centrifuge.png"
  data.raw.item["centrifuge-2"].subgroup = "radiation"
  data.raw.item["centrifuge-3"].subgroup = "radiation"
  data.raw.item["centrifuge-2"].order = "g[centrifuge-2]"
  data.raw.item["centrifuge-3"].order = "g[centrifuge-3]"
end

--Oil refineries
if data.raw.item["oil-refinery-4"] then
  data.raw.recipe["oil-refinery"].normal = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-motor", amount = 15 },
      { type = "item", name = "electronic-circuit", amount = 10 },
      { type = "item", name = "pipe", amount = 15 },
      { type = "item", name = "stone-brick", amount = 15 },
      { type = "item", name = "glass", amount = 15 },
      { type = "item", name = "steel-plate", amount = 15 },
    },
    result = "oil-refinery",
  }
  data.raw.recipe["oil-refinery"].expensive = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-motor", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 15 },
      { type = "item", name = "pipe", amount = 20 },
      { type = "item", name = "stone-brick", amount = 20 },
      { type = "item", name = "glass", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    result = "oil-refinery",
  }

  data.raw.recipe["oil-refinery-2"].normal = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 10 },
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "se-heat-shielding", amount = 10 },
      { type = "item", name = "concrete", amount = 20 },
      { type = "item", name = "oil-refinery", amount = 1 },
    },
    result = "oil-refinery-2",
  }
  data.raw.recipe["oil-refinery-2"].expensive = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 15 },
      { type = "item", name = "advanced-circuit", amount = 15 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "se-heat-shielding", amount = 15 },
      { type = "item", name = "concrete", amount = 30 },
      { type = "item", name = "oil-refinery", amount = 1 },
    },
    result = "oil-refinery-2",
  }

  data.raw.recipe["oil-refinery-3"].normal = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 10 },
      { type = "item", name = "processing-unit", amount = 8 },
      { type = "item", name = "se-heavy-girder", amount = 10 },
      { type = "item", name = "se-iridium-plate", amount = 15 },
      { type = "item", name = "oil-refinery-2", amount = 1 },
    },
    result = "oil-refinery-3",
  }
  data.raw.recipe["oil-refinery-3"].expensive = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 15 },
      { type = "item", name = "processing-unit", amount = 12 },
      { type = "item", name = "se-heavy-girder", amount = 15 },
      { type = "item", name = "se-iridium-plate", amount = 20 },
      { type = "item", name = "oil-refinery-2", amount = 1 },
    },
    result = "oil-refinery-3",
  }

  if bobmods.logistics then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "steel-plate", "steel-pipe")
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "se-iridium-plate", "iridium-pipe")
  end

  data.raw.recipe["oil-refinery-4"].normal = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 10 },
      { type = "item", name = "se-quantum-processor", amount = 2 },
      { type = "item", name = "se-lattice-pressure-vessel", amount = 3 },
      { type = "item", name = "se-heavy-composite", amount = 5 },
      { type = "item", name = "oil-refinery-3", amount = 1 },
    },
    result = "oil-refinery-4",
  }
  data.raw.recipe["oil-refinery-4"].expensive = {
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 15 },
      { type = "item", name = "se-quantum-processor", amount = 3 },
      { type = "item", name = "se-lattice-pressure-vessel", amount = 5 },
      { type = "item", name = "se-heavy-composite", amount = 8 },
      { type = "item", name = "oil-refinery-3", amount = 1 },
    },
    result = "oil-refinery-4",
  }

  data.raw.technology["oil-processing-2"].prerequisites = {
    "se-rocket-science-pack",
  }
  data.raw.technology["oil-processing-2"].unit.count = 100
  data.raw.technology["oil-processing-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
  }

  data.raw.technology["oil-processing-3"].prerequisites = {
    "oil-processing-2",
    "se-heavy-girder",
  }
  data.raw.technology["oil-processing-3"].unit.count = 200
  data.raw.technology["oil-processing-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-1", 1 },
  }

  data.raw.technology["oil-processing-4"].prerequisites = {
    "oil-processing-3",
    "se-lattice-pressure-vessel",
    "se-quantum-processor",
  }
  data.raw.technology["oil-processing-4"].unit.count = 375
  data.raw.technology["oil-processing-4"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-energy-science-pack-3", 1 },
    { "se-material-science-pack-3", 1 },
  }

  if data.raw.item["bob-pump-4"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery", { type = "item", name = "pump", amount = 4 })
    bobmods.lib.recipe.add_ingredient("oil-refinery-2", { type = "item", name = "bob-pump-2", amount = 4 })
    bobmods.lib.recipe.add_ingredient("oil-refinery-3", { type = "item", name = "bob-pump-3", amount = 4 })
    bobmods.lib.recipe.add_ingredient("oil-refinery-4", { type = "item", name = "bob-pump-4", amount = 4 })
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-fluid-handling-2")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "bob-fluid-handling-3")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-fluid-handling-4")
  end

  data.raw.item["oil-refinery"].order = "z-g[oil-refinery-1]"
  data.raw.item["oil-refinery-2"].order = "z-g[oil-refinery-2]"
  data.raw.item["oil-refinery-3"].order = "z-g[oil-refinery-3]"
  data.raw.item["oil-refinery-4"].order = "z-g[oil-refinery-4]"
end

--Electric furnaces
if data.raw.item["electric-furnace-3"] then
  data.raw.recipe["electric-furnace-2"].normal = {
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "se-iridium-plate", amount = 10 },
      { type = "item", name = "se-heavy-girder", amount = 5 },
      { type = "item", name = "electric-furnace", amount = 1 },
    },
    result = "electric-furnace-2",
  }
  data.raw.recipe["electric-furnace-2"].expensive = {
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "se-iridium-plate", amount = 20 },
      { type = "item", name = "se-heavy-girder", amount = 10 },
      { type = "item", name = "electric-furnace", amount = 1 },
    },
    result = "electric-furnace-2",
  }

  data.raw.recipe["electric-furnace-3"].normal = {
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "se-heavy-composite", amount = 10 },
      { type = "item", name = "se-hot-thermodynamics-data", amount = 1 },
      { type = "item", name = "se-experimental-alloys-data", amount = 1 },
      { type = "item", name = "electric-furnace-2", amount = 1 },
    },
    result = "electric-furnace-3",
  }
  data.raw.recipe["electric-furnace-3"].expensive = {
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "se-heavy-composite", amount = 20 },
      { type = "item", name = "se-hot-thermodynamics-data", amount = 1 },
      { type = "item", name = "se-experimental-alloys-data", amount = 1 },
      { type = "item", name = "electric-furnace-2", amount = 1 },
    },
    result = "electric-furnace-3",
  }

  if not mods.Krastorio2 then
    data.raw.furnace["electric-furnace-2"].energy_usage = "225kW"
  else
    data.raw["assembling-machine"]["electric-furnace-2"].energy_usage = "225kW"
  end

  data.raw.technology["advanced-material-processing-3"].prerequisites = {
    "advanced-material-processing-2",
    "se-heavy-girder",
  }
  data.raw.technology["advanced-material-processing-3"].unit.count = 200
  data.raw.technology["advanced-material-processing-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-1", 1 },
  }

  data.raw.technology["advanced-material-processing-4"].prerequisites = {
    "advanced-material-processing-3",
    "se-material-science-pack-4",
  }
  data.raw.technology["advanced-material-processing-4"].unit.count = 500
  data.raw.technology["advanced-material-processing-4"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-material-science-pack-4", 1 },
  }
end
