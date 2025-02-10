if not bobmods.lib.resource then
  bobmods.lib.resource = {}
end

bobmods.lib.resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")

local stone_driving_sound = {
  sound = {
    filename = "__base__/sound/driving/vehicle-surface-stone.ogg",
    volume = 0.8,
    advanced_volume_control = {
      fades = {
        fade_in = {
          curve_type = "cosine",
          from = { control = 0.5, volume_percentage = 0.0 },
          to = {
            1.5,
            100.0,
          },
        },
      },
    },
  },
  fade_ticks = 6,
}

local oil_driving_sound = {
  sound = {
    filename = "__base__/sound/driving/vehicle-surface-oil.ogg",
    volume = 0.8,
    advanced_volume_control = {
      fades = {
        fade_in = {
          curve_type = "cosine",
          from = { control = 0.5, volume_percentage = 0.0 },
          to = {
            1.5,
            100.0,
          },
        },
      },
    },
  },
  fade_ticks = 6,
}

function bobmods.lib.resource.create_autoplace(inputs)
  local autoplace = { control = inputs.control or inputs.name }
  local richness = inputs.richness or 1
  local size = inputs.size and inputs.size or 1.2
  autoplace.sharpness = 1
  autoplace.richness_multiplier = 1250 * richness
  autoplace.richness_base = 8 * richness
  autoplace.richness_multiplier_distance_bonus = 20
  autoplace.coverage = size / 600

  autoplace.peaks = {}
  if inputs.starting_area == 1 then
    autoplace.starting_area_size = 5500 * size / 600
    autoplace.starting_area_amount = 1300 * size
  end
  if inputs.starting_area then
    table.insert(
      autoplace.peaks,
      bobmods.lib.resource.autoplace_peak({
        starting_area = 1,
        noise = { layer = inputs.name, octaves = -0.85, persistance = 0.4 },
      })
    )
  end
  table.insert(
    autoplace.peaks,
    bobmods.lib.resource.autoplace_peak({
      starting_area = 0,
      noise = { layer = inputs.name, octaves = -0.85, persistance = 0.4 },
    })
  )
  return autoplace
end

function bobmods.lib.resource.autoplace_peak(inputs)
  local peak = {}
  if inputs.influence then
    influence = inputs.influence
  end
  if inputs.starting_area ~= nil then
    peak.starting_area_weight_optimal = inputs.starting_area
    peak.starting_area_weight_range = 0
    peak.starting_area_weight_max_range = 2
  end
  if inputs.noise then
    peak.noise_layer = inputs.noise.layer
    peak.noise_octaves_difference = inputs.noise.octaves
    peak.noise_persistence = inputs.noise.persistance
  end
  return peak
end

function bobmods.lib.resource.add_autoplace_peak(inputs)
  table.insert(data.raw.resource[inputs.resource].autoplace.peaks, bobmods.lib.resource.autoplace_peak(inputs))
end

function bobmods.lib.resource.add_result(resource, item_in)
  local item = bobmods.lib.item.result(item_in)
  if item and type(resource) == "string" and data.raw.resource[resource] and bobmods.lib.item.get_type(item.name) then
    bobmods.lib.minable_result_check(data.raw.resource[resource].minable)
    bobmods.lib.item.add_new(data.raw.resource[resource].minable.results, item)
  else
    log(debug.traceback())
    bobmods.lib.error.resource(resource)
  end
end

function bobmods.lib.resource.remove_result(resource, item)
  if type(resource) == "string" and type(item) == "string" and data.raw.resource[resource] then
    bobmods.lib.minable_result_check(data.raw.resource[resource].minable)
    bobmods.lib.item.remove(data.raw.resource[resource].minable.results, item)
  else
    log(debug.traceback())
    bobmods.lib.error.resource(resource)
    bobmods.lib.error.item(item)
  end
end

