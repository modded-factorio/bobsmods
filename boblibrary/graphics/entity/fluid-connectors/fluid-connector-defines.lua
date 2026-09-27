function bob_pipe_connector_east(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-E.png",
    width = 42,
    height = 76,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(-24.5, 1),
  }
end

function bob_pipe_connector_east_thin(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-thin-E.png",
    width = 32,
    height = 72,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(-23, 1.5),
  }
end

function bob_pipe_connector_east_short(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-short-E.png",
    width = 32,
    height = 72,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(-23, 1.5),
  }
end

function bob_pipe_connector_east_old(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/old-pipe-E.png",
    width = 42,
    height = 76,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(-24.5, 1),
  }
end

function bob_pipe_connector_north(shift_table1, shift_table2)
  return {
    layers = {
      {
        filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-N.png",
        width = 71,
        height = 46,
        priority = "extra-high",
        scale = 0.5,
        shift = shift_table1 or util.by_pixel(2.25, 13.5),
      },
      {
        filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-N-shadow.png",
        width = 24,
        height = 80,
        priority = "medium",
        scale = 0.5,
        shift = shift_table2 or util.by_pixel(15.5, 35),
        draw_as_shadow = true,
      },
    }
  }
end

function bob_pipe_connector_north_thin(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-thin-N.png",
    width = 52,
    height = 20,
    line_length = 1,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(0.5, 11),
  }
end

function bob_pipe_connector_north_old(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/old-pipe-N.png",
    width = 71,
    height = 38,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(2.25, 13.5),
  }
end

function bob_pipe_connector_south(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-S.png",
    width = 88,
    height = 61,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(0, -31.25),
  }
end

function bob_pipe_connector_south_thin(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-thin-S.png",
    width = 64,
    height = 70,
    line_length = 1,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(0, -24),
  }
end

function bob_pipe_connector_south_short(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-short-S.png",
    width = 64,
    height = 70,
    line_length = 1,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(0, -24),
  }
end

function bob_pipe_connector_south_old(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/old-pipe-S.png",
    width = 88,
    height = 61,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(0, -31.25),
  }
end

function bob_pipe_connector_west(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-W.png",
    width = 39,
    height = 73,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(25.75, 1.25),
  }
end

function bob_pipe_connector_west_thin(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-thin-W.png",
    width = 30,
    height = 74,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(23, 0.5),
  }
end

function bob_pipe_connector_west_short(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/universal-pipe-short-W.png",
    width = 30,
    height = 74,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(23, 0.5),
  }
end

function bob_pipe_connector_west_old(shift_table)
  return {
    filename = "__boblibrary__/graphics/entity/fluid-connectors/old-pipe-W.png",
    width = 39,
    height = 73,
    priority = "extra-high",
    scale = 0.5,
    shift = shift_table or util.by_pixel(25.75, 1.25),
  }
end