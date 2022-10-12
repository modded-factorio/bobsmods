function setup(event)
  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setIngredientColor"] then
    if settings.startup["bobmods-tech-colorupdate"].value then
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "automation-science-pack",
        {
          r = 1.0,
          g = 0.9,
          b = 0.1
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "logistic-science-pack",
        {
          r = 1.0,
          g = 0.1,
          b = 0.1
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "utility-science-pack",
        {
          r = 0.1,
          g = 1.0,
          b = 0.1
        }
      )
    end
    remote.call(
      "DiscoScience",
      "setIngredientColor",
      "advanced-logistic-science-pack",
      {
        r = 1.0,
        g = 0.2,
        b = 0.6
      }
    )
    if settings.startup["bobmods-burnerphase"].value == true then
      remote.call("DiscoScience", "setIngredientColor", "steam-science-pack", {
        r = 0.8,
        g = 0.8,
        b = 0.8
      })
    end
    if settings.startup["bobmods-enemies-enableartifacts"] and settings.startup["bobmods-enemies-enableartifacts"].value == true and settings.startup["bobmods-enemies-enablenewartifacts"] and settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      remote.call("DiscoScience", "setIngredientColor", "science-pack-gold", {
        r = 1.0,
        g = 0.3,
        b = 0.1
      })
      remote.call("DiscoScience", "setIngredientColor", "alien-science-pack", {
        r = 1.0,
        g = 0.4,
        b = 1.0
      })
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-blue",
        {
          r = 0.4,
          g = 0.6,
          b = 1.0
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-orange",
        {
          r = 1.0,
          g = 0.6,
          b = 0.4
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-purple",
        {
          r = 0.6,
          g = 0.4,
          b = 1.0
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-yellow",
        {
          r = 1.0,
          g = 1.0,
          b = 0.4
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-green",
        {
          r = 0.4,
          g = 1.0,
          b = 0.5
        }
      )
      remote.call(
        "DiscoScience",
        "setIngredientColor",
        "alien-science-pack-red",
        {
          r = 1.0,
          g = 0.5,
          b = 0.4
        }
      )
    end
  end

  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setLabScale"] then
    remote.call("DiscoScience", "setLabScale", "lab-2", 1)
    if settings.startup["bobmods-burnerphase"].value == true then
      remote.call("DiscoScience", "setLabScale", "burner-lab", 1)
    end
    if settings.startup["bobmods-enemies-enableartifacts"] and settings.startup["bobmods-enemies-enableartifacts"].value == true and settings.startup["bobmods-enemies-enablenewartifacts"] and settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      remote.call("DiscoScience", "setLabScale", "lab-alien", 1)
    end
  end
end

script.on_init(setup)
script.on_configuration_changed(setup)