if settings.startup["bobmods-power-poles"].value == true then
  data:extend({
    util.merge({
      data.raw["electric-pole"]["medium-electric-pole"],
      {
        name = "bob-medium-electric-pole-2",
        minable = { result = "bob-medium-electric-pole-2" },
        max_health = 150,
        maximum_wire_distance = 11,
        supply_area_distance = 4.5,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["medium-electric-pole"],
      {
        name = "bob-medium-electric-pole-3",
        minable = { result = "bob-medium-electric-pole-3" },
        max_health = 200,
        maximum_wire_distance = 13,
        supply_area_distance = 5.5,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["medium-electric-pole"],
      {
        name = "bob-medium-electric-pole-4",
        minable = { result = "bob-medium-electric-pole-4" },
        max_health = 250,
        maximum_wire_distance = 15,
        supply_area_distance = 6.5,
      },
    }),
  })

  data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group = "electric-pole"

  data:extend({
    util.merge({
      data.raw["electric-pole"]["big-electric-pole"],
      {
        name = "bob-big-electric-pole-2",
        minable = { result = "bob-big-electric-pole-2" },
        max_health = 225,
        maximum_wire_distance = 40,
        supply_area_distance = 2,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["big-electric-pole"],
      {
        name = "bob-big-electric-pole-3",
        minable = { result = "bob-big-electric-pole-3" },
        max_health = 300,
        maximum_wire_distance = 50,
        supply_area_distance = 2,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["big-electric-pole"],
      {
        name = "bob-big-electric-pole-4",
        minable = { result = "bob-big-electric-pole-4" },
        max_health = 375,
        maximum_wire_distance = 64,
        supply_area_distance = 2,
      },
    }),
  })

  data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"

  data:extend({
    util.merge({
      data.raw["electric-pole"]["substation"],
      {
        name = "bob-substation-2",
        minable = { result = "bob-substation-2" },
        max_health = 300,
        maximum_wire_distance = 24,
        supply_area_distance = 12,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["substation"],
      {
        name = "bob-substation-3",
        minable = { result = "bob-substation-3" },
        max_health = 400,
        maximum_wire_distance = 30,
        supply_area_distance = 15,
      },
    }),

    util.merge({
      data.raw["electric-pole"]["substation"],
      {
        name = "bob-substation-4",
        minable = { result = "bob-substation-4" },
        max_health = 500,
        maximum_wire_distance = 36,
        supply_area_distance = 18,
      },
    }),
  })
end
