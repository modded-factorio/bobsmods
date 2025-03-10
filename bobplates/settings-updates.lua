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

hide_setting("bool-setting", "bobmods-ores-enablebauxite")
hide_setting("bool-setting", "bobmods-ores-enablegemsore")
hide_setting("bool-setting", "bobmods-ores-enablegoldore")
hide_setting("bool-setting", "bobmods-ores-enableleadore")
hide_setting("bool-setting", "bobmods-ores-enablenickelore")
hide_setting("bool-setting", "bobmods-ores-enablequartz")
hide_setting("bool-setting", "bobmods-ores-enablerutile")
hide_setting("bool-setting", "bobmods-ores-enablesilverore")
hide_setting("bool-setting", "bobmods-ores-enabletinore")
hide_setting("bool-setting", "bobmods-ores-enabletungstenore")
hide_setting("bool-setting", "bobmods-ores-enablezincore")
hide_setting("bool-setting", "bobmods-ores-enablethoriumore")

if mods["quality"] then
  hide_setting("bool-setting", "bobmods-plates-convert-recipes", false)
end
