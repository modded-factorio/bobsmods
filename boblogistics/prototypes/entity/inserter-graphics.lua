local graphics = {}
function graphics.hand_base_shadow()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-base-shadow.png",
    priority = "extra-high",
    width = 32,
    height = 132,
    scale = 0.25,
  }
end
function graphics.hand_closed_shadow()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-closed-shadow.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.hand_open_shadow()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-open-shadow.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end

graphics.bulk = {}
function graphics.bulk.hand_closed_shadow()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/bulk-inserter-hand-closed-shadow.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.bulk.hand_open_shadow()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/bulk-inserter-hand-open-shadow.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.white = {}
function graphics.white.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.white.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.white.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.white.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/white-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.yellow = {}
function graphics.yellow.hand_base_picture()
  return {
    filename = "__base__/graphics/entity/inserter/inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.yellow.hand_closed_picture()
  return {
    filename = "__base__/graphics/entity/inserter/inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.yellow.hand_open_picture()
  return {
    filename = "__base__/graphics/entity/inserter/inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end

graphics.red = {}
function graphics.red.hand_base_picture()
  return {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.red.hand_closed_picture()
  return {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.red.hand_open_picture()
  return {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.red.platform_picture()
  return {
    sheet = {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.red.bulk = {}
function graphics.red.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/red-bulk-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.red.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/red-bulk-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.blue = {}
function graphics.blue.hand_base_picture()
  return {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.blue.hand_closed_picture()
  return {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.blue.hand_open_picture()
  return {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.blue.platform_picture()
  return {
    sheet = {
      filename = "__base__/graphics/entity/fast-inserter/fast-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.blue.bulk = {}
function graphics.blue.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/blue-bulk-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.blue.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/blue-bulk-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.purple = {}
function graphics.purple.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.purple.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.purple.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.purple.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.purple.bulk = {}
function graphics.purple.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/purple-bulk-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.purple.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/purple-bulk-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.green = {}
function graphics.green.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.green.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.green.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.green.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/green-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.green.bulk = {}
function graphics.green.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/green-bulk-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.green.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/green-bulk-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.cyan = {}
function graphics.cyan.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.cyan.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.cyan.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.cyan.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.magenta = {}
function graphics.magenta.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.magenta.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-closed.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.magenta.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-open.png",
    priority = "extra-high",
    width = 72,
    height = 164,
    scale = 0.25,
  }
end
function graphics.magenta.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end

graphics.dark_green = {}
function graphics.dark_green.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.dark_green.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end
graphics.dark_green.bulk = {}
function graphics.dark_green.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.dark_green.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

graphics.stripe = {}
function graphics.stripe.hand_base_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-base.png",
    priority = "extra-high",
    width = 32,
    height = 136,
    scale = 0.25,
  }
end
function graphics.stripe.platform_picture()
  return {
    sheet = {
      filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-platform.png",
      priority = "extra-high",
      width = 105,
      height = 79,
      shift = util.by_pixel(1.5, 7.5 - 1),
      scale = 0.5,
    },
  }
end
graphics.stripe.bulk = {}
function graphics.stripe.bulk.hand_closed_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-closed.png",
    priority = "extra-high",
    width = 100,
    height = 164,
    scale = 0.25,
  }
end
function graphics.stripe.bulk.hand_open_picture()
  return {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-open.png",
    priority = "extra-high",
    width = 130,
    height = 164,
    scale = 0.25,
  }
end

return graphics
