if
  settings.startup["bobmods-enemies-enableartifacts"].value == true
  and settings.startup["bobmods-enemies-aliensdropartifacts"].value == true
then
  if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    bobmods.enemies.small_alien_artifacts = true

    if data.raw.unit["small-biter"].loot == nil then
      data.raw.unit["small-biter"].loot = {}
    end

    if data.raw.unit["small-spitter"].loot == nil then
      data.raw.unit["small-spitter"].loot = {}
    end

    if data.raw.unit["medium-biter"].loot == nil then
      data.raw.unit["medium-biter"].loot = {}
    end
    table.insert(data.raw.unit["medium-biter"].loot, {
      type = "item",
      name = "bob-small-alien-artifact",
      amount_min = 1,
      amount_max = 1,
      independent_probability = 0.5,
    })

    if data.raw.unit["medium-spitter"].loot == nil then
      data.raw.unit["medium-spitter"].loot = {}
    end
    table.insert(data.raw.unit["medium-spitter"].loot, {
      type = "item",
      name = "bob-small-alien-artifact",
      amount_min = 1,
      amount_max = 1,
      independent_probability = 0.5,
    })

    if data.raw.unit["big-biter"].loot == nil then
      data.raw.unit["big-biter"].loot = {}
    end
    table.insert(data.raw.unit["big-biter"].loot, {
      type = "item",
      name = "bob-small-alien-artifact",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.75,
    })

    if data.raw.unit["big-spitter"].loot == nil then
      data.raw.unit["big-spitter"].loot = {}
    end
    table.insert(data.raw.unit["big-spitter"].loot, {
      type = "item",
      name = "bob-small-alien-artifact",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.75,
    })

    table.insert(
      data.raw.unit["bob-huge-biter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.unit["bob-huge-spitter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.unit["bob-giant-biter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
    )
    table.insert(
      data.raw.unit["bob-giant-spitter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
    )
    table.insert(
      data.raw.unit["bob-titan-biter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
    )
    table.insert(
      data.raw.unit["bob-titan-spitter"].loot,
      { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
    )

    if data.raw.unit["behemoth-biter"].loot == nil then
      data.raw.unit["behemoth-biter"].loot = {}
    end
    if data.raw.unit["behemoth-spitter"].loot == nil then
      data.raw.unit["behemoth-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["behemoth-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["behemoth-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["behemoth-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["behemoth-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["behemoth-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["behemoth-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 2,
        amount_max = 4,
        independent_probability = 0.5,
      })

      --Duplicated with and without small artifacts
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })

      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })

      table.insert(data.raw.unit["bob-medium-piercing-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-piercing-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-electric-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-electric-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-acid-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-acid-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-explosive-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-explosive-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-poison-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-poison-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-fire-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-fire-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })

      table.insert(data.raw.unit["bob-big-piercing-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-piercing-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-electric-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-electric-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-acid-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-acid-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-explosive-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-explosive-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-poison-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-poison-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-fire-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-fire-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })

      table.insert(
        data.raw.unit["bob-huge-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 2, amount_max = 4 }
      )

      table.insert(
        data.raw.unit["bob-giant-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 3, amount_max = 5 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 5, amount_max = 8 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-piercing-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-blue", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-piercing-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-electric-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-orange", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-electric-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-purple",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-acid-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-purple", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-acid-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-red",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-explosive-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-yellow", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-explosive-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-green",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-poison-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-green", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-poison-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-orange",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-fire-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact-red", amount_min = 5, amount_max = 9 }
      )
      table.insert(data.raw.unit["bob-behemoth-fire-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact-blue",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.5,
      })

      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })

      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 3 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(data.raw.unit["bob-leviathan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(data.raw.unit["bob-leviathan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.4,
      })
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 3 }
      )
    else
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )

      table.insert(data.raw.unit["bob-medium-piercing-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-piercing-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-electric-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-electric-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-acid-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-acid-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-explosive-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-explosive-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-poison-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-poison-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-fire-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-medium-fire-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 1,
        independent_probability = 0.5,
      })

      table.insert(data.raw.unit["bob-big-piercing-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-piercing-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-electric-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-electric-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-acid-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-acid-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-explosive-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-explosive-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-poison-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-poison-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-fire-biter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-big-fire-spitter"].loot, {
        type = "item",
        name = "bob-small-alien-artifact",
        amount_min = 1,
        amount_max = 3,
        independent_probability = 0.75,
      })

      table.insert(
        data.raw.unit["bob-huge-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 2, amount_max = 4 }
      )

      table.insert(
        data.raw.unit["bob-giant-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 3, amount_max = 5 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 5, amount_max = 8 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 16 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { type = "item", name = "bob-small-alien-artifact", amount_min = 8, amount_max = 12 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 10 }
      )
    end
  else
    table.insert(
      data.raw.unit["bob-titan-biter"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.unit["bob-titan-spitter"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.unit["behemoth-biter"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.unit["behemoth-spitter"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )

    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })

      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 3 }
      )
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.25,
      })
      table.insert(data.raw.unit["bob-leviathan-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.75,
      })

      table.insert(data.raw.unit["bob-titan-piercing-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-piercing-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-blue",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 5, amount_max = 9 }
      )

      table.insert(data.raw.unit["bob-titan-electric-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-electric-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-orange",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 5, amount_max = 9 }
      )

      table.insert(data.raw.unit["bob-titan-acid-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-acid-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-purple",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 5, amount_max = 9 }
      )

      table.insert(data.raw.unit["bob-titan-explosive-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-explosive-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-yellow",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 5, amount_max = 9 }
      )

      table.insert(data.raw.unit["bob-titan-poison-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-poison-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-green",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 5, amount_max = 9 }
      )

      table.insert(data.raw.unit["bob-titan-fire-biter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(data.raw.unit["bob-titan-fire-spitter"].loot, {
        type = "item",
        name = "bob-alien-artifact-red",
        amount_min = 1,
        amount_max = 2,
        independent_probability = 0.5,
      })
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 5, amount_max = 9 }
      )
    else
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )

      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 9 }
      )
    end
  end
