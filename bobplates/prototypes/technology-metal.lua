if not data.raw.technology["bob-nickel-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-nickel-processing",
      prerequisites = {
        "bob-electrolysis-1",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-nickel-processing"].icon = "__bobplates__/graphics/icons/technology/nickel-processing.png"
data.raw.technology["bob-nickel-processing"].icon_size = 128
data.raw.technology["bob-nickel-processing"].order = "c-b-c1"
data.raw.technology["bob-nickel-processing"].unit = {
  count = 40,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
  },
}

if not data.raw.technology["bob-zinc-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-zinc-processing",
      prerequisites = {
        "bob-electrolysis-1",
        "sulfur-processing",
        "bob-alloy-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-zinc-processing"].icon = "__bobplates__/graphics/icons/technology/zinc-processing.png"
data.raw.technology["bob-zinc-processing"].icon_size = 128
data.raw.technology["bob-zinc-processing"].order = "c-b-c2"
data.raw.technology["bob-zinc-processing"].unit = {
  count = 40,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-lead-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-lead-processing",
      prerequisites = {
        "bob-electrolysis-1",
        "bob-chemical-processing-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-lead-processing"].icon = "__bobplates__/graphics/icons/technology/lead-processing.png"
data.raw.technology["bob-lead-processing"].icon_size = 128
data.raw.technology["bob-lead-processing"].order = "c-b-c3"
data.raw.technology["bob-lead-processing"].unit = {
  count = 70,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-aluminium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-aluminium-processing",
      prerequisites = {
        "bob-electrolysis-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-aluminium-processing"].icon =
  "__bobplates__/graphics/icons/technology/aluminium-processing.png"
data.raw.technology["bob-aluminium-processing"].icon_size = 128
data.raw.technology["bob-aluminium-processing"].order = "c-b-d2"
data.raw.technology["bob-aluminium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-gold-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-gold-processing",
      prerequisites = {
        "bob-electrolysis-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-gold-processing"].icon = "__bobplates__/graphics/icons/technology/gold-processing.png"
data.raw.technology["bob-gold-processing"].icon_size = 128
data.raw.technology["bob-gold-processing"].order = "c-b-d3"
data.raw.technology["bob-gold-processing"].unit = {
  count = 70,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-silicon-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-silicon-processing",
      prerequisites = {
        "automation",
        "bob-chemical-processing-2",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-silicon-processing"].icon = "__bobplates__/graphics/icons/plate/silicon-plate.png"
data.raw.technology["bob-silicon-processing"].icon_size = 32
data.raw.technology["bob-silicon-processing"].order = "c-b-d1"
data.raw.technology["bob-silicon-processing"].unit = {
  count = 50,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-titanium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-titanium-processing",
      prerequisites = {
        "bob-chemical-processing-2",
        "chemical-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-titanium-processing"].icon = "__bobplates__/graphics/icons/technology/titanium-processing.png"
data.raw.technology["bob-titanium-processing"].icon_size = 64
data.raw.technology["bob-titanium-processing"].order = "c-b-e1"
data.raw.technology["bob-titanium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
  },
}

if not data.raw.technology["bob-tungsten-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-tungsten-processing",
      prerequisites = {
        "bob-chemical-processing-2",
        "chemical-science-pack",
        "bob-nickel-processing",
        "bob-alloy-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-tungsten-processing"].icon = "__bobplates__/graphics/icons/technology/tungsten-processing.png"
data.raw.technology["bob-tungsten-processing"].icon_size = 64
data.raw.technology["bob-tungsten-processing"].order = "c-b-e2"
data.raw.technology["bob-tungsten-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
  },
}

if not data.raw.technology["bob-invar-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-invar-processing",
      prerequisites = {
        "bob-alloy-processing",
        "bob-nickel-processing",
        "logistic-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-invar-processing"].icon = "__bobplates__/graphics/icons/technology/invar-processing.png"
data.raw.technology["bob-invar-processing"].icon_size = 128
data.raw.technology["bob-invar-processing"].order = "c-b-g"
data.raw.technology["bob-invar-processing"].unit = {
  count = 50,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-nitinol-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-nitinol-processing",
      prerequisites = {
        "bob-alloy-processing",
        "bob-nickel-processing",
        "bob-titanium-processing",
        "production-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-nitinol-processing"].icon = "__bobplates__/graphics/icons/plate/nitinol-plate.png"
data.raw.technology["bob-nitinol-processing"].icon_size = 32
data.raw.technology["bob-nitinol-processing"].order = "c-b-h"
data.raw.technology["bob-nitinol-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "production-science-pack", 1 },
  },
}

if not data.raw.technology["bob-tungsten-alloy-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-tungsten-alloy-processing",
      prerequisites = {
        "bob-alloy-processing",
        "bob-tungsten-processing",
        "production-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-tungsten-alloy-processing"].icon =
  "__bobplates__/graphics/icons/plate/copper-tungsten-plate.png"
data.raw.technology["bob-tungsten-alloy-processing"].icon_size = 32
data.raw.technology["bob-tungsten-alloy-processing"].order = "c-b-e3"
data.raw.technology["bob-tungsten-alloy-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "production-science-pack", 1 },
  },
}

if not data.raw.technology["bob-cobalt-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-cobalt-processing",
      prerequisites = {
        "bob-chemical-processing-1",
        "bob-electrolysis-1",
        "sulfur-processing",
        "bob-alloy-processing",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-cobalt-processing"].icon = "__bobplates__/graphics/icons/technology/cobalt-processing.png"
data.raw.technology["bob-cobalt-processing"].icon_size = 128
data.raw.technology["bob-cobalt-processing"].order = "c-b-d1"
data.raw.technology["bob-cobalt-processing"].unit = {
  count = 80,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}

if not data.raw.technology["bob-lithium-processing"] then
  data:extend({
    {
      type = "technology",
      name = "bob-lithium-processing",
      prerequisites = {
        "bob-chemical-processing-1",
        "bob-electrolysis-1",
        "logistic-science-pack",
      },
      effects = {},
    },
  })
end

data.raw.technology["bob-lithium-processing"].icon = "__bobplates__/graphics/icons/technology/lithium-processing.png"
data.raw.technology["bob-lithium-processing"].icon_size = 128
data.raw.technology["bob-lithium-processing"].order = "c-b-d1"
data.raw.technology["bob-lithium-processing"].unit = {
  count = 75,
  time = 30,
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  },
}
