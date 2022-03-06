local graphics = {}
function graphics.hand_base_shadow()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-base-shadow.png",
    priority = "extra-high",
    width = 8,
    height = 33,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25
    }
  }
end
function graphics.hand_closed_shadow()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-closed-shadow.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.hand_open_shadow()
return
  {
    filename = "__boblogistics__/graphics/entity/inserter/inserter-hand-open-shadow.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end


graphics.stack = {}
function graphics.stack.hand_closed_shadow()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/stack-inserter-hand-closed-shadow.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-stack-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.stack.hand_open_shadow()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/stack-inserter-hand-open-shadow.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-stack-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end

graphics.filter = {}
function graphics.filter.platform_picture()
  return
  {
    sheet=
    {
      filename = "__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__base__/graphics/entity/stack-filter-inserter/hr-stack-filter-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end


graphics.white = {}
function graphics.white.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-white-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.white.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-white-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.white.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/white-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-white-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.white.platform_picture()
  return
  {
    sheet=
    {
      filename = "__boblogistics__/graphics/entity/inserter/white-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-white-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end



graphics.yellow = {}
function graphics.yellow.hand_base_picture()
  return
  {
    filename = "__base__/graphics/entity/inserter/inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 33, --for some reason, yellow has a different size here.
    hr_version = {
      filename = "__base__/graphics/entity/inserter/hr-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.yellow.hand_closed_picture()
  return
  {
    filename = "__base__/graphics/entity/inserter/inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/inserter/hr-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.yellow.hand_open_picture()
  return
  {
    filename = "__base__/graphics/entity/inserter/inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/inserter/hr-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end


graphics.red ={}
function graphics.red.hand_base_picture()
  return
  {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.red.hand_closed_picture()
  return
  {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.red.hand_open_picture()
  return
  {
    filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.red.platform_picture()
  return
  {
    sheet=
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.red.stack ={}
function graphics.red.stack.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/red-stack-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-red-stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.red.stack.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/red-stack-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-red-stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end


graphics.blue ={}
function graphics.blue.hand_base_picture()
  return
  {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.blue.hand_closed_picture()
  return
  {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.blue.hand_open_picture()
  return
  {
    filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.blue.platform_picture()
  return
  {
    sheet=
    {
      filename = "__base__/graphics/entity/fast-inserter/fast-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.blue.stack ={}
function graphics.blue.stack.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/blue-stack-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-blue-stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.blue.stack.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/blue-stack-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-blue-stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end


graphics.purple = {}
function graphics.purple.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-purple-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.purple.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-purple-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.purple.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-purple-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.purple.platform_picture()
  return
  {
    sheet=
    {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-purple-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.purple.stack = {}
function graphics.purple.stack.hand_closed_picture()
return
  {
    filename = "__boblogistics__/graphics/entity/inserter/purple-stack-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-purple-stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.purple.stack.hand_open_picture()
return
  {
    filename = "__boblogistics__/graphics/entity/inserter/purple-stack-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-purple-stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end

graphics.green = {}
function graphics.green.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-green-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.green.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-green-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.green.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/green-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-green-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.green.platform_picture()
  return
  {
    sheet=
    {
      filename = "__boblogistics__/graphics/entity/inserter/green-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-green-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.green.stack = {}
function graphics.green.stack.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/green-stack-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-green-stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.green.stack.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/green-stack-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-green-stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end


graphics.cyan = {}
function graphics.cyan.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-cyan-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.cyan.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-cyan-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.cyan.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-cyan-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.cyan.platform_picture()
  return
  {
    sheet=
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-cyan-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.magenta = {}
function graphics.magenta.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-magenta-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.magenta.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-closed.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-magenta-inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.magenta.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-open.png",
    priority = "extra-high",
    width = 18,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-magenta-inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.magenta.platform_picture()
  return
  {
    sheet=
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-magenta-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end

graphics.dark_green = {}
function graphics.dark_green.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-dark-green-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.dark_green.platform_picture()
  return
  {
    sheet =
    {
      filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-dark-green-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end
graphics.dark_green.stack = {}
function graphics.dark_green.stack.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-dark-green-big-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.dark_green.stack.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-dark-green-big-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end

graphics.stripe = {}
function graphics.stripe.hand_base_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-base.png",
    priority = "extra-high",
    width = 8,
    height = 34,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-stripe-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    }
  }
end
function graphics.stripe.platform_picture()
  return
  {
    sheet =
    {
      filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename = "__boblogistics__/graphics/entity/inserter/hr-stripe-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
end
graphics.stripe.stack = {}
function graphics.stripe.stack.hand_closed_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-closed.png",
    priority = "extra-high",
    width = 24,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-stripe-inserter-hand-closed.png",
      priority = "extra-high",
      width = 100,
      height = 164,
      scale = 0.25
    }
  }
end
function graphics.stripe.stack.hand_open_picture()
  return
  {
    filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-open.png",
    priority = "extra-high",
    width = 32,
    height = 41,
    hr_version = {
      filename = "__boblogistics__/graphics/entity/inserter/hr-stripe-inserter-hand-open.png",
      priority = "extra-high",
      width = 130,
      height = 164,
      scale = 0.25
    }
  }
end


return graphics
