if settings.startup["bobmods-logistics-trains"].value == true then
  local function rolling_stock_resistances()
    return {
      {
        type = "fire",
        decrease = 15,
        percent = 50,
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30,
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30,
      },
      {
        type = "acid",
        decrease = 5,
        percent = 20,
      },

      {
        type = "laser",
        decrease = 10,
        percent = 30,
      },
      {
        type = "electric",
        decrease = 12,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 15,
        percent = 60,
      },
    }
  end

  local function rolling_stock_armor_resistances()
    return {
      {
        type = "fire",
        decrease = 25,
        percent = 75,
      },
      {
        type = "physical",
        decrease = 25,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 75,
        percent = 90,
      },
      {
        type = "explosion",
        decrease = 25,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 20,
        percent = 30,
      },
      {
        type = "laser",
        decrease = 10,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 12,
        percent = 75,
      },
      {
        type = "poison",
        decrease = 15,
        percent = 90,
      },
    }
  end

  data.raw.locomotive["locomotive"].resistances = rolling_stock_resistances()

  data:extend({
    util.merge({
      data.raw.locomotive.locomotive,
      {
        name = "bob-locomotive-2",
        minable = { result = "bob-locomotive-2" },
        max_health = 1350,
        weight = 2000, --original is 2000
        max_speed = 1.7,
        max_power = "900kW",
        reversing_power_modifier = 0.8,
        braking_force = 15,
        friction_force = 0.375,
        air_resistance = 0.005625, -- this is a percentage of current speed that will be subtracted
        resistances = rolling_stock_resistances(),
        energy_source = {
          effectivity = 1.2,
          fuel_inventory_size = 4,
        },
        color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw.locomotive.locomotive,
      {
        name = "bob-locomotive-3",
        minable = { result = "bob-locomotive-3" },
        max_health = 1700,
        weight = 2000, --original is 2000
        max_speed = 2,
        max_power = "1200kW",
        reversing_power_modifier = 1,
        braking_force = 20,
        friction_force = 0.25, --0.0005,
        air_resistance = 0.004, --0.001, -- this is a percentage of current speed that will be subtracted
        resistances = rolling_stock_resistances(),
        energy_source = {
          effectivity = 1.4,
          fuel_inventory_size = 5,
        },
        color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
      },
    }),

    util.merge({
      data.raw.locomotive.locomotive,
      {
        name = "bob-armoured-locomotive",
        minable = { result = "bob-armoured-locomotive" },
        max_health = 5000,
        weight = 4000,
        max_speed = 1,
        max_power = "750kW",
        reversing_power_modifier = 0.75,
        braking_force = 10,
        friction_force = 0.5,
        air_resistance = 0.0075,
        resistances = rolling_stock_armor_resistances(),
        energy_source = {
          effectivity = 1,
          fuel_inventory_size = 3,
        },
        color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw.locomotive.locomotive,
      {
        name = "bob-armoured-locomotive-2",
        minable = { result = "bob-armoured-locomotive-2" },
        max_health = 7500,
        weight = 4000,
        max_speed = 1.5,
        max_power = "1000kW",
        reversing_power_modifier = 0.85,
        braking_force = 15,
        friction_force = 0.5,
        air_resistance = 0.006,
        resistances = rolling_stock_armor_resistances(),
        energy_source = {
          effectivity = 1.2,
          fuel_inventory_size = 4,
        },
        color = { r = 0.92, g = 0.07, b = 0, a = 0.5 },
      },
    }),
  })

  data.raw["cargo-wagon"]["cargo-wagon"].resistances = rolling_stock_resistances()

  data:extend({
    util.merge({
      data.raw["cargo-wagon"]["cargo-wagon"],
      {
        name = "bob-cargo-wagon-2",
        minable = { result = "bob-cargo-wagon-2" },
        inventory_size = 60,
        max_health = 800,
        weight = 1500, --original is 1000
        max_speed = 2.5, --1.5
        braking_force = 4, --3
        friction_force = 0.375, --0.5
        air_resistance = 0.0075, --0.01
        resistances = rolling_stock_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw["cargo-wagon"]["cargo-wagon"],
      {
        name = "bob-cargo-wagon-3",
        minable = { result = "bob-cargo-wagon-3" },
        inventory_size = 80,
        max_health = 1000,
        weight = 2000,
        max_speed = 3.5,
        braking_force = 5,
        friction_force = 0.25,
        air_resistance = 0.005,
        resistances = rolling_stock_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),

    util.merge({
      data.raw["cargo-wagon"]["cargo-wagon"],
      {
        name = "bob-armoured-cargo-wagon",
        minable = { result = "bob-armoured-cargo-wagon" },
        inventory_size = 40,
        max_health = 3000,
        weight = 2000,
        max_speed = 1.2,
        braking_force = 3,
        friction_force = 0.5,
        air_resistance = 0.005,
        resistances = rolling_stock_armor_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw["cargo-wagon"]["cargo-wagon"],
      {
        name = "bob-armoured-cargo-wagon-2",
        minable = { result = "bob-armoured-cargo-wagon-2" },
        inventory_size = 60,
        max_health = 4500,
        weight = 2500,
        max_speed = 1.8,
        braking_force = 4.5,
        friction_force = 0.5,
        air_resistance = 0.005,
        resistances = rolling_stock_armor_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
  })

  data.raw["fluid-wagon"]["fluid-wagon"].resistances = rolling_stock_resistances()

  local fluidwagonbase = settings.startup["bobmods-logistics-fluidwagonbase"].value * 1000
  data.raw["fluid-wagon"]["fluid-wagon"].capacity = fluidwagonbase

  data:extend({
    util.merge({
      data.raw["fluid-wagon"]["fluid-wagon"],
      {
        name = "bob-fluid-wagon-2",
        minable = { result = "bob-fluid-wagon-2" },
        capacity = fluidwagonbase * 1.5,
        max_health = 800,
        weight = 1500, --original is 1000
        max_speed = 2.5, --1.5
        braking_force = 4, --3
        friction_force = 0.375, --0.5
        air_resistance = 0.0075, --0.01
        resistances = rolling_stock_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw["fluid-wagon"]["fluid-wagon"],
      {
        name = "bob-fluid-wagon-3",
        minable = { result = "bob-fluid-wagon-3" },
        capacity = fluidwagonbase * 2,
        max_health = 1000,
        weight = 2000,
        max_speed = 3.5,
        braking_force = 5,
        friction_force = 0.25,
        air_resistance = 0.005,
        resistances = rolling_stock_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),

    util.merge({
      data.raw["fluid-wagon"]["fluid-wagon"],
      {
        name = "bob-armoured-fluid-wagon",
        minable = { result = "bob-armoured-fluid-wagon" },
        capacity = fluidwagonbase,
        max_health = 3000,
        weight = 2000,
        max_speed = 1.2,
        braking_force = 3,
        friction_force = 0.5,
        air_resistance = 0.01,
        resistances = rolling_stock_armor_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
    util.merge({
      data.raw["fluid-wagon"]["fluid-wagon"],
      {
        name = "bob-armoured-fluid-wagon-2",
        minable = { result = "bob-armoured-fluid-wagon-2" },
        capacity = fluidwagonbase * 1.5,
        max_health = 4500,
        weight = 2500,
        max_speed = 1.8,
        braking_force = 4.5,
        friction_force = 0.5,
        air_resistance = 0.01,
        resistances = rolling_stock_armor_resistances(),
        color = { r = 0.43, g = 0.23, b = 0, a = 0.5 },
      },
    }),
  })

  if feature_flags["quality"] then
    for _, wagon in pairs({
      "cargo-wagon",
      "bob-cargo-wagon-2",
      "bob-cargo-wagon-3",
      "bob-armoured-cargo-wagon",
      "bob-armoured-cargo-wagon-2",
    }) do
      data.raw["cargo-wagon"][wagon].quality_affects_inventory_size = true
    end
    for _, wagon in pairs({
      "fluid-wagon",
      "bob-fluid-wagon-2",
      "bob-fluid-wagon-3",
      "bob-armoured-fluid-wagon",
      "bob-armoured-fluid-wagon-2",
    }) do
      data.raw["fluid-wagon"][wagon].quality_affects_capacity = true
    end
  end
end
