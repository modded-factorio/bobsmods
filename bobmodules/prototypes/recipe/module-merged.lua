if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then
  --[[Raw Speed Modules]]
  --
  data:extend({
    {
      type = "recipe",
      name = "raw-speed-module-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-processor", amount = 1 },
        { type = "item", name = "efficiency-processor", amount = 1 },
        { type = "item", name = "module-case", amount = 1 },
        { type = "item", name = "module-circuit-board", amount = 1 },
        { type = "item", name = "module-contact", amount = 4 },
      },
      energy_required = 15,
      results = { { type = "item", name = "raw-speed-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-1", amount = 1 },
        { type = "item", name = "speed-processor", amount = 2 },
        { type = "item", name = "efficiency-processor", amount = 2 },
        { type = "item", name = "module-contact", amount = 5 },
      },
      energy_required = 30,
      results = { { type = "item", name = "raw-speed-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-2", amount = 1 },
        { type = "item", name = "speed-processor-2", amount = 3 },
        { type = "item", name = "efficiency-processor-2", amount = 3 },
        { type = "item", name = "advanced-circuit", amount = 7 },
      },
      energy_required = 45,
      results = { { type = "item", name = "raw-speed-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-3", amount = 1 },
        { type = "item", name = "speed-processor-2", amount = 4 },
        { type = "item", name = "efficiency-processor-2", amount = 4 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 60,
      results = { { type = "item", name = "raw-speed-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-4", amount = 1 },
        { type = "item", name = "speed-processor-2", amount = 5 },
        { type = "item", name = "efficiency-processor-2", amount = 5 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 75,
      results = { { type = "item", name = "raw-speed-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-6",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-5", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 6 },
        { type = "item", name = "efficiency-processor-3", amount = 6 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 90,
      results = { { type = "item", name = "raw-speed-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-7",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-6", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 8 },
        { type = "item", name = "efficiency-processor-3", amount = 8 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 105,
      results = { { type = "item", name = "raw-speed-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-8",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-speed-module-7", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 10 },
        { type = "item", name = "efficiency-processor-3", amount = 10 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 8 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 120,
      results = { { type = "item", name = "raw-speed-module-8", amount = 1 } },
    },
  })

  --[[Raw Speed Modules combine]]
  --
  data:extend({
    {
      type = "recipe",
      name = "raw-speed-module-1-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module", amount = 1 },
        { type = "item", name = "efficiency-module", amount = 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-2-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-2", amount = 1 },
        { type = "item", name = "efficiency-module-2", amount = 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-3-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-3", amount = 1 },
        { type = "item", name = "efficiency-module-3", amount = 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-4-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-4", amount = 1 },
        { type = "item", name = "efficiency-module-4", amount = 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-5-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-5", amount = 1 },
        { type = "item", name = "efficiency-module-5", amount = 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-6-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-6", amount = 1 },
        { type = "item", name = "efficiency-module-6", amount = 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-7-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-7", amount = 1 },
        { type = "item", name = "efficiency-module-7", amount = 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-speed-module-8-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-module-8", amount = 1 },
        { type = "item", name = "efficiency-module-8", amount = 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-speed-module-8", amount = 1 } },
    },
  })
end

if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  --[[Green Modules]]
  --
  data:extend({
    {
      type = "recipe",
      name = "green-module-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-processor", amount = 1 },
        { type = "item", name = "pollution-clean-processor", amount = 1 },
        { type = "item", name = "module-case", amount = 1 },
        { type = "item", name = "module-circuit-board", amount = 1 },
        { type = "item", name = "module-contact", amount = 4 },
      },
      energy_required = 15,
      results = { { type = "item", name = "green-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-1", amount = 1 },
        { type = "item", name = "efficiency-processor", amount = 2 },
        { type = "item", name = "pollution-clean-processor", amount = 2 },
        { type = "item", name = "module-contact", amount = 5 },
      },
      energy_required = 30,
      results = { { type = "item", name = "green-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-2", amount = 1 },
        { type = "item", name = "efficiency-processor-2", amount = 3 },
        { type = "item", name = "pollution-clean-processor-2", amount = 3 },
        { type = "item", name = "advanced-circuit", amount = 7 },
      },
      energy_required = 45,
      results = { { type = "item", name = "green-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-3", amount = 1 },
        { type = "item", name = "efficiency-processor-2", amount = 4 },
        { type = "item", name = "pollution-clean-processor-2", amount = 4 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 60,
      results = { { type = "item", name = "green-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-4", amount = 1 },
        { type = "item", name = "efficiency-processor-2", amount = 5 },
        { type = "item", name = "pollution-clean-processor-2", amount = 5 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 75,
      results = { { type = "item", name = "green-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-6",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-5", amount = 1 },
        { type = "item", name = "efficiency-processor-3", amount = 6 },
        { type = "item", name = "pollution-clean-processor-3", amount = 6 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 90,
      results = { { type = "item", name = "green-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-7",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-6", amount = 1 },
        { type = "item", name = "efficiency-processor-3", amount = 8 },
        { type = "item", name = "pollution-clean-processor-3", amount = 8 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 105,
      results = { { type = "item", name = "green-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-8",
      enabled = false,
      ingredients = {
        { type = "item", name = "green-module-7", amount = 1 },
        { type = "item", name = "efficiency-processor-3", amount = 10 },
        { type = "item", name = "pollution-clean-processor-3", amount = 10 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 8 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 120,
      results = { { type = "item", name = "green-module-8", amount = 1 } },
    },
  })

  --[[Green Modules combine]]
  --
  data:extend({
    {
      type = "recipe",
      name = "green-module-1-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module", amount = 1 },
        { type = "item", name = "pollution-clean-module-1", amount = 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-2-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-2", amount = 1 },
        { type = "item", name = "pollution-clean-module-2", amount = 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-3-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-3", amount = 1 },
        { type = "item", name = "pollution-clean-module-3", amount = 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-4-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-4", amount = 1 },
        { type = "item", name = "pollution-clean-module-4", amount = 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-5-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-5", amount = 1 },
        { type = "item", name = "pollution-clean-module-5", amount = 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-6-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-6", amount = 1 },
        { type = "item", name = "pollution-clean-module-6", amount = 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-7-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-7", amount = 1 },
        { type = "item", name = "pollution-clean-module-7", amount = 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "green-module-8-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "efficiency-module-8", amount = 1 },
        { type = "item", name = "pollution-clean-module-8", amount = 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      results = { { type = "item", name = "green-module-8", amount = 1 } },
    },
  })
end

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then
  --[[Raw Productivity Modules]]
  --
  data:extend({
    {
      type = "recipe",
      name = "raw-productivity-module-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-processor", amount = 1 },
        { type = "item", name = "efficiency-processor", amount = 1 },
        { type = "item", name = "pollution-clean-processor", amount = 1 },
        { type = "item", name = "module-case", amount = 1 },
        { type = "item", name = "module-circuit-board", amount = 1 },
        { type = "item", name = "module-contact", amount = 4 },
      },
      energy_required = 15,
      results = { { type = "item", name = "raw-productivity-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-1", amount = 1 },
        { type = "item", name = "productivity-processor", amount = 2 },
        { type = "item", name = "efficiency-processor", amount = 2 },
        { type = "item", name = "pollution-clean-processor", amount = 2 },
        { type = "item", name = "module-contact", amount = 5 },
      },
      energy_required = 30,
      results = { { type = "item", name = "raw-productivity-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-2", amount = 1 },
        { type = "item", name = "productivity-processor-2", amount = 3 },
        { type = "item", name = "efficiency-processor-2", amount = 3 },
        { type = "item", name = "pollution-clean-processor-2", amount = 3 },
        { type = "item", name = "advanced-circuit", amount = 7 },
      },
      energy_required = 45,
      results = { { type = "item", name = "raw-productivity-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-3", amount = 1 },
        { type = "item", name = "productivity-processor-2", amount = 4 },
        { type = "item", name = "efficiency-processor-2", amount = 4 },
        { type = "item", name = "pollution-clean-processor-2", amount = 4 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 60,
      results = { { type = "item", name = "raw-productivity-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-4", amount = 1 },
        { type = "item", name = "productivity-processor-2", amount = 5 },
        { type = "item", name = "efficiency-processor-2", amount = 5 },
        { type = "item", name = "pollution-clean-processor-2", amount = 5 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 75,
      results = { { type = "item", name = "raw-productivity-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-6",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-5", amount = 1 },
        { type = "item", name = "productivity-processor-3", amount = 6 },
        { type = "item", name = "efficiency-processor-3", amount = 6 },
        { type = "item", name = "pollution-clean-processor-3", amount = 6 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 90,
      results = { { type = "item", name = "raw-productivity-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-7",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-6", amount = 1 },
        { type = "item", name = "productivity-processor-3", amount = 8 },
        { type = "item", name = "efficiency-processor-3", amount = 8 },
        { type = "item", name = "pollution-clean-processor-3", amount = 8 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 105,
      results = { { type = "item", name = "raw-productivity-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-8",
      enabled = false,
      ingredients = {
        { type = "item", name = "raw-productivity-module-7", amount = 1 },
        { type = "item", name = "productivity-processor-3", amount = 10 },
        { type = "item", name = "efficiency-processor-3", amount = 10 },
        { type = "item", name = "pollution-clean-processor-3", amount = 10 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 8 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 120,
      results = { { type = "item", name = "raw-productivity-module-8", amount = 1 } },
    },
  })

  --[[Raw Productivity Modules combine]]
  --
  data:extend({
    {
      type = "recipe",
      name = "raw-productivity-module-1-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module", amount = 1 },
        { type = "item", name = "efficiency-module", amount = 1 },
        { type = "item", name = "pollution-clean-module-1", amount = 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-2-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-2", amount = 1 },
        { type = "item", name = "efficiency-module-2", amount = 1 },
        { type = "item", name = "pollution-clean-module-2", amount = 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-3-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-3", amount = 1 },
        { type = "item", name = "efficiency-module-3", amount = 1 },
        { type = "item", name = "pollution-clean-module-3", amount = 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-4-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-4", amount = 1 },
        { type = "item", name = "efficiency-module-4", amount = 1 },
        { type = "item", name = "pollution-clean-module-4", amount = 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-5-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-5", amount = 1 },
        { type = "item", name = "efficiency-module-5", amount = 1 },
        { type = "item", name = "pollution-clean-module-5", amount = 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-5", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-6-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-6", amount = 1 },
        { type = "item", name = "efficiency-module-6", amount = 1 },
        { type = "item", name = "pollution-clean-module-6", amount = 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-6", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-7-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-7", amount = 1 },
        { type = "item", name = "efficiency-module-7", amount = 1 },
        { type = "item", name = "pollution-clean-module-7", amount = 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-7", amount = 1 } },
    },

    {
      type = "recipe",
      name = "raw-productivity-module-8-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { type = "item", name = "productivity-module-8", amount = 1 },
        { type = "item", name = "efficiency-module-8", amount = 1 },
        { type = "item", name = "pollution-clean-module-8", amount = 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      results = { { type = "item", name = "raw-productivity-module-8", amount = 1 } },
    },
  })
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "god-module-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "speed-processor", amount = 2 },
        { type = "item", name = "productivity-processor", amount = 2 },
        { type = "item", name = "efficiency-processor", amount = 6 },
        { type = "item", name = "pollution-clean-processor", amount = 4 },
        { type = "item", name = "module-case", amount = 1 },
        { type = "item", name = "module-circuit-board", amount = 1 },
        { type = "item", name = "module-contact", amount = 5 },
      },
      energy_required = 30,
      results = { { type = "item", name = "god-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "god-module-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "god-module-1", amount = 1 },
        { type = "item", name = "speed-processor-2", amount = 4 },
        { type = "item", name = "productivity-processor-2", amount = 4 },
        { type = "item", name = "efficiency-processor-2", amount = 12 },
        { type = "item", name = "pollution-clean-processor-2", amount = 8 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 7 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 60,
      results = { { type = "item", name = "god-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "god-module-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "god-module-2", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 6 },
        { type = "item", name = "productivity-processor-3", amount = 6 },
        { type = "item", name = "efficiency-processor-3", amount = 18 },
        { type = "item", name = "pollution-clean-processor-3", amount = 12 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 90,
      results = { { type = "item", name = "god-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "god-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "god-module-3", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 10 },
        { type = "item", name = "productivity-processor-3", amount = 10 },
        { type = "item", name = "efficiency-processor-3", amount = 30 },
        { type = "item", name = "pollution-clean-processor-3", amount = 20 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 8 },
        { type = "item", name = "processing-unit", amount = 8 },
      },
      energy_required = 120,
      results = { { type = "item", name = "god-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "god-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "god-module-4", amount = 1 },
        { type = "item", name = "speed-processor-3", amount = 15 },
        { type = "item", name = "productivity-processor-3", amount = 15 },
        { type = "item", name = "efficiency-processor-3", amount = 45 },
        { type = "item", name = "pollution-clean-processor-3", amount = 30 },
        { type = "item", name = "module-contact", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 10 },
        { type = "item", name = "processing-unit", amount = 10 },
      },
      energy_required = 150,
      results = { { type = "item", name = "god-module-5", amount = 1 } },
    },
  })
end
