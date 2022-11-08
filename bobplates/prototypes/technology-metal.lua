if not data.raw.technology["nickel-processing"] then
  data:extend({
    {
      type = "technology",
      name = "nickel-processing",
      prerequisites = {
        "electrolysis-1",
      },
      effects = {},
    },
  })
end

data.raw.technology["nickel-processing"].icon = "__bobplates__/graphics/icons/technology/nickel-processing.png"
data.raw.technology["nickel-processing"].icon_size = 128
data.raw.technology["nickel-processing"].order = "c-b-c1"
data.raw.technology["nickel-processing"].unit = {
  count = 40,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
  },
}

if not data.raw.technology["zinc-processing"] then
  data:extend({
    {
      type = "technology",
      name = "zinc-processing",
      prerequisites = {
        "electrolysis-1",
        "sulfur-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["zinc-processing"].icon = "__bobplates__/graphics/icons/technology/zinc-processing.png"
data.raw.technology["zinc-processing"].icon_size = 128
data.raw.technology["zinc-processing"].order = "c-b-c2"
data.raw.technology["zinc-processing"].unit = {
  count = 40,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["lead-processing"] then
  data:extend({
    {
      type = "technology",
      name = "lead-processing",
      prerequisites = {
        "electrolysis-1",
        "chemical-processing-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["lead-processing"].icon = "__bobplates__/graphics/icons/technology/lead-processing.png"
data.raw.technology["lead-processing"].icon_size = 128
data.raw.technology["lead-processing"].order = "c-b-c3"
data.raw.technology["lead-processing"].unit = {
  count = 70,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["aluminium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "aluminium-processing",
      prerequisites = {
        "electrolysis-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["aluminium-processing"].icon = "__bobplates__/graphics/icons/technology/aluminium-processing.png"
data.raw.technology["aluminium-processing"].icon_size = 128
data.raw.technology["aluminium-processing"].order = "c-b-d2"
data.raw.technology["aluminium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["gold-processing"] then
  data:extend({
    {
      type = "technology",
      name = "gold-processing",
      prerequisites = {
        "electrolysis-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["gold-processing"].icon = "__bobplates__/graphics/icons/technology/gold-processing.png"
data.raw.technology["gold-processing"].icon_size = 128
data.raw.technology["gold-processing"].order = "c-b-d3"
data.raw.technology["gold-processing"].unit = {
  count = 70,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["silicon-processing"] then
  data:extend({
    {
      type = "technology",
      name = "silicon-processing",
      prerequisites = {
        "chemical-processing-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["silicon-processing"].icon = "__bobplates__/graphics/icons/plate/silicon-plate.png"
data.raw.technology["silicon-processing"].icon_size = 32
data.raw.technology["silicon-processing"].order = "c-b-d1"
data.raw.technology["silicon-processing"].unit = {
  count = 50,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["titanium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "titanium-processing",
      prerequisites = {
        "chemical-processing-2",
        "chemical-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["titanium-processing"].icon = "__bobplates__/graphics/icons/technology/titanium-processing.png"
data.raw.technology["titanium-processing"].icon_size = 64
data.raw.technology["titanium-processing"].order = "c-b-e1"
data.raw.technology["titanium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
  },
}

if not data.raw.technology["tungsten-processing"] then
  data:extend({
    {
      type = "technology",
      name = "tungsten-processing",
      prerequisites = {
        "chemical-processing-2",
        "chemical-science-pack",
        "nickel-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["tungsten-processing"].icon = "__bobplates__/graphics/icons/technology/tungsten-processing.png"
data.raw.technology["tungsten-processing"].icon_size = 64
data.raw.technology["tungsten-processing"].order = "c-b-e2"
data.raw.technology["tungsten-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
  },
}

if not data.raw.technology["invar-processing"] then
  data:extend({
    {
      type = "technology",
      name = "invar-processing",
      prerequisites = {
        "alloy-processing",
        "nickel-processing",
        "logistic-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["invar-processing"].icon = "__bobplates__/graphics/icons/technology/invar-processing.png"
data.raw.technology["invar-processing"].icon_size = 128
data.raw.technology["invar-processing"].order = "c-b-g"
data.raw.technology["invar-processing"].unit = {
  count = 50,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["nitinol-processing"] then
  data:extend({
    {
      type = "technology",
      name = "nitinol-processing",
      prerequisites = {
        "alloy-processing",
        "nickel-processing",
        "titanium-processing",
        "production-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["nitinol-processing"].icon = "__bobplates__/graphics/icons/plate/nitinol-plate.png"
data.raw.technology["nitinol-processing"].icon_size = 32
data.raw.technology["nitinol-processing"].order = "c-b-h"
data.raw.technology["nitinol-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "production-science-pack", 1 },
  },
}

if not data.raw.technology["tungsten-alloy-processing"] then
  data:extend({
    {
      type = "technology",
      name = "tungsten-alloy-processing",
      prerequisites = {
        "alloy-processing",
        "tungsten-processing",
        "production-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["tungsten-alloy-processing"].icon = "__bobplates__/graphics/icons/plate/copper-tungsten-plate.png"
data.raw.technology["tungsten-alloy-processing"].icon_size = 32
data.raw.technology["tungsten-alloy-processing"].order = "c-b-e3"
data.raw.technology["tungsten-alloy-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "production-science-pack", 1 },
  },
}

if not data.raw.technology["cobalt-processing"] then
  data:extend({
    {
      type = "technology",
      name = "cobalt-processing",
      prerequisites = {
        "chemical-processing-1",
        "electrolysis-1",
        "sulfur-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["cobalt-processing"].icon = "__bobplates__/graphics/icons/technology/cobalt-processing.png"
data.raw.technology["cobalt-processing"].icon_size = 128
data.raw.technology["cobalt-processing"].order = "c-b-d1"
data.raw.technology["cobalt-processing"].unit = {
  count = 80,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["lithium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "lithium-processing",
      prerequisites = {
        "chemical-processing-1",
        "electrolysis-1",
        "logistic-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["lithium-processing"].icon = "__bobplates__/graphics/icons/technology/lithium-processing.png"
data.raw.technology["lithium-processing"].icon_size = 128
data.raw.technology["lithium-processing"].order = "c-b-d1"
data.raw.technology["lithium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}