function bobmods.lib.resource.stage_counts(stages, mult)
  local stage_counts = {}
  local stage = stages
  while stage > 0 do
    stage = stage - 1
    table.insert(stage_counts, mult * (2 ^ stage))
  end
  return stage_counts
end

function bobmods.lib.resource.sprite(inputs)
  local filename
  local width = 128
  local height = 128
  local frame_count = 8
  local variation_count = 8
  local scale = 0.5
  if inputs.width then
    width = inputs.width
  end
  if inputs.height then
    height = inputs.height
  end
  if inputs.frame_count then
    frame_count = inputs.frame_count
  end
  if inputs.variation_count then
    variation_count = inputs.variation_count
  end
  if inputs.scale then
    scale = inputs.scale
  end
  if inputs.filename then
    filename = inputs.filename
  else
    filename = "__boblibrary__/graphics/entity/ores/ore-1.png"
    width = 128
    height = 128
    frame_count = 8
    variation_count = 8
    scale = 0.5
    if inputs.sheet == 2 then
      filename = "__boblibrary__/graphics/entity/ores/ore-2.png"
    end
    if inputs.sheet == 3 then
      filename = "__boblibrary__/graphics/entity/ores/ore-3.png"
    end
    if inputs.sheet == 4 then
      filename = "__boblibrary__/graphics/entity/ores/ore-4.png"
    end
    if inputs.sheet == 5 then
      filename = "__boblibrary__/graphics/entity/liquid.png"
      width = 75
      height = 61
      frame_count = 4
      variation_count = 1
    end
    if inputs.sheet == 6 then
      filename = "__boblibrary__/graphics/entity/ores/ore-5.png"
    end
  end

  local sheet = {
    filename = filename,
    priority = "extra-high",
    width = width,
    height = height,
    frame_count = frame_count,
    variation_count = variation_count,
    tint = inputs.tint,
    scale = scale,
  }

  return {
    sheet = sheet,
  }
end

function bobmods.lib.resource.effect(inputs)
  local filename
  local width = 128
  local height = 128
  local frame_count = 8
  local variation_count = 8
  local scale = 0.5
  if inputs.width then
    width = inputs.width
  end
  if inputs.height then
    height = inputs.height
  end
  if inputs.frame_count then
    frame_count = inputs.frame_count
  end
  if inputs.variation_count then
    variation_count = inputs.variation_count
  end
  if inputs.scale then
    scale = inputs.scale
  end
  if inputs.filename then
    filename = inputs.filename
  else
    filename = "__boblibrary__/graphics/entity/ores/ore-5-glow.png"
    width = 128
    height = 128
    frame_count = 8
    variation_count = 8
    scale = 0.5
  end

  local sheet = {
    filename = filename,
    priority = "extra-high",
    width = width,
    height = height,
    frame_count = frame_count,
    variation_count = variation_count,
    tint = inputs.tint,
    scale = scale,
    blend_mode = "additive",
    flags = { "light" },
  }

  return {
    sheet = sheet,
  }
end

function bobmods.lib.resource.create_item(inputs)
  data:extend({
    {
      type = "item",
      name = inputs.name,
      subgroup = inputs.subgroup or "raw-resource",
      order = "b-d[" .. inputs.name .. "]",
      stack_size = inputs.stack_size or 200,
      drop_sound = inputs.drop_sound,
      inventory_move_sound = inputs.inventory_move_sound,
      pick_sound = inputs.pick_sound,
    },
  })
  if inputs.icon then
    data.raw.item[inputs.name].icon = inputs.icon
    data.raw.item[inputs.name].icon_size = inputs.icon_size or 32
  elseif inputs.icons then
    data.raw.item[inputs.name].icon = inputs.icons
  else
    data.raw.item[inputs.name].icons = bobmods.lib.resource.create_icon(inputs)
  end

  if inputs.create_variations then
    local type = 1
    if inputs.sprite and inputs.sprite.sheet then
      if inputs.sprite.sheet >= 1 and inputs.sprite.sheet <= 4 then
        type = inputs.sprite.sheet
      elseif inputs.sprite.sheet == 6 then
        type = 5
      end
    end
    data.raw.item[inputs.name].pictures = {}
    for i = 16, 1, -1 do --do it 16 times
      table.insert(
        data.raw.item[inputs.name].pictures,
        bobmods.lib.resource.get_icon_variation_single(type, inputs.tint)
      )
    end
  end
