local icon_piece_sizes = {
  --1
  {
    {
      width = 29,
      height = 33,
    },
    {
      width = 32,
      height = 30,
    },
    {
      width = 23,
      height = 32,
    },
    {
      width = 19,
      height = 17,
    },
    {
      width = 25,
      height = 27,
    },
    {
      width = 28,
      height = 28,
    },
    {
      width = 21,
      height = 25,
    },
    {
      width = 26,
      height = 28,
    },
    {
      width = 30,
      height = 25,
    },
    {
      width = 32,
      height = 26,
    },
    {
      width = 27,
      height = 28,
    },
    {
      width = 21,
      height = 22,
    },
    {
      width = 13,
      height = 15,
    },
    {
      width = 14,
      height = 16,
    },
    {
      width = 23,
      height = 27,
    },
  },
  --2
  {
    {
      width = 13,
      height = 21,
    },
    {
      width = 20,
      height = 16,
    },
    {
      width = 33,
      height = 23,
    },
    {
      width = 17,
      height = 21,
    },
    {
      width = 31,
      height = 28,
    },
    {
      width = 20,
      height = 31,
    },
    {
      width = 36,
      height = 28,
    },
    {
      width = 20,
      height = 20,
    },
    {
      width = 14,
      height = 17,
    },
    {
      width = 24,
      height = 23,
    },
    {
      width = 24,
      height = 20,
    },
    {
      width = 21,
      height = 25,
    },
    {
      width = 19,
      height = 19,
    },
    {
      width = 17,
      height = 16,
    },
    {
      width = 43,
      height = 34,
    },
    {
      width = 35,
      height = 41,
    },
    {
      width = 38,
      height = 36,
    },
    {
      width = 46,
      height = 29,
    },
  },
  --3
  {
    {
      width = 29,
      height = 29,
    },
    {
      width = 24,
      height = 22,
    },
    {
      width = 29,
      height = 24,
    },
    {
      width = 44,
      height = 32,
    },
    {
      width = 41,
      height = 33,
    },
    {
      width = 29,
      height = 36,
    },
    {
      width = 31,
      height = 29,
    },
    {
      width = 28,
      height = 23,
    },
    {
      width = 22,
      height = 23,
    },
    {
      width = 27,
      height = 24,
    },
    {
      width = 31,
      height = 27,
    },
    {
      width = 16,
      height = 16,
    },
    {
      width = 45,
      height = 30,
    },
  },
  --4
  {
    {
      width = 30,
      height = 33,
    },
    {
      width = 37,
      height = 29,
    },
    {
      width = 27,
      height = 31,
    },
    {
      width = 12,
      height = 13,
    },
    {
      width = 12,
      height = 11,
    },
    {
      width = 19,
      height = 19,
    },
    {
      width = 38,
      height = 24,
    },
    {
      width = 21,
      height = 17,
    },
    {
      width = 36,
      height = 33,
    },
    {
      width = 18,
      height = 20,
    },
    {
      width = 37,
      height = 32,
    },
    {
      width = 34,
      height = 43,
    },
    {
      width = 19,
      height = 15,
    },
    {
      width = 28,
      height = 33,
    },
    {
      width = 31,
      height = 21,
    },
    {
      width = 12,
      height = 11,
    },
    {
      width = 25,
      height = 26,
    },
    {
      width = 23,
      height = 14,
    },
    {
      width = 11,
      height = 15,
    },
    {
      width = 31,
      height = 31,
    },
  },
  --5
  {
    {
      width = 25,
      height = 21,
    },
    {
      width = 20,
      height = 24,
    },
    {
      width = 26,
      height = 20,
    },
    {
      width = 29,
      height = 24,
    },
    {
      width = 22,
      height = 16,
    },
    {
      width = 26,
      height = 16,
    },
    {
      width = 32,
      height = 22,
    },
    {
      width = 16,
      height = 23,
    },
    {
      width = 25,
      height = 22,
    },
    {
      width = 27,
      height = 28,
    },
    {
      width = 33,
      height = 20,
    },
    {
      width = 19,
      height = 14,
    },
    {
      width = 21,
      height = 16,
    },
    {
      width = 19,
      height = 23,
    },
    {
      width = 16,
      height = 17,
    },
    {
      width = 19,
      height = 18,
    },
  },
}

