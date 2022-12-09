data.raw.technology["automation-2"].prerequisites = { "automation", "electronics" }
bobmods.lib.tech.add_prerequisite("automation-2", "steel-processing")
bobmods.lib.tech.add_prerequisite("automation-2", "logistic-science-pack")

data.raw.technology["automation-3"].prerequisites = { "automation-2", "steel-processing", "advanced-electronics" }
bobmods.lib.tech.set_science_pack_count("automation-3", 60)
data.raw.technology["automation-3"].unit.ingredients =
  { { "automation-science-pack", 2 }, { "logistic-science-pack", 1 } }
data.raw.technology["automation-3"].unit.time = 30

bobmods.lib.item.set_subgroup("assembling-machine-1", "bob-assembly-machine")
bobmods.lib.item.set_subgroup("assembling-machine-2", "bob-assembly-machine")
bobmods.lib.item.set_subgroup("assembling-machine-3", "bob-assembly-machine")

data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "100kW"
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "135kW"
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "210kW"

data.raw.recipe["assembling-machine-3"].ingredients =
  { { "assembling-machine-2", 1 }, { "steel-plate", 9 }, { "advanced-circuit", 3 } }

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-3", { "steel-gear-wheel", 5 })
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-3", { "iron-gear-wheel", 5 })
end

data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots = 3
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "assembling-machine-4"

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("automation-4", "aluminium-processing")
else
  if data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "steel-plate", "brass-alloy")
    bobmods.lib.tech.add_prerequisite("automation-4", "zinc-processing")
  end
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-4", { "steel-bearing", 5 })
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-4", { "iron-gear-wheel", 3 })
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "iron-gear-wheel", "brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-4", "zinc-processing")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("automation-5", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("automation-5", "tungsten-processing")
  end
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-5", { "titanium-bearing", 5 })
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-5", { "iron-gear-wheel", 3 })
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-5", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("automation-5", "tungsten-processing")
  end
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("automation-6", "nitinol-processing")
else
  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("automation-6", "titanium-processing")
  end
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-plate", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-alloy-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-processing")
  end
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-6", { "nitinol-bearing", 5 })
else
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("assembling-machine-6", { "titanium-bearing", 5 })
  else
    bobmods.lib.recipe.add_ingredient("assembling-machine-6", { "iron-gear-wheel", 3 })
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-6", "nitinol-processing")
else
  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("automation-6", "titanium-processing")
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-processing")
    end
  end
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("automation-6", "advanced-electronics-3")
end

if settings.startup["bobmods-assembly-limits"].value == true then
  data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
  data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 4
  data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 6
  data.raw["assembling-machine"]["assembling-machine-4"].ingredient_count = 8
  data.raw["assembling-machine"]["assembling-machine-5"].ingredient_count = 10
  data.raw["assembling-machine"]["assembling-machine-6"].ingredient_count = 12
end

--        tint = {r = 0.7, g = 0.7, b = 0.1},
--        tint = {r = 0.7, g = 0.2, b = 0.1},
--        tint = {r = 0.1, g = 0.5, b = 0.7},
--        tint = {r = 0.7, g = 0.1, b = 0.7},
--        tint = {r = 0.1, g = 0.7, b = 0.1},

if settings.startup["bobmods-colorupdate"].value == true then
  data.raw.item["assembling-machine-2"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-2.png"
  data.raw.item["assembling-machine-2"].icon_size = 32
  data.raw.item["assembling-machine-2"].icon_mipmaps = nil
  data.raw["assembling-machine"]["assembling-machine-2"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-2.png"
  data.raw["assembling-machine"]["assembling-machine-2"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-2"].icon_mipmaps = nil
  table.insert(data.raw["assembling-machine"]["assembling-machine-2"].animation.layers, {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
    priority = "high",
    width = 142,
    height = 113,
    repeat_count = 32,
    shift = { 0.84, -0.09 },
    tint = { r = 0.7, g = 0.7, b = 0.1 },
  })
  data.raw.item["assembling-machine-3"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-3.png"
  data.raw.item["assembling-machine-3"].icon_size = 32
  data.raw.item["assembling-machine-3"].icon_mipmaps = nil
  data.raw["assembling-machine"]["assembling-machine-3"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-3.png"
  data.raw["assembling-machine"]["assembling-machine-3"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-3"].icon_mipmaps = nil
  table.insert(data.raw["assembling-machine"]["assembling-machine-3"].animation.layers, {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
    priority = "high",
    width = 142,
    height = 113,
    repeat_count = 32,
    shift = { 0.84, -0.09 },
    tint = { r = 0.7, g = 0.2, b = 0.1 },
  })

  data.raw.item["assembling-machine-4"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-4.png"
  data.raw.item["assembling-machine-4"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-4"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-4.png"
  data.raw["assembling-machine"]["assembling-machine-4"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-4"].animation = {
    layers = {
      {
        filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
        priority = "high",
        width = 108,
        height = 110,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(0, 4),
        hr_version = {
          filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2.png",
          priority = "high",
          width = 214,
          height = 218,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          scale = 0.5,
        },
      },
      {
        filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
        priority = "high",
        width = 142,
        height = 113,
        repeat_count = 32,
        shift = { 0.84, -0.09 },
        tint = { r = 0.1, g = 0.5, b = 0.7 },
      },
      {
        filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
        priority = "high",
        width = 98,
        height = 82,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(12, 5),
        hr_version = {
          filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2-shadow.png",
          priority = "high",
          width = 196,
          height = 163,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 4.75),
          scale = 0.5,
        },
      },
    },
  }

  data.raw.item["assembling-machine-5"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-5.png"
  data.raw.item["assembling-machine-5"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-5"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-5.png"
  data.raw["assembling-machine"]["assembling-machine-5"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-5"].animation.layers[2].tint = { r = 0.7, g = 0.1, b = 0.7 }
end