end

-- end of enemies drop artifacts here.

if settings.startup["bobmods-enemies-enableartifacts"].value == true then
  if data.raw["unit-spawner"]["bob-0-biter-spawner"].loot == nil then
    data.raw["unit-spawner"]["bob-0-biter-spawner"].loot = {}
  end
  table.insert(
    data.raw["unit-spawner"]["bob-0-biter-spawner"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
  )

  if data.raw["unit-spawner"]["bob-0-spitter-spawner"].loot == nil then
    data.raw["unit-spawner"]["bob-0-spitter-spawner"].loot = {}
  end
  table.insert(
    data.raw["unit-spawner"]["bob-0-spitter-spawner"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
  )

  table.insert(
    data.raw["unit-spawner"]["bob-biter-spawner"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
  )
  table.insert(
    data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
  )

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    table.insert(
      data.raw["unit-spawner"]["bob-0-piercing-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-piercing-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-electric-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-electric-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-acid-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-acid-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-explosive-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-explosive-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-poison-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-poison-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-fire-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-fire-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 8, amount_max = 22 }
    )

    if settings.startup["bobmods-enemies-superspawner"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 20, amount_max = 36 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 10 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 10 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact-red", amount_min = 20, amount_max = 36 }
      )
    end
  else
    table.insert(
      data.raw["unit-spawner"]["bob-0-piercing-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-piercing-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-electric-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-electric-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-acid-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-acid-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-explosive-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-explosive-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-poison-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-poison-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-fire-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-0-fire-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 15 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-biter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-spitter-spawner"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 22 }
    )

    if settings.startup["bobmods-enemies-superspawner"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { type = "item", name = "bob-alien-artifact", amount_min = 32, amount_max = 84 }
      )
    end
  end

  if data.raw.turret["small-worm-turret"].loot == nil then
    data.raw.turret["small-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["small-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
  )

  if data.raw.turret["medium-worm-turret"].loot == nil then
    data.raw.turret["medium-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["medium-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
  )

  if data.raw.turret["big-worm-turret"].loot == nil then
    data.raw.turret["big-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["big-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
  )

  table.insert(
    data.raw.turret["bob-huge-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
  )

  table.insert(
    data.raw.turret["bob-giant-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
  )

  table.insert(
    data.raw.turret["bob-titan-worm-turret"].loot,
    { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
  )

  if data.raw.turret["behemoth-worm-turret"].loot == nil then
    data.raw.turret["behemoth-worm-turret"].loot = {}
  end

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
    )
    table.insert(data.raw.turret["behemoth-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-orange",
      amount_min = 1,
      amount_max = 2,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["behemoth-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-purple",
      amount_min = 1,
      amount_max = 2,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["behemoth-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-yellow",
      amount_min = 1,
      amount_max = 2,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["behemoth-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-green",
      amount_min = 1,
      amount_max = 2,
      independent_probability = 0.5,
    })
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 2, independent_probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 8, amount_max = 14 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 3, independent_probability = 0.5 }
    )
    table.insert(data.raw.turret["bob-leviathan-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-orange",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["bob-leviathan-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-purple",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["bob-leviathan-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-yellow",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })
    table.insert(data.raw.turret["bob-leviathan-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-green",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 3, independent_probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 4, amount_max = 10 }
    )
    table.insert(data.raw.turret["bob-behemoth-piercing-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-yellow",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })

    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 3 }
    )

    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 4, amount_max = 10 }
    )
    table.insert(data.raw.turret["bob-behemoth-electric-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-purple",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })

    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 3 }
    )

    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 4, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 3, independent_probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 3 }
    )

    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 4, amount_max = 10 }
    )
    table.insert(data.raw.turret["bob-behemoth-explosive-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-green",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })

    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 3 }
    )

    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 4, amount_max = 10 }
    )
    table.insert(data.raw.turret["bob-behemoth-poison-worm-turret"].loot, {
      type = "item",
      name = "bob-alien-artifact-orange",
      amount_min = 1,
      amount_max = 3,
      independent_probability = 0.5,
    })

    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-green", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-orange", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-yellow", amount_min = 1, amount_max = 3 }
    )

    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1, independent_probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 2 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 3, amount_max = 7 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 3, amount_max = 9 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 4, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 3, independent_probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-red", amount_min = 5, amount_max = 11 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-blue", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact-purple", amount_min = 1, amount_max = 3 }
    )
  else
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )

    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 1, amount_max = 3 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 2, amount_max = 4 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 3, amount_max = 6 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 4, amount_max = 8 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 5, amount_max = 10 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 6, amount_max = 12 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 9, amount_max = 15 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { type = "item", name = "bob-alien-artifact", amount_min = 14, amount_max = 20 }
    )
  end
