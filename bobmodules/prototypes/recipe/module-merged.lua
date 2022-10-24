if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then
  --[[Raw Speed Modules]]
  --
  data:extend({
    {
      type = "recipe",
      name = "raw-speed-module-1",
      enabled = false,
      ingredients = {
        { "speed-processor", 1 },
        { "effectivity-processor", 1 },
        { "module-case", 1 },
        { "module-circuit-board", 1 },
        { "module-contact", 4 },
      },
      energy_required = 15,
      result = "raw-speed-module-1",
    },

    {
      type = "recipe",
      name = "raw-speed-module-2",
      enabled = false,
      ingredients = {
        { "raw-speed-module-1", 1 },
        { "speed-processor", 2 },
        { "effectivity-processor", 2 },
        { "module-contact", 5 },
      },
      energy_required = 30,
      result = "raw-speed-module-2",
    },

    {
      type = "recipe",
      name = "raw-speed-module-3",
      enabled = false,
      ingredients = {
        { "raw-speed-module-2", 1 },
        { "speed-processor-2", 3 },
        { "effectivity-processor-2", 3 },
        { "advanced-circuit", 7 },
      },
      energy_required = 45,
      result = "raw-speed-module-3",
    },

    {
      type = "recipe",
      name = "raw-speed-module-4",
      enabled = false,
      ingredients = {
        { "raw-speed-module-3", 1 },
        { "speed-processor-2", 4 },
        { "effectivity-processor-2", 4 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 60,
      result = "raw-speed-module-4",
    },

    {
      type = "recipe",
      name = "raw-speed-module-5",
      enabled = false,
      ingredients = {
        { "raw-speed-module-4", 1 },
        { "speed-processor-2", 5 },
        { "effectivity-processor-2", 5 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 75,
      result = "raw-speed-module-5",
    },

    {
      type = "recipe",
      name = "raw-speed-module-6",
      enabled = false,
      ingredients = {
        { "raw-speed-module-5", 1 },
        { "speed-processor-3", 6 },
        { "effectivity-processor-3", 6 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 90,
      result = "raw-speed-module-6",
    },

    {
      type = "recipe",
      name = "raw-speed-module-7",
      enabled = false,
      ingredients = {
        { "raw-speed-module-6", 1 },
        { "speed-processor-3", 8 },
        { "effectivity-processor-3", 8 },
        { "module-contact", 5 },
        { "processing-unit", 8 },
      },
      energy_required = 105,
      result = "raw-speed-module-7",
    },

    {
      type = "recipe",
      name = "raw-speed-module-8",
      enabled = false,
      ingredients = {
        { "raw-speed-module-7", 1 },
        { "speed-processor-3", 10 },
        { "effectivity-processor-3", 10 },
        { "module-contact", 5 },
        { "advanced-circuit", 8 },
        { "processing-unit", 8 },
      },
      energy_required = 120,
      result = "raw-speed-module-8",
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
        { "speed-module", 1 },
        { "effectivity-module", 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      result = "raw-speed-module-1",
    },

    {
      type = "recipe",
      name = "raw-speed-module-2-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-2", 1 },
        { "effectivity-module-2", 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      result = "raw-speed-module-2",
    },

    {
      type = "recipe",
      name = "raw-speed-module-3-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-3", 1 },
        { "effectivity-module-3", 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      result = "raw-speed-module-3",
    },

    {
      type = "recipe",
      name = "raw-speed-module-4-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-4", 1 },
        { "effectivity-module-4", 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      result = "raw-speed-module-4",
    },

    {
      type = "recipe",
      name = "raw-speed-module-5-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-5", 1 },
        { "effectivity-module-5", 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      result = "raw-speed-module-5",
    },

    {
      type = "recipe",
      name = "raw-speed-module-6-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-6", 1 },
        { "effectivity-module-6", 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      result = "raw-speed-module-6",
    },

    {
      type = "recipe",
      name = "raw-speed-module-7-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-7", 1 },
        { "effectivity-module-7", 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      result = "raw-speed-module-7",
    },

    {
      type = "recipe",
      name = "raw-speed-module-8-combine",
      subgroup = "raw-speed-module-combine",
      enabled = false,
      ingredients = {
        { "speed-module-8", 1 },
        { "effectivity-module-8", 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      result = "raw-speed-module-8",
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
        { "effectivity-processor", 1 },
        { "pollution-clean-processor", 1 },
        { "module-case", 1 },
        { "module-circuit-board", 1 },
        { "module-contact", 4 },
      },
      energy_required = 15,
      result = "green-module-1",
    },

    {
      type = "recipe",
      name = "green-module-2",
      enabled = false,
      ingredients = {
        { "green-module-1", 1 },
        { "effectivity-processor", 2 },
        { "pollution-clean-processor", 2 },
        { "module-contact", 5 },
      },
      energy_required = 30,
      result = "green-module-2",
    },

    {
      type = "recipe",
      name = "green-module-3",
      enabled = false,
      ingredients = {
        { "green-module-2", 1 },
        { "effectivity-processor-2", 3 },
        { "pollution-clean-processor-2", 3 },
        { "advanced-circuit", 7 },
      },
      energy_required = 45,
      result = "green-module-3",
    },

    {
      type = "recipe",
      name = "green-module-4",
      enabled = false,
      ingredients = {
        { "green-module-3", 1 },
        { "effectivity-processor-2", 4 },
        { "pollution-clean-processor-2", 4 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 60,
      result = "green-module-4",
    },

    {
      type = "recipe",
      name = "green-module-5",
      enabled = false,
      ingredients = {
        { "green-module-4", 1 },
        { "effectivity-processor-2", 5 },
        { "pollution-clean-processor-2", 5 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 75,
      result = "green-module-5",
    },

    {
      type = "recipe",
      name = "green-module-6",
      enabled = false,
      ingredients = {
        { "green-module-5", 1 },
        { "effectivity-processor-3", 6 },
        { "pollution-clean-processor-3", 6 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 90,
      result = "green-module-6",
    },

    {
      type = "recipe",
      name = "green-module-7",
      enabled = false,
      ingredients = {
        { "green-module-6", 1 },
        { "effectivity-processor-3", 8 },
        { "pollution-clean-processor-3", 8 },
        { "module-contact", 5 },
        { "processing-unit", 8 },
      },
      energy_required = 105,
      result = "green-module-7",
    },

    {
      type = "recipe",
      name = "green-module-8",
      enabled = false,
      ingredients = {
        { "green-module-7", 1 },
        { "effectivity-processor-3", 10 },
        { "pollution-clean-processor-3", 10 },
        { "module-contact", 5 },
        { "advanced-circuit", 8 },
        { "processing-unit", 8 },
      },
      energy_required = 120,
      result = "green-module-8",
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
        { "effectivity-module", 1 },
        { "pollution-clean-module-1", 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      result = "green-module-1",
    },

    {
      type = "recipe",
      name = "green-module-2-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-2", 1 },
        { "pollution-clean-module-2", 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      result = "green-module-2",
    },

    {
      type = "recipe",
      name = "green-module-3-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-3", 1 },
        { "pollution-clean-module-3", 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      result = "green-module-3",
    },

    {
      type = "recipe",
      name = "green-module-4-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-4", 1 },
        { "pollution-clean-module-4", 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      result = "green-module-4",
    },

    {
      type = "recipe",
      name = "green-module-5-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-5", 1 },
        { "pollution-clean-module-5", 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      result = "green-module-5",
    },

    {
      type = "recipe",
      name = "green-module-6-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-6", 1 },
        { "pollution-clean-module-6", 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      result = "green-module-6",
    },

    {
      type = "recipe",
      name = "green-module-7-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-7", 1 },
        { "pollution-clean-module-7", 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      result = "green-module-7",
    },

    {
      type = "recipe",
      name = "green-module-8-combine",
      subgroup = "green-module-combine",
      enabled = false,
      ingredients = {
        { "effectivity-module-8", 1 },
        { "pollution-clean-module-8", 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      result = "green-module-8",
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
        { "productivity-processor", 1 },
        { "effectivity-processor", 1 },
        { "pollution-clean-processor", 1 },
        { "module-case", 1 },
        { "module-circuit-board", 1 },
        { "module-contact", 4 },
      },
      energy_required = 15,
      result = "raw-productivity-module-1",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-2",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-1", 1 },
        { "productivity-processor", 2 },
        { "effectivity-processor", 2 },
        { "pollution-clean-processor", 2 },
        { "module-contact", 5 },
      },
      energy_required = 30,
      result = "raw-productivity-module-2",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-3",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-2", 1 },
        { "productivity-processor-2", 3 },
        { "effectivity-processor-2", 3 },
        { "pollution-clean-processor-2", 3 },
        { "advanced-circuit", 7 },
      },
      energy_required = 45,
      result = "raw-productivity-module-3",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-4",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-3", 1 },
        { "productivity-processor-2", 4 },
        { "effectivity-processor-2", 4 },
        { "pollution-clean-processor-2", 4 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 60,
      result = "raw-productivity-module-4",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-5",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-4", 1 },
        { "productivity-processor-2", 5 },
        { "effectivity-processor-2", 5 },
        { "pollution-clean-processor-2", 5 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 75,
      result = "raw-productivity-module-5",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-6",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-5", 1 },
        { "productivity-processor-3", 6 },
        { "effectivity-processor-3", 6 },
        { "pollution-clean-processor-3", 6 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 90,
      result = "raw-productivity-module-6",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-7",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-6", 1 },
        { "productivity-processor-3", 8 },
        { "effectivity-processor-3", 8 },
        { "pollution-clean-processor-3", 8 },
        { "module-contact", 5 },
        { "processing-unit", 8 },
      },
      energy_required = 105,
      result = "raw-productivity-module-7",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-8",
      enabled = false,
      ingredients = {
        { "raw-productivity-module-7", 1 },
        { "productivity-processor-3", 10 },
        { "effectivity-processor-3", 10 },
        { "pollution-clean-processor-3", 10 },
        { "module-contact", 5 },
        { "advanced-circuit", 8 },
        { "processing-unit", 8 },
      },
      energy_required = 120,
      result = "raw-productivity-module-8",
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
        { "productivity-module", 1 },
        { "effectivity-module", 1 },
        { "pollution-clean-module-1", 1 },
      },
      energy_required = 15,
      allow_as_intermediate = false,
      result = "raw-productivity-module-1",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-2-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-2", 1 },
        { "effectivity-module-2", 1 },
        { "pollution-clean-module-2", 1 },
      },
      energy_required = 30,
      allow_as_intermediate = false,
      result = "raw-productivity-module-2",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-3-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-3", 1 },
        { "effectivity-module-3", 1 },
        { "pollution-clean-module-3", 1 },
      },
      energy_required = 45,
      allow_as_intermediate = false,
      result = "raw-productivity-module-3",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-4-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-4", 1 },
        { "effectivity-module-4", 1 },
        { "pollution-clean-module-4", 1 },
      },
      energy_required = 60,
      allow_as_intermediate = false,
      result = "raw-productivity-module-4",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-5-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-5", 1 },
        { "effectivity-module-5", 1 },
        { "pollution-clean-module-5", 1 },
      },
      energy_required = 75,
      allow_as_intermediate = false,
      result = "raw-productivity-module-5",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-6-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-6", 1 },
        { "effectivity-module-6", 1 },
        { "pollution-clean-module-6", 1 },
      },
      energy_required = 90,
      allow_as_intermediate = false,
      result = "raw-productivity-module-6",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-7-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-7", 1 },
        { "effectivity-module-7", 1 },
        { "pollution-clean-module-7", 1 },
      },
      energy_required = 105,
      allow_as_intermediate = false,
      result = "raw-productivity-module-7",
    },

    {
      type = "recipe",
      name = "raw-productivity-module-8-combine",
      subgroup = "raw-productivity-module-combine",
      enabled = false,
      ingredients = {
        { "productivity-module-8", 1 },
        { "effectivity-module-8", 1 },
        { "pollution-clean-module-8", 1 },
      },
      energy_required = 120,
      allow_as_intermediate = false,
      result = "raw-productivity-module-8",
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
        { "speed-processor", 2 },
        { "productivity-processor", 2 },
        { "effectivity-processor", 6 },
        { "pollution-clean-processor", 4 },
        { "module-case", 1 },
        { "module-circuit-board", 1 },
        { "module-contact", 5 },
      },
      energy_required = 30,
      result = "god-module-1",
    },

    {
      type = "recipe",
      name = "god-module-2",
      enabled = false,
      ingredients = {
        { "god-module-1", 1 },
        { "speed-processor-2", 4 },
        { "productivity-processor-2", 4 },
        { "effectivity-processor-2", 12 },
        { "pollution-clean-processor-2", 8 },
        { "module-contact", 5 },
        { "advanced-circuit", 7 },
        { "processing-unit", 7 },
      },
      energy_required = 60,
      result = "god-module-2",
    },

    {
      type = "recipe",
      name = "god-module-3",
      enabled = false,
      ingredients = {
        { "god-module-2", 1 },
        { "speed-processor-3", 6 },
        { "productivity-processor-3", 6 },
        { "effectivity-processor-3", 18 },
        { "pollution-clean-processor-3", 12 },
        { "module-contact", 5 },
        { "processing-unit", 7 },
      },
      energy_required = 90,
      result = "god-module-3",
    },

    {
      type = "recipe",
      name = "god-module-4",
      enabled = false,
      ingredients = {
        { "god-module-3", 1 },
        { "speed-processor-3", 10 },
        { "productivity-processor-3", 10 },
        { "effectivity-processor-3", 30 },
        { "pollution-clean-processor-3", 20 },
        { "module-contact", 5 },
        { "advanced-circuit", 8 },
        { "processing-unit", 8 },
      },
      energy_required = 120,
      result = "god-module-4",
    },

    {
      type = "recipe",
      name = "god-module-5",
      enabled = false,
      ingredients = {
        { "god-module-4", 1 },
        { "speed-processor-3", 15 },
        { "productivity-processor-3", 15 },
        { "effectivity-processor-3", 45 },
        { "pollution-clean-processor-3", 30 },
        { "module-contact", 5 },
        { "advanced-circuit", 10 },
        { "processing-unit", 10 },
      },
      energy_required = 150,
      result = "god-module-5",
    },
  })
end
