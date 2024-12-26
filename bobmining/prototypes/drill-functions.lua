data.raw.item["electric-mining-drill"].order = "a[items]-b-0[electric-mining-drill]"

local function add_mining_drill_color_masks(object, root1, root2, direction, mask_color)
  if root2 == "working_visualisations" then
    local direction2 = direction .. "_animation"

    local setindex = 0
    if root1 == "graphics_set" then
      setindex = 7
    else
      setindex = 13
    end

    if not object[root1][root2][setindex][direction2].layers then
      local layerfixbase = util.copy(object[root1][root2][setindex][direction2])
      object[root1][root2][setindex][direction2] = {
        layers = { layerfixbase },
      }
    end
    if direction == "south" then
      local basegraphics = util.copy(object[root1][root2][setindex][direction2].layers[2])
      basegraphics.filename = "__bobmining__/graphics/entity/electric-mining-drill/electric-mining-drill-"
        .. direction
        .. "-front-mask.png"
      basegraphics.tint = mask_color
      if root1 == "wet_mining_graphics_set" then
        basegraphics.height = object.graphics_set.working_visualisations[7][direction2].layers[2].height
        basegraphics.width = object.graphics_set.working_visualisations[7][direction2].layers[2].width
        basegraphics.shift = object.graphics_set.working_visualisations[7][direction2].layers[2].shift
      end
      table.insert(object[root1][root2][setindex][direction2].layers, basegraphics)
    else
      local basegraphics = util.copy(object[root1][root2][setindex][direction2].layers[1])
      basegraphics.filename = "__bobmining__/graphics/entity/electric-mining-drill/electric-mining-drill-"
        .. direction
        .. "-front-mask.png"
      basegraphics.tint = mask_color
      if root1 == "wet_mining_graphics_set" then
        if object.graphics_set.working_visualisations[7][direction2].layers then
          basegraphics.height = object.graphics_set.working_visualisations[7][direction2].layers[1].height
          basegraphics.width = object.graphics_set.working_visualisations[7][direction2].layers[1].width
          basegraphics.shift = object.graphics_set.working_visualisations[7][direction2].layers[1].shift
        else
          basegraphics.height = object.graphics_set.working_visualisations[7][direction2].height
          basegraphics.width = object.graphics_set.working_visualisations[7][direction2].width
          basegraphics.shift = object.graphics_set.working_visualisations[7][direction2].shift
        end
      end
      table.insert(object[root1][root2][setindex][direction2].layers, basegraphics)
    end
  else
    local basegraphics = util.copy(object[root1][root2][direction].layers[1])
    basegraphics.tint = mask_color
    if root1 == "graphics_set" then
      basegraphics.filename = "__bobmining__/graphics/entity/electric-mining-drill/electric-mining-drill-"
        .. direction
        .. "-mask.png"
    else
      basegraphics.filename = "__bobmining__/graphics/entity/electric-mining-drill/electric-mining-drill-"
        .. direction
        .. "-wet-mask.png"
    end
    table.insert(object[root1][root2][direction].layers, 2, basegraphics)
  end
end

local firsttint = { r = 1, g = 0.7, b = 0.1, a = 1 }
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "animation",
  "east",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "animation",
  "north",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "animation",
  "west",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "animation",
  "east",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "animation",
  "north",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "animation",
  "west",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "working_visualisations",
  "east",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "working_visualisations",
  "south",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "graphics_set",
  "working_visualisations",
  "west",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "working_visualisations",
  "east",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "working_visualisations",
  "south",
  firsttint
)
add_mining_drill_color_masks(
  data.raw["mining-drill"]["electric-mining-drill"],
  "wet_mining_graphics_set",
  "working_visualisations",
  "west",
  firsttint
)

local function set_electric_mining_drill_animation_speed(object, animation_speed)
  if object.animation_speed then
    object.animation_speed = animation_speed
  end
  if object.shift_animation_waypoint_stop_duration then
    object.shift_animation_waypoint_stop_duration = 195 / animation_speed
  end
  if object.shift_animation_transition_duration then
    object.shift_animation_transition_duration = 30 / animation_speed
  end
  for index, value in pairs(object) do
    if type(value) == "table" then
      set_electric_mining_drill_animation_speed(value, animation_speed)
    end
  end
