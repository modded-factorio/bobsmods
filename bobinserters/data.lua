data:extend({
  {
    type = "custom-input",
    name = "bob-inserter-drop-range",
    key_sequence = "SHIFT + O",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-pickup-range",
    key_sequence = "SHIFT + P",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-near",
    key_sequence = "SHIFT + N",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-long",
    key_sequence = "SHIFT + L",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-pickup-rotate",
    key_sequence = "CONTROL + R",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-drop-rotate",
    key_sequence = "CONTROL + SHIFT + R",
    consuming = "none",
  },
  {
    type = "custom-input",
    name = "bob-inserter-open-gui",
    key_sequence = "SHIFT + E",
    consuming = "none",
  },
})

data:extend({
  {
    type = "sprite",
    name = "bobinserters-outline-bar",
    filename = "__bobinserters__/graphics/gui/outline-bar.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 2,
    mipmap_count = 1,
  },
})

require("prototypes.styles")
require("prototypes.technology-inserter")