end

function bobmods.lib.resource.create(inputs)
  local sprite = {}
  local minimum = 35
  local normal = 350
  if inputs.sprite then
    sprite = inputs.sprite
  end
  sprite.tint = inputs.tint
  if inputs.minimum then
    minimum = inputs.minimum
  elseif inputs.autoplace and inputs.autoplace.richness_base then
    minimum = inputs.autoplace.richness_base * 5
  end
  if inputs.normal then
    normal = inputs.normal
  elseif inputs.autoplace and inputs.autoplace.richness_base then
    normal = inputs.autoplace.richness_base * 50
  end

  if minimum < 1 then
    minimum = 1
  end
  if normal < 1 then
    normal = 1
  end

  local sheet = bobmods.lib.resource.sprite(sprite)
  data:extend({
    {
      type = "resource",
      name = inputs.name,
      flags = { "placeable-neutral" },
      category = inputs.category,
      subgroup = inputs.subgroup,
      order = "b-d-" .. inputs.name,
      minimum = minimum,
      normal = normal,
      highlight = inputs.highlight,
      resource_patch_search_radius = inputs.resource_patch_search_radius,
      infinite = inputs.infinite,
      collision_box = inputs.collision_box or { { -0.1, -0.1 }, { 0.1, 0.1 } },
      selection_box = inputs.selection_box or { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stages = sheet,
      stage_counts = inputs.stage_counts
        or bobmods.lib.resource.stage_counts(sheet.sheet.variation_count, inputs.stage_mult or 100),
      map_color = inputs.map_color,
      minable = {
        mining_particle = inputs.particle,
        mining_time = inputs.mining_time or 2,
      },
      factoriopedia_simulation = { init = make_resource(inputs.name) },
    },
  })
  if inputs.walking_sound == "oil" then
    data.raw.resource[inputs.name].walking_sound = sounds.oil
  else
    data.raw.resource[inputs.name].walking_sound = sounds.ore
  end
  if inputs.driving_sound == "oil" then
    data.raw.resource[inputs.name].driving_sound = oil_driving_sound
  else
    data.raw.resource[inputs.name].driving_sound = stone_driving_sound
  end
  if inputs.disable_map_grid then
    data.raw.resource[inputs.name].map_grid = false
  end
  if inputs.infinite then
    local infinite_depletion_amount = inputs.infinite_depletion_amount or 10
    data.raw.resource[inputs.name].infinite_depletion_amount = infinite_depletion_amount
  end
  if inputs.icon then
    data.raw.resource[inputs.name].icon = inputs.icon
    data.raw.resource[inputs.name].icon_size = inputs.icon_size or 32
  else
    data.raw.resource[inputs.name].icons = bobmods.lib.resource.create_icon(inputs)
  end

  if inputs.required_fluid then
    data.raw.resource[inputs.name].minable.required_fluid = inputs.required_fluid
    data.raw.resource[inputs.name].minable.fluid_amount = inputs.fluid_amount or 10
  end

  if inputs.effect then
    local effect = inputs.effect
    effect.tint = inputs.tint
    data.raw.resource[inputs.name].stages_effect = bobmods.lib.resource.effect(effect)
    data.raw.resource[inputs.name].effect_animation_period = inputs.effect.animation_period or 5
    data.raw.resource[inputs.name].effect_animation_period_deviation = inputs.effect.animation_period_deviation or 1
    data.raw.resource[inputs.name].effect_darkness_multiplier = inputs.effect.darkness_multiplier or 3.6
    data.raw.resource[inputs.name].min_effect_alpha = inputs.effect.min_alpha or 0.2
    data.raw.resource[inputs.name].max_effect_alpha = inputs.effect.max_alpha or 0.3
  end
end

function bobmods.lib.resource.create_icon(inputs)
  local icon = { icon = "__boblibrary__/graphics/icons/ore-1.png", tint = inputs.tint, icon_size = 32 }
  if inputs.sprite then
    if inputs.sprite.sheet == 2 then
      icon.icon = "__boblibrary__/graphics/icons/ore-2.png"
    end
    if inputs.sprite.sheet == 3 then
      icon.icon = "__boblibrary__/graphics/icons/ore-3.png"
    end
    if inputs.sprite.sheet == 4 then
      icon.icon = "__boblibrary__/graphics/icons/ore-4.png"
    end
    if inputs.sprite.sheet == 5 then
      icon.icon = "__boblibrary__/graphics/icons/liquid.png"
    end
    if inputs.sprite.sheet == 6 then
      icon.icon = "__boblibrary__/graphics/icons/ore-5.png"
    end
  end
  return { icon }
end

function bobmods.lib.resource.create_particle(inputs)
  data:extend({
    {
      type = "optimized-particle",
      name = inputs.name,
      life_time = 180,
      pictures = {
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-1.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 5,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-2.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 7,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-3.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 6,
          height = 7,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-4.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 9,
          height = 8,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-5.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 5,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-6.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 6,
          height = 4,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-7.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 7,
          height = 8,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-8.png",
          priority = "extra-high",
          tint = inputs.tint,
          width = 6,
          height = 5,
          frame_count = 1,
        },
      },
      shadows = {
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-1.png",
          priority = "extra-high",
          width = 5,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-2.png",
          priority = "extra-high",
          width = 7,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-3.png",
          priority = "extra-high",
          width = 6,
          height = 7,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-4.png",
          priority = "extra-high",
          width = 9,
          height = 8,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-5.png",
          priority = "extra-high",
          width = 5,
          height = 5,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-6.png",
          priority = "extra-high",
          width = 6,
          height = 4,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-7.png",
          priority = "extra-high",
          width = 7,
          height = 8,
          frame_count = 1,
        },
        {
          filename = "__boblibrary__/graphics/entity/ores/ore-particle-shadow-8.png",
          priority = "extra-high",
          width = 6,
          height = 5,
          frame_count = 1,
        },
      },
    },
  })
