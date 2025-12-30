function hide_setting(setting_type, setting_name, forced_setting_value)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].hidden = true
    if forced_setting_value ~= nil then
      data.raw[setting_type][setting_name].forced_value = forced_setting_value
    else
      data.raw[setting_type][setting_name].forced_value = data.raw[setting_type][setting_name].default_value
    end
  else
    log("Could not find setting '" .. setting_name .. "'.")
  end
end

hide_setting("bool-setting", "bobmods-ores-enablebauxite", true)
hide_setting("bool-setting", "bobmods-ores-enablegemsore", true)
hide_setting("bool-setting", "bobmods-ores-enablegoldore", true)
hide_setting("bool-setting", "bobmods-ores-enableleadore", true)
hide_setting("bool-setting", "bobmods-ores-enablenickelore", true)
hide_setting("bool-setting", "bobmods-ores-enablequartz", true)
hide_setting("bool-setting", "bobmods-ores-enablerutile", true)
hide_setting("bool-setting", "bobmods-ores-enablesilverore", true)
hide_setting("bool-setting", "bobmods-ores-enabletinore", true)
hide_setting("bool-setting", "bobmods-ores-enabletungstenore", true)
hide_setting("bool-setting", "bobmods-ores-enablezincore", true)
hide_setting("bool-setting", "bobmods-ores-enablethoriumore", true)

if mods["quality"] then
  hide_setting("bool-setting", "bobmods-plates-convert-recipes", false)
end
