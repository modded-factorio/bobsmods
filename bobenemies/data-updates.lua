if
  settings.startup["bobmods-enemies-enableartifacts"].value == true
  and settings.startup["bobmods-enemies-aliensdropartifacts"].value == true
then
  if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    bobmods.enemies.small_alien_artifacts = true

    if data.raw.unit["small-biter"].loot == nil then
      data.raw.unit["small-biter"].loot = {}
    end
    table.insert(
      data.raw.unit["small-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )

    if data.raw.unit["small-spitter"].loot == nil then
      data.raw.unit["small-spitter"].loot = {}
    end
    table.insert(
      data.raw.unit["small-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )

    if data.raw.unit["medium-biter"].loot == nil then
      data.raw.unit["medium-biter"].loot = {}
    end
    table.insert(
      data.raw.unit["medium-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
    )

    if data.raw.unit["medium-spitter"].loot == nil then
      data.raw.unit["medium-spitter"].loot = {}
    end
    table.insert(
      data.raw.unit["medium-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
    )

    if data.raw.unit["big-biter"].loot == nil then
      data.raw.unit["big-biter"].loot = {}
    end
    table.insert(
      data.raw.unit["big-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )

    if data.raw.unit["big-spitter"].loot == nil then
      data.raw.unit["big-spitter"].loot = {}
    end
    table.insert(
      data.raw.unit["big-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )

    table.insert(
      data.raw.unit["bob-huge-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
    )
    table.insert(
      data.raw.unit["bob-huge-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
    )
    table.insert(
      data.raw.unit["bob-giant-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.unit["bob-giant-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.unit["bob-titan-biter"].loot,
      { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.unit["bob-titan-spitter"].loot,
      { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
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
        { item = "bob-small-alien-artifact", count_min = 7, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 2, count_max = 4, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 2, count_max = 4, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 2, count_max = 4, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 7, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 2, count_max = 4, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 2, count_max = 4, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 2, count_max = 4, probability = 0.5 }
      )

      --Duplicated with and without small artifacts
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.25 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.75 }
      )

      table.insert(
        data.raw.unit["bob-small-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 1, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-medium-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.75 }
      )

      table.insert(
        data.raw.unit["bob-big-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 4, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-huge-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 2, count_max = 5, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-giant-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 3, count_max = 6, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 5, count_max = 11, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-purple", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-yellow", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-green", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-red", count_min = 6, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.4 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 3, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.4 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 3, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-small-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-small-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )

      table.insert(
        data.raw.unit["bob-medium-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-medium-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )

      table.insert(
        data.raw.unit["bob-big-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-big-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-huge-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-huge-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-giant-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-giant-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 5, count_max = 11, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-small-alien-artifact", count_min = 10, count_max = 16, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 3, count_max = 10, probability = 1 }
      )
    end
  else
    table.insert(
      data.raw.unit["bob-titan-biter"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.unit["bob-titan-spitter"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.unit["behemoth-biter"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.unit["behemoth-spitter"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )

    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.25 }
      )

      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.75 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.25 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.75 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact-blue", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact-orange", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact-purple", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact-green", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact-green", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact-red", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact-red", count_min = 5, count_max = 9, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-piercing-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-piercing-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-piercing-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-piercing-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-electric-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-electric-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-electric-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-electric-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-acid-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-acid-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-acid-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-acid-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-explosive-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-explosive-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-explosive-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-explosive-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-poison-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-poison-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-poison-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-poison-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )

      table.insert(
        data.raw.unit["bob-titan-fire-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-titan-fire-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-biter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-behemoth-fire-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-biter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-fire-spitter"].loot,
        { item = "bob-alien-artifact", count_min = 5, count_max = 9, probability = 1 }
      )
    end
  end
end

-- end of enemies drop artifacts here.

if settings.startup["bobmods-enemies-enableartifacts"].value == true then
  if data.raw["unit-spawner"]["biter-spawner"].loot == nil then
    data.raw["unit-spawner"]["biter-spawner"].loot = {}
  end
  table.insert(
    data.raw["unit-spawner"]["biter-spawner"].loot,
    { item = "bob-alien-artifact", count_min = 5, count_max = 15, probability = 1 }
  )

  if data.raw["unit-spawner"]["spitter-spawner"].loot == nil then
    data.raw["unit-spawner"]["spitter-spawner"].loot = {}
  end
  table.insert(
    data.raw["unit-spawner"]["spitter-spawner"].loot,
    { item = "bob-alien-artifact", count_min = 5, count_max = 15, probability = 1 }
  )

  table.insert(
    data.raw["unit-spawner"]["bob-biter-spawner"].loot,
    { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
  )
  table.insert(
    data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
    { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
  )

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-biter-spawner"].loot,
      { item = "bob-alien-artifact-blue", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-spitter-spawner"].loot,
      { item = "bob-alien-artifact-blue", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-biter-spawner"].loot,
      { item = "bob-alien-artifact-orange", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-spitter-spawner"].loot,
      { item = "bob-alien-artifact-orange", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-biter-spawner"].loot,
      { item = "bob-alien-artifact-purple", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-spitter-spawner"].loot,
      { item = "bob-alien-artifact-purple", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-biter-spawner"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-biter-spawner"].loot,
      { item = "bob-alien-artifact-green", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-spitter-spawner"].loot,
      { item = "bob-alien-artifact-green", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-biter-spawner"].loot,
      { item = "bob-alien-artifact-red", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-spitter-spawner"].loot,
      { item = "bob-alien-artifact-red", count_min = 8, count_max = 22, probability = 1 }
    )

    if settings.startup["bobmods-enemies-superspawner"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 20, count_max = 36, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 2, count_max = 10, probability = 1 }
      )

      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-blue", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-orange", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-purple", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-green", count_min = 2, count_max = 10, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact-red", count_min = 20, count_max = 36, probability = 1 }
      )
    end
  else
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-piercing-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-electric-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-acid-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-poison-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-biter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )
    table.insert(
      data.raw["unit-spawner"]["bob-fire-spitter-spawner"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 22, probability = 1 }
    )

    if settings.startup["bobmods-enemies-superspawner"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-piercing-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-electric-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-acid-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-explosive-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-poison-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-fire-super-spawner"].loot,
        { item = "bob-alien-artifact", count_min = 32, count_max = 84, probability = 1 }
      )
    end
  end

  if data.raw.turret["small-worm-turret"].loot == nil then
    data.raw.turret["small-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["small-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
  )

  if data.raw.turret["medium-worm-turret"].loot == nil then
    data.raw.turret["medium-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["medium-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
  )

  if data.raw.turret["big-worm-turret"].loot == nil then
    data.raw.turret["big-worm-turret"].loot = {}
  end
  table.insert(
    data.raw.turret["big-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
  )

  table.insert(
    data.raw.turret["bob-huge-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
  )

  table.insert(
    data.raw.turret["bob-giant-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
  )

  table.insert(
    data.raw.turret["bob-titan-worm-turret"].loot,
    { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
  )

  if data.raw.turret["behemoth-worm-turret"].loot == nil then
    data.raw.turret["behemoth-worm-turret"].loot = {}
  end

  if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 8, count_max = 14, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-green", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
    )
    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 3, count_max = 7, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 3, count_max = 9, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 4, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-red", count_min = 5, count_max = 11, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
    )
  else
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-leviathan-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-piercing-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-electric-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-acid-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-explosive-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-poison-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )

    table.insert(
      data.raw.turret["bob-small-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-medium-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-big-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-huge-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-giant-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-titan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 6, count_max = 12, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-behemoth-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 9, count_max = 15, probability = 1 }
    )
    table.insert(
      data.raw.turret["bob-leviathan-fire-worm-turret"].loot,
      { item = "bob-alien-artifact", count_min = 14, count_max = 20, probability = 1 }
    )
  end
end

if data.raw.item["bob-resin"] then
  data.raw["simple-entity"]["bob-hardened-bile"].minable.results =
    { { type = "item", name = "bob-resin", amount_min = 10, amount_max = 16 } }
end

if mods["bobplates"] then
  bobmods.lib.recipe.replace_ingredient("bob-artifact-radar", "iron-gear-wheel", "bob-steel-gear-wheel")
  if data.raw.technology["bob-artifact-processing"] then
    bobmods.lib.tech.remove_prerequisite("bob-artifact-processing", "chemical-science-pack")
    bobmods.lib.tech.add_prerequisite("bob-artifact-processing", "bob-chemical-processing-2")
    bobmods.lib.tech.remove_science_pack("bob-artifact-processing", "chemical-science-pack")
  end
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

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe_single("bob-artifact-radar", false)
end
