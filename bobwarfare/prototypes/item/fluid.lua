if data.raw.fluid["nitric-acid"] then data:extend(
{
  {
    type = "fluid",
    name = "sulfuric-nitric-acid",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.0, b=1.0},
    flow_color = {r=1.0, g=1.0, b=0.0},
    max_temperature = 100,
    icon = "__bobwarfare__/graphics/icons/sulfuric-nitric-acid.png",
    icon_size = 32,
--[[
    icons =
    {
      {
        icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
        icon_size = 32,
        scale = 0.625,
        shift = {-6, -6}
      },
      {
        icon = "__bobplates__/graphics/icons/nitric-acid.png",
        icon_size = 64,
        scale = 0.625 * 0.5,
        shift = {6, 6}
      }
    },
]]--
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[sulfuric-nitric-acid]"
  },
}
)
end


data:extend(
{
  {
    type = "fluid",
    name = "nitroglycerin",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.3, g=0.3, b=1.0},
    flow_color = {r=1.0, g=0.3, b=0.3},
    max_temperature = 100,
    icon = "__bobwarfare__/graphics/icons/nitroglycerin.png",
    icon_size = 64,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitroglycerin]"
  },

  {
    type = "fluid",
    name = "glycerol",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=1.0, g=1.0, b=0.5},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobwarfare__/graphics/icons/glycerol.png",
    icon_size = 64,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[glycerol]",
    fuel_value = "730kJ" --"1.46MJ"
  },
}
)