local icon_piece_counts = { 15, 18, 13, 20, 16 }
local layer_shift_directions = { { -1, -1 }, { 1, -1 }, { -1, 1 }, { 1, 1 } }

function bobmods.lib.resource.get_random_icon_layer(type, tint, layer)
  local piece = math.random(icon_piece_counts[type])
  local width = icon_piece_sizes[type][piece].width
  local height = icon_piece_sizes[type][piece].height
  local scale = 0.5

  local icon_size = width
  local size_shift = { 0, 0 }
  if width > height then
    size_shift[2] = (width - height) / 2
  elseif height > width then
    icon_size = height
    size_shift[1] = (height - width) / 2
  end

  return {
    icon = string.format("__boblibrary__/graphics/icons/ore/%d/%d.png", type, piece),
    icon_size = icon_size,
    tint = tint,
    scale = scale,
    shift = {
      ((32 - width / 2) + size_shift[1]) * layer_shift_directions[layer][1] * scale,
      ((32 - height / 2) + size_shift[2]) * layer_shift_directions[layer][2] * scale,
    },
  }
end

function bobmods.lib.resource.get_random_icon(type, tint)
  return {
    { icon = "__boblibrary__/graphics/icons/ore/blank.png", icon_size = 64, scale = 0.5 },
    bobmods.lib.resource.get_random_icon_layer(type, tint, 1),
    bobmods.lib.resource.get_random_icon_layer(type, tint, 2),
    bobmods.lib.resource.get_random_icon_layer(type, tint, 3),
    bobmods.lib.resource.get_random_icon_layer(type, tint, 4),
  }
end

function bobmods.lib.resource.get_icon_variation_layer(type, tint, layer)
  local piece = math.random(icon_piece_counts[type])
  local width = icon_piece_sizes[type][piece].width
  local height = icon_piece_sizes[type][piece].height
  local scale = 0.25
  local shift = util.by_pixel(4 * layer_shift_directions[layer][1], 4 * layer_shift_directions[layer][2]) -- middle of the quadrant.
  if width > 32 or height > 32 then
    shift = util.by_pixel(
      (32 - (width * 0.5)) * layer_shift_directions[layer][1] * 0.25,
      (32 - (height * 0.5)) * layer_shift_directions[layer][2] * 0.25
    ) -- hard to the corner of the quadrant, overlap into the middle of the icon
  end
  return {
    filename = string.format("__boblibrary__/graphics/icons/ore/%d/%d.png", type, piece),
    width = width,
    height = height,
    tint = tint,
    scale = scale,
    shift = shift,
  }
end

function bobmods.lib.resource.get_icon_variation_single(type, tint)
  local piece = math.random(icon_piece_counts[type])
  local width = icon_piece_sizes[type][piece].width
  local height = icon_piece_sizes[type][piece].height
  local scale = math.min(32.0 / width, 32.0 / height, 1.0)
  --  if width > 32 or height > 32 then
  --  end
  return {
    filename = string.format("__boblibrary__/graphics/icons/ore/%d/%d.png", type, piece),
    width = width,
    height = height,
    tint = tint,
    scale = scale,
  }
end

function bobmods.lib.resource.get_icon_variation(type, tint)
  return {
    layers = {
      bobmods.lib.resource.get_icon_variation_layer(type, tint, 1),
      bobmods.lib.resource.get_icon_variation_layer(type, tint, 2),
      bobmods.lib.resource.get_icon_variation_layer(type, tint, 3),
      bobmods.lib.resource.get_icon_variation_layer(type, tint, 4),
    },
  }
end