end

function bobmods.lib.resource.generate_data_stage(inputs)
  if inputs.name then
    if not inputs.particle then
      inputs.particle = inputs.name .. "-particle"
      bobmods.lib.resource.create_particle({ name = inputs.particle, tint = inputs.tint })
    end

    if inputs.item and inputs.item.create then
      if not inputs.items then
        inputs.items = {}
      end
      local item = {
        name = inputs.name,
        icon = inputs.icon,
        subgroup = inputs.item.subgroup,
        stack_size = inputs.item.stack_size,
        tint = inputs.tint,
        create_variations = inputs.item.create_variations,
      }
      if inputs.drop_sound then
        if inputs.drop_sound.filename and inputs.drop_sound.volume then
          item.drop_sound = inputs.drop_sound
        else
          log(inputs.name .. " has incorrectly formatted sound specifications")
        end
      else
        item.drop_sound = { filename = "__base__/sound/item/resource-inventory-move.ogg", volume = 0.8 }
      end
      if inputs.inventory_move_sound then
        if inputs.inventory_move_sound.filename and inputs.inventory_move_sound.volume then
          item.inventory_move_sound = inputs.inventory_move_sound
        else
          log(inputs.name .. " has incorrectly formatted sound specifications")
        end
      else
        item.inventory_move_sound = { filename = "__base__/sound/item/resource-inventory-move.ogg", volume = 0.8 }
      end
      if inputs.pick_sound then
        if inputs.pick_sound.filename and inputs.pick_sound.volume then
          item.pick_sound = inputs.pick_sound
        else
          log(inputs.name .. " has incorrectly formatted sound specifications")
        end
      else
        item.pick_sound = { filename = "__base__/sound/item/resource-inventory-pickup.ogg", volume = 0.6 }
      end
      if inputs.sprite then
        item.sprite = inputs.sprite
      end
      bobmods.lib.resource.create_item(item)
      table.insert(inputs.items, { name = inputs.name, amount = 1 })
    end

    if inputs.autoplace == nil then
      inputs.autoplace = bobmods.lib.resource.create_autoplace({
        control = inputs.name or inputs.name,
        name = inputs.name,
        starting_area = true,
        size = 1,
        richness = 1,
      })
    elseif type(inputs.autoplace) == "table" then
      if inputs.autoplace.create then
        local autoplace = bobmods.lib.resource.create_autoplace({
          control = inputs.autoplace.control or inputs.name,
          name = inputs.name,
          starting_area = inputs.autoplace.starting_area,
          size = inputs.autoplace.size,
          richness = inputs.autoplace.richness,
        })
        inputs.autoplace = autoplace
      end
    end

    bobmods.lib.resource.create(inputs)

    if inputs.items then
      for i, item in pairs(inputs.items) do
        bobmods.lib.resource.add_result(inputs.name, item)
      end
    end
  end
