function setup(event)
  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setIngredientColor"] then
    remote.call(
      "DiscoScience",
      "setIngredientColor",
      "bob-advanced-logistic-science-pack",
      { r = 1.0, g = 0.2, b = 0.6 }
    )
    if
      settings.startup["bobmods-enemies-enableartifacts"]
      and settings.startup["bobmods-enemies-enableartifacts"].value == true
      and settings.startup["bobmods-enemies-enablenewartifacts"]
      and settings.startup["bobmods-enemies-enablenewartifacts"].value == true
    then
      remote.call("DiscoScience", "setIngredientColor", "bob-science-pack-gold", { r = 1.0, g = 0.3, b = 0.1 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack", { r = 1.0, g = 0.4, b = 1.0 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-blue", { r = 0.4, g = 0.6, b = 1.0 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-orange", { r = 1.0, g = 0.6, b = 0.4 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-purple", { r = 0.6, g = 0.4, b = 1.0 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-yellow", { r = 1.0, g = 1.0, b = 0.4 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-green", { r = 0.4, g = 1.0, b = 0.5 })
      remote.call("DiscoScience", "setIngredientColor", "bob-alien-science-pack-red", { r = 1.0, g = 0.5, b = 0.4 })
    end
  end

  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setLabScale"] then
    remote.call("DiscoScience", "setLabScale", "bob-lab-2", 1)
    if settings.startup["bobmods-burnerphase"].value == true then
      remote.call("DiscoScience", "setLabScale", "bob-burner-lab", 1)
    end
    if
      settings.startup["bobmods-enemies-enableartifacts"]
      and settings.startup["bobmods-enemies-enableartifacts"].value == true
      and settings.startup["bobmods-enemies-enablenewartifacts"]
      and settings.startup["bobmods-enemies-enablenewartifacts"].value == true
    then
      remote.call("DiscoScience", "setLabScale", "bob-lab-alien", 1)
    end
  end
end

script.on_init(setup)
script.on_configuration_changed(setup)
