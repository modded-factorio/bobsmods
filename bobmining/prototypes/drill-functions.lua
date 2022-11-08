data.raw.item["electric-mining-drill"].order = "a[items]-b-0[electric-mining-drill]"

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
  mining_drill.max_health = inputs.max_health or 300

  mining_drill.energy_usage = inputs.energy_usage or "100kW"
  mining_drill.mining_speed = inputs.mining_speed or 0.5
  mining_drill.module_specification = { module_slots = inputs.module_slots or 3 }
  mining_drill.resource_searching_radius = inputs.resource_searching_radius or 2.49
  mining_drill.circuit_wire_max_distance = inputs.circuit_wire_max_distance or default_circuit_wire_max_distance

  mining_drill.energy_source.emissions_per_minute = inputs.emissions_per_minute or 10
  mining_drill.storage_slots = 6

  set_electric_mining_drill_animation_speed(mining_drill, inputs.animation_speed * 0.8)

  if mods["Krastorio2"] then
    mining_drill.fast_replaceable_group = "electric-mining-drill"
  end

  return mining_drill
end