end

function bobmods.lib.resource.generate_autoplace_control(control)
  if not data.raw["autoplace-control"][control] then
    data:extend({
      {
        type = "autoplace-control",
        name = control,
        richness = true,
        order = "b-d-" .. control,
        category = "resource",
      },
    })
    data.raw["map-gen-presets"].default["rich-resources"].basic_settings.autoplace_controls[control] =
      { richness = "very-good" }
    data.raw["map-gen-presets"].default["rail-world"].basic_settings.autoplace_controls[control] =
      { frequency = 0.33333333333, size = 3 }
    data.raw["map-gen-presets"].default["ribbon-world"].basic_settings.autoplace_controls[control] =
      { frequency = 3, size = 0.5, richness = 2 }
  end
end

function bobmods.lib.resource.generate_updates_stage(inputs)
  if data.raw.resource[inputs.name] and inputs.autoplace then
    local control = inputs.name
    if type(inputs.autoplace) == "table" and inputs.autoplace.control then
      control = inputs.autoplace.control
      log(inputs.autoplace.control)
    end
    bobmods.lib.resource.generate_autoplace_control(control)
    data.raw["autoplace-control"][control].localised_name =
      { "", "[entity=" .. inputs.name .. "] ", { "entity-name." .. inputs.name } }

    if inputs.autoplace ~= "control-only" then
      data.raw.resource[inputs.name].autoplace = inputs.autoplace
    end

    if data.raw["autoplace-control"][inputs.name] then
      if inputs.planets and type(inputs.planets) == "table" then
        for i, world in pairs(inputs.planets) do
          if type(world) == "string" and data.raw.planet[world] then
            data.raw.planet[world].map_gen_settings.autoplace_controls[inputs.name] = {}
            data.raw.planet[world].map_gen_settings.autoplace_settings.entity.settings[inputs.name] = {}
            --log(inputs.name .. " added to planet " .. world)
          end
        end
      else
        log(inputs.name .. " default add to base planet")
        data.raw.planet.nauvis.map_gen_settings.autoplace_controls[inputs.name] = {}
        data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[inputs.name] = {}
      end
    else
      log(inputs.name .. " autoplace control not found")
    end
  end
end

function bobmods.lib.resource.generate(inputs)
  bobmods.lib.resource.generate_data_stage(inputs)
  bobmods.lib.resource.generate_updates_stage(inputs)
end