end

function bobmods.mining.electric_mining_drill(inputs)
  local mining_drill = util.copy(data.raw["mining-drill"]["electric-mining-drill"])
  mining_drill.name = inputs.name
  mining_drill.minable.result = inputs.name
  mining_drill.icon = inputs.icon
  mining_drill.max_health = inputs.max_health or 300

  mining_drill.energy_usage = inputs.energy_usage or "100kW"
  mining_drill.mining_speed = inputs.mining_speed or 0.5
  mining_drill.module_slots = inputs.module_slots or 3
  mining_drill.resource_searching_radius = inputs.resource_searching_radius or 2.49
  mining_drill.circuit_wire_max_distance = inputs.circuit_wire_max_distance or default_circuit_wire_max_distance
  mining_drill.next_upgrade = inputs.next_upgrade

  mining_drill.energy_source.emissions_per_minute = inputs.emissions_per_minute or { pollution = 10 }

  mining_drill.icons_positioning = {
    {
      inventory_index = defines.inventory.mining_drill_modules,
      shift = { 0, 0.7 },
    },
  }
  if inputs.module_slots == 5 or inputs.module_slots == 6 then
    mining_drill.icons_positioning[1].max_icons_per_row = 3
  end
  if inputs.module_slots > 4 then
    mining_drill.icons_positioning[1].multi_row_initial_height_modifier = -0.3
  end

  set_electric_mining_drill_animation_speed(mining_drill, inputs.animation_speed * 0.8)

  mining_drill.graphics_set.animation.east.layers[2].tint = inputs.tint
  mining_drill.graphics_set.animation.north.layers[2].tint = inputs.tint
  mining_drill.graphics_set.animation.west.layers[2].tint = inputs.tint
  mining_drill.graphics_set.working_visualisations[7].east_animation.layers[2].tint = inputs.tint
  mining_drill.graphics_set.working_visualisations[7].south_animation.layers[3].tint = inputs.tint
  mining_drill.graphics_set.working_visualisations[7].west_animation.layers[2].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.animation.east.layers[2].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.animation.north.layers[2].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.animation.west.layers[2].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.working_visualisations[13].east_animation.layers[2].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.working_visualisations[13].south_animation.layers[3].tint = inputs.tint
  mining_drill.wet_mining_graphics_set.working_visualisations[13].west_animation.layers[2].tint = inputs.tint

  if inputs.large_area == true then
    mining_drill.graphics_set.animation.east.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-east-mask.png"
    mining_drill.graphics_set.animation.north.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-north-mask.png"
    mining_drill.graphics_set.animation.west.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-west-mask.png"
    mining_drill.graphics_set.working_visualisations[7].east_animation.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-east-front-mask.png"
    mining_drill.graphics_set.working_visualisations[7].south_animation.layers[3].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-south-front-mask.png"
    mining_drill.graphics_set.working_visualisations[7].west_animation.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-west-front-mask.png"
    mining_drill.wet_mining_graphics_set.animation.east.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-east-wet-mask.png"
    mining_drill.wet_mining_graphics_set.animation.north.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-north-wet-mask.png"
    mining_drill.wet_mining_graphics_set.animation.west.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-west-wet-mask.png"
    mining_drill.wet_mining_graphics_set.working_visualisations[13].east_animation.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-east-front-mask.png"
    mining_drill.wet_mining_graphics_set.working_visualisations[13].south_animation.layers[3].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-south-front-mask.png"
    mining_drill.wet_mining_graphics_set.working_visualisations[13].west_animation.layers[2].filename =
      "__bobmining__/graphics/entity/electric-mining-drill/large-mining-drill-west-front-mask.png"
  end

  if mods["Krastorio2"] then
    mining_drill.fast_replaceable_group = "electric-mining-drill"
  end

  return mining_drill
end