end

if data.raw.item["bob-resin"] then
  data.raw["simple-entity"]["bob-hardened-bile"].minable.results =
    { { type = "item", name = "bob-resin", amount_min = 10, amount_max = 16 } }
end

if mods["bobplates"] then
  bobmods.lib.recipe.replace_ingredient("bob-artifact-radar", "iron-gear-wheel", "bob-steel-gear-wheel")
end
if mods["bobtech"] then
  if data.raw.technology["bob-artifact-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-alien-research", "bob-artifact-processing")
  end
end
if mods["bobwarfare"] then
  bobmods.lib.recipe.replace_ingredient("bob-artifact-radar", "radar", "bob-radar-2")
  bobmods.lib.tech.replace_prerequisite("bob-artifact-radar", "radar", "bob-radar-2")
  bobmods.lib.tech.remove_prerequisite("bob-artifact-radar", "military-2")
end

data.raw["active-defense-equipment"]["discharge-defense-equipment"].attack_parameters.ammo_type.action[1].trigger_target_mask =
  { "not-electric-unit" }

for _, wall in pairs(data.raw.wall) do
  if wall.damaged_trigger_effect and wall.damaged_trigger_effect.damage_type_filters then
    wall.damaged_trigger_effect.damage_type_filters = { "fire", "acid", "poison" }
  end
end
for _, gate in pairs(data.raw.gate) do
  if gate.damaged_trigger_effect and gate.damaged_trigger_effect.damage_type_filters then
    gate.damaged_trigger_effect.damage_type_filters = { "fire", "acid", "poison" }
  end
end

if mods["combat-mechanics-overhaul"] then
  for _, mask in pairs({
    "ammo-turret",
    "artillery-turret",
    "capture-robot",
    "car",
    "character",
    "combat-robot",
    "construction-robot",
    "electric-turret",
    "fluid-turret",
    "gate",
    "logistic-robot",
    "turret",
    "unit",
    "unit-spawner",
    "wall",
  }) do
    local prototype_table = data.raw[mask]
    local mask_table = data.raw["utility-constants"].default.default_trigger_target_mask_by_type[mask]
    if prototype_table and mask_table then
      for _, prototype in pairs(prototype_table) do
        if not prototype.trigger_target_mask then
          prototype.trigger_target_mask = mask_table
        end
      end
    end
  end
end

if bobmods.enemies.small_alien_artifacts ~= true then
  -- hide items
  for _, item_name in pairs({
    "bob-small-alien-artifact",
    "bob-small-alien-artifact-red",
    "bob-small-alien-artifact-orange",
    "bob-small-alien-artifact-yellow",
    "bob-small-alien-artifact-green",
    "bob-small-alien-artifact-blue",
    "bob-small-alien-artifact-purple",
  }) do
    if data.raw.item[item_name] then
      data.raw.item[item_name].hidden = true
    end
  end
  -- hide recipies
  for _, recipe_name in pairs({
    "bob-alien-artifact",
    "bob-alien-artifact-red-from-small",
    "bob-alien-artifact-orange-from-small",
    "bob-alien-artifact-yellow-from-small",
    "bob-alien-artifact-green-from-small",
    "bob-alien-artifact-blue-from-small",
    "bob-alien-artifact-purple-from-small",
  }) do
    if data.raw.recipe[recipe_name] then
      bobmods.lib.recipe.hide(recipe_name)
    end
  end
end

if mods["recycler"] then
  bobmods.lib.recipe.update_recycling_recipe_single("bob-artifact-radar", false)
end

if mods["space-age"] then
  data.raw.ammo["capture-robot-rocket"].localised_description = { "item-description.capture-robot-rocket-alt" }
  data.raw.ammo["capture-robot-rocket"].ammo_type.target_filter = {}
  for _, spawner in pairs(data.raw["unit-spawner"]) do
    if spawner.captured_spawner_entity then
      table.insert(data.raw.ammo["capture-robot-rocket"].ammo_type.target_filter, spawner.name)
    end
  end
end
