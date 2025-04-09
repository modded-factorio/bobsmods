data.raw.pump.pump.pumping_speed = 10

local bobpump2 = table.deepcopy(data.raw.pump.pump)
bobpump2.name = "bob-pump-2"
bobpump2.minable.result = "bob-pump-2"
bobpump2.max_health = 220
bobpump2.next_upgrade = "bob-pump-3"
bobpump2.pumping_speed = 20
bobpump2.energy_usage = "50kW"
bobpump2.circuit_wire_max_distance = 10

local bobpump3 = table.deepcopy(data.raw.pump.pump)
bobpump3.name = "bob-pump-3"
bobpump3.minable.result = "bob-pump-3"
bobpump3.max_health = 260
bobpump3.next_upgrade = "bob-pump-4"
bobpump3.pumping_speed = 30
bobpump3.energy_usage = "65kW"
bobpump3.circuit_wire_max_distance = 12.5

local bobpump4 = table.deepcopy(data.raw.pump.pump)
bobpump4.name = "bob-pump-4"
bobpump4.minable.result = "bob-pump-4"
bobpump4.max_health = 300
bobpump4.next_upgrade = nil
bobpump4.pumping_speed = 40
bobpump4.energy_usage = "75kW"
bobpump4.circuit_wire_max_distance = 15

data:extend({ bobpump2, bobpump3, bobpump4 })
