data:extend(
{
  {
    type = "bool-setting",
    name = "bobmods-clock-24hour",
    setting_type = "runtime-per-user",
    default_value = true,
  },
  {
	type = "string-setting",
	name = "bobmods-clock-updateinterval",
	setting_type = "runtime-per-user",
	default_value = "1",
     allowed_values = {"1", "5", "10", "15", "20", "30"}
  },
  {
	type = "string-setting",
	name = "bobmods-clock-showonbutton",
	setting_type = "runtime-per-user",
	default_value = "time",
     allowed_values = {"time", "time_played", "evolution_factor"}
  },
  {
	type = "string-setting",
	name = "bobmods-clock-font",
	setting_type = "runtime-per-user",
	default_value = "default-semibold",
     allowed_values = {"default-semibold", "digital-clock"}
  },
  {
	type = "string-setting",
	name = "bobmods-clock-color",
	setting_type = "runtime-per-user",
	default_value = "standard",
     allowed_values = {"standard", "red", "green", "yellow", "blue"}
  },
  {
    type = "bool-setting",
    name = "bobmods-clock-admin-mode",
    setting_type = "runtime-global",
    default_value = false,
  },
}
)


