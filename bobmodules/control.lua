function setup(event)
  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setIngredientColor"] then
    remote.call("DiscoScience", "setIngredientColor", "module-case", { r = 0.5, g = 0.5, b = 0.5 })
    remote.call("DiscoScience", "setIngredientColor", "module-circuit-board", { r = 0.0, g = 1.0, b = 0.0 })
    remote.call("DiscoScience", "setIngredientColor", "speed-processor", { r = 0.0, g = 0.2, b = 1.0 })
    remote.call("DiscoScience", "setIngredientColor", "effectivity-processor", { r = 0.6, g = 1.0, b = 0.2 })
    remote.call("DiscoScience", "setIngredientColor", "productivity-processor", { r = 0.875, g = 0.375, b = 1.0 })
    remote.call("DiscoScience", "setIngredientColor", "pollution-clean-processor", { r = 0.5, g = 1.0, b = 0.75 })
    remote.call("DiscoScience", "setIngredientColor", "pollution-create-processor", { r = 1.0, g = 0.75, b = 0.5 })
  end

  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setLabScale"] then
    remote.call("DiscoScience", "setLabScale", "lab-module", 1)
  end
end

script.on_init(setup)
script.on_configuration_changed(setup)
