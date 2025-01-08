if
  settings.startup["bobmods-enemies-enableartifacts"].value == true
  and settings.startup["bobmods-enemies-aliensdropartifacts"].value == true
then
  if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
    bobmods.enemies.small_alien_artifacts = true
  end

  if data.raw.unit["small-biter"] then
    if data.raw.unit["small-biter"].loot == nil then
      data.raw.unit["small-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["small-biter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["small-spitter"] then
    if data.raw.unit["small-spitter"].loot == nil then
      data.raw.unit["small-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["small-spitter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["medium-biter"] then
    if data.raw.unit["medium-biter"].loot == nil then
      data.raw.unit["medium-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["medium-biter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
    end
  end

  if data.raw.unit["medium-spitter"] then
    if data.raw.unit["medium-spitter"].loot == nil then
      data.raw.unit["medium-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["medium-spitter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 0.75 }
      )
    end
  end

  if data.raw.unit["big-biter"] ~= nil then
    if data.raw.unit["big-biter"].loot == nil then
      data.raw.unit["big-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["big-biter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
    end
  end

  if data.raw.unit["big-spitter"] ~= nil then
    if data.raw.unit["big-spitter"].loot == nil then
      data.raw.unit["big-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["big-spitter"].loot,
        { item = "small-alien-artifact", count_min = 1, count_max = 4, probability = 1 }
      )
    end
  end

  if data.raw.unit["behemoth-biter"] ~= nil then
    if data.raw.unit["behemoth-biter"].loot == nil then
      data.raw.unit["behemoth-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "small-alien-artifact", count_min = 4, count_max = 12, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["behemoth-biter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["behemoth-spitter"] ~= nil then
    if data.raw.unit["behemoth-spitter"].loot == nil then
      data.raw.unit["behemoth-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "small-alien-artifact", count_min = 4, count_max = 12, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["behemoth-spitter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["bob-big-piercing-biter"] ~= nil then
    if data.raw.unit["bob-big-piercing-biter"].loot == nil then
      data.raw.unit["bob-big-piercing-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-big-piercing-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-big-piercing-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-big-piercing-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-big-electric-spitter"] ~= nil then
    if data.raw.unit["bob-big-electric-spitter"].loot == nil then
      data.raw.unit["bob-big-electric-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-big-electric-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-big-electric-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-big-electric-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-huge-acid-biter"] ~= nil then
    if data.raw.unit["bob-huge-acid-biter"].loot == nil then
      data.raw.unit["bob-huge-acid-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-huge-acid-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 1, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-huge-acid-biter"].loot,
          { item = "small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-huge-acid-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-huge-acid-biter"].loot,
          { item = "small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-huge-explosive-biter"] ~= nil then
    if data.raw.unit["bob-huge-explosive-biter"].loot == nil then
      data.raw.unit["bob-huge-explosive-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-huge-explosive-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 1, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-huge-explosive-biter"].loot,
          { item = "small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-huge-explosive-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-huge-explosive-biter"].loot,
          { item = "small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-huge-explosive-spitter"] ~= nil then
    if data.raw.unit["bob-huge-explosive-spitter"].loot == nil then
      data.raw.unit["bob-huge-explosive-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-huge-explosive-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 1, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-huge-explosive-spitter"].loot,
          { item = "small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-huge-explosive-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-huge-explosive-spitter"].loot,
          { item = "small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-huge-acid-spitter"] ~= nil then
    if data.raw.unit["bob-huge-acid-spitter"].loot == nil then
      data.raw.unit["bob-huge-acid-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-huge-acid-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 1, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-huge-acid-spitter"].loot,
          { item = "small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-huge-acid-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 1, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-huge-acid-spitter"].loot,
          { item = "small-alien-artifact", count_min = 2, count_max = 5, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-giant-poison-biter"] ~= nil then
    if data.raw.unit["bob-giant-poison-biter"].loot == nil then
      data.raw.unit["bob-giant-poison-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-giant-poison-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-giant-poison-biter"].loot,
          { item = "small-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-giant-poison-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-giant-poison-biter"].loot,
          { item = "small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-giant-fire-biter"] ~= nil then
    if data.raw.unit["bob-giant-fire-biter"].loot == nil then
      data.raw.unit["bob-giant-fire-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-giant-fire-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-giant-fire-biter"].loot,
          { item = "small-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-giant-fire-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-giant-fire-biter"].loot,
          { item = "small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-giant-fire-spitter"] ~= nil then
    if data.raw.unit["bob-giant-fire-spitter"].loot == nil then
      data.raw.unit["bob-giant-fire-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-giant-fire-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-giant-fire-spitter"].loot,
          { item = "small-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-giant-fire-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-giant-fire-spitter"].loot,
          { item = "small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-giant-poison-spitter"] ~= nil then
    if data.raw.unit["bob-giant-poison-spitter"].loot == nil then
      data.raw.unit["bob-giant-poison-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-giant-poison-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 0.5 }
        )
        table.insert(
          data.raw.unit["bob-giant-poison-spitter"].loot,
          { item = "small-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-giant-poison-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 2, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-giant-poison-spitter"].loot,
          { item = "small-alien-artifact", count_min = 3, count_max = 6, probability = 1 }
        )
      end
    end
  end

  if data.raw.unit["bob-titan-biter"] ~= nil then
    if data.raw.unit["bob-titan-biter"].loot == nil then
      data.raw.unit["bob-titan-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-titan-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-biter"].loot,
          { item = "small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-biter"].loot,
          { item = "small-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-titan-biter"].loot,
          { item = "small-alien-artifact", count_min = 4, count_max = 12, probability = 1 }
        )
      end
    else
      table.insert(
        data.raw.unit["bob-titan-biter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["bob-titan-spitter"] ~= nil then
    if data.raw.unit["bob-titan-spitter"].loot == nil then
      data.raw.unit["bob-titan-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-titan-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-spitter"].loot,
          { item = "small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-spitter"].loot,
          { item = "small-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-titan-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-titan-spitter"].loot,
          { item = "small-alien-artifact", count_min = 4, count_max = 12, probability = 1 }
        )
      end
    else
      table.insert(
        data.raw.unit["bob-titan-spitter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["bob-behemoth-biter"] ~= nil then
    if data.raw.unit["bob-behemoth-biter"].loot == nil then
      data.raw.unit["bob-behemoth-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-behemoth-biter"].loot,
          { item = "small-alien-artifact", count_min = 5, count_max = 15, probability = 1 }
        )
      end
    else
      table.insert(
        data.raw.unit["bob-behemoth-biter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 3, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["bob-behemoth-spitter"] ~= nil then
    if data.raw.unit["bob-behemoth-spitter"].loot == nil then
      data.raw.unit["bob-behemoth-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablesmallartifacts"].value == true then
      if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
        )
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact", count_min = 1, count_max = 3, probability = 1 }
        )
      else
        table.insert(
          data.raw.unit["bob-behemoth-spitter"].loot,
          { item = "small-alien-artifact", count_min = 5, count_max = 15, probability = 1 }
        )
      end
    else
      table.insert(
        data.raw.unit["bob-behemoth-spitter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 3, probability = 0.5 }
      )
    end
  end

  if data.raw.unit["bob-leviathan-biter"] ~= nil then
    if data.raw.unit["bob-leviathan-biter"].loot == nil then
      data.raw.unit["bob-leviathan-biter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-blue", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-orange", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-purple", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-yellow", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-green", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact-red", count_min = 1, count_max = 1, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["bob-leviathan-biter"].loot,
        { item = "alien-artifact", count_min = 4, count_max = 12, probability = 1 }
      )
    end
  end

  if data.raw.unit["bob-leviathan-spitter"] ~= nil then
    if data.raw.unit["bob-leviathan-spitter"].loot == nil then
      data.raw.unit["bob-leviathan-spitter"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-blue", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-orange", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-purple", count_min = 1, count_max = 1, probability = 0.5 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-yellow", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-green", count_min = 1, count_max = 1, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact-red", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact", count_min = 1, count_max = 2, probability = 1 }
      )
    else
      table.insert(
        data.raw.unit["bob-leviathan-spitter"].loot,
        { item = "alien-artifact", count_min = 4, count_max = 12, probability = 1 }
      )
    end
  end
end

-- end of enemies drop artifacts here.

if settings.startup["bobmods-enemies-enableartifacts"].value == true then
  if data.raw["unit-spawner"]["biter-spawner"] then
    if data.raw["unit-spawner"]["biter-spawner"].loot == nil then
      data.raw["unit-spawner"]["biter-spawner"].loot = {}
    end
    table.insert(
      data.raw["unit-spawner"]["biter-spawner"].loot,
      { item = "alien-artifact", count_min = 5, count_max = 15, probability = 1 }
    )
  end

  if data.raw["unit-spawner"]["spitter-spawner"] then
    if data.raw["unit-spawner"]["spitter-spawner"].loot == nil then
      data.raw["unit-spawner"]["spitter-spawner"].loot = {}
    end
    table.insert(
      data.raw["unit-spawner"]["spitter-spawner"].loot,
      { item = "alien-artifact", count_min = 5, count_max = 15, probability = 1 }
    )
  end

  if data.raw["unit-spawner"]["bob-biter-spawner"] then
    if data.raw["unit-spawner"]["bob-biter-spawner"].loot == nil then
      data.raw["unit-spawner"]["bob-biter-spawner"].loot = {}
    end
    table.insert(
      data.raw["unit-spawner"]["bob-biter-spawner"].loot,
      { item = "alien-artifact", count_min = 5, count_max = 15, probability = 1 }
    )
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-biter-spawner"].loot,
        { item = "alien-artifact-blue", count_min = 1, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-biter-spawner"].loot,
        { item = "alien-artifact-purple", count_min = 1, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-biter-spawner"].loot,
        { item = "alien-artifact-green", count_min = 1, count_max = 3, probability = 1 }
      )
    end
  end

  if data.raw["unit-spawner"]["bob-spitter-spawner"] then
    if data.raw["unit-spawner"]["bob-spitter-spawner"].loot == nil then
      data.raw["unit-spawner"]["bob-spitter-spawner"].loot = {}
    end
    table.insert(
      data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
      { item = "alien-artifact", count_min = 5, count_max = 15, probability = 1 }
    )
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
        { item = "alien-artifact-orange", count_min = 1, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
        { item = "alien-artifact-yellow", count_min = 1, count_max = 3, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-spitter-spawner"].loot,
        { item = "alien-artifact-red", count_min = 1, count_max = 3, probability = 1 }
      )
    end
  end

  if data.raw["unit-spawner"]["bob-super-spawner"] then
    if data.raw["unit-spawner"]["bob-super-spawner"].loot == nil then
      data.raw["unit-spawner"]["bob-super-spawner"].loot = {}
    end
    table.insert(
      data.raw["unit-spawner"]["bob-super-spawner"].loot,
      { item = "alien-artifact", count_min = 20, count_max = 60, probability = 1 }
    )
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-blue", count_min = 4, count_max = 12, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-orange", count_min = 4, count_max = 12, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-purple", count_min = 4, count_max = 12, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-yellow", count_min = 4, count_max = 12, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-green", count_min = 4, count_max = 12, probability = 1 }
      )
      table.insert(
        data.raw["unit-spawner"]["bob-super-spawner"].loot,
        { item = "alien-artifact-red", count_min = 4, count_max = 12, probability = 1 }
      )
    end
  end

  if data.raw.turret["small-worm-turret"] then
    if data.raw.turret["small-worm-turret"].loot == nil then
      data.raw.turret["small-worm-turret"].loot = {}
    end
    table.insert(
      data.raw.turret["small-worm-turret"].loot,
      { item = "alien-artifact", count_min = 1, count_max = 3, probability = 1 }
    )
  end

  if data.raw.turret["medium-worm-turret"] then
    if data.raw.turret["medium-worm-turret"].loot == nil then
      data.raw.turret["medium-worm-turret"].loot = {}
    end
    table.insert(
      data.raw.turret["medium-worm-turret"].loot,
      { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
    )
  end

  if data.raw.turret["big-worm-turret"] then
    if data.raw.turret["big-worm-turret"].loot == nil then
      data.raw.turret["big-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["big-worm-turret"].loot,
        { item = "alien-artifact-purple", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["big-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["big-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-big-explosive-worm-turret"] then
    if data.raw.turret["bob-big-explosive-worm-turret"].loot == nil then
      data.raw.turret["bob-big-explosive-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["bob-big-explosive-worm-turret"].loot,
        { item = "alien-artifact-yellow", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["bob-big-explosive-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["bob-big-explosive-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-big-poison-worm-turret"] then
    if data.raw.turret["bob-big-poison-worm-turret"].loot == nil then
      data.raw.turret["bob-big-poison-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["bob-big-poison-worm-turret"].loot,
        { item = "alien-artifact-green", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["bob-big-poison-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["bob-big-poison-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-big-fire-worm-turret"] then
    if data.raw.turret["bob-big-fire-worm-turret"].loot == nil then
      data.raw.turret["bob-big-fire-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["bob-big-fire-worm-turret"].loot,
        { item = "alien-artifact-red", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["bob-big-fire-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["bob-big-fire-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-big-piercing-worm-turret"] then
    if data.raw.turret["bob-big-piercing-worm-turret"].loot == nil then
      data.raw.turret["bob-big-piercing-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["bob-big-piercing-worm-turret"].loot,
        { item = "alien-artifact-blue", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["bob-big-piercing-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["bob-big-piercing-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-big-electric-worm-turret"] then
    if data.raw.turret["bob-big-electric-worm-turret"].loot == nil then
      data.raw.turret["bob-big-electric-worm-turret"].loot = {}
    end
    if settings.startup["bobmods-enemies-enablenewartifacts"].value == true then
      table.insert(
        data.raw.turret["bob-big-electric-worm-turret"].loot,
        { item = "alien-artifact-orange", count_min = 1, count_max = 2, probability = 1 }
      )
      table.insert(
        data.raw.turret["bob-big-electric-worm-turret"].loot,
        { item = "alien-artifact", count_min = 2, count_max = 4, probability = 1 }
      )
    else
      table.insert(
        data.raw.turret["bob-big-electric-worm-turret"].loot,
        { item = "alien-artifact", count_min = 3, count_max = 6, probability = 1 }
      )
    end
  end

  if data.raw.turret["bob-giant-worm-turret"] then
    if data.raw.turret["bob-giant-worm-turret"].loot == nil then
      data.raw.turret["bob-giant-worm-turret"].loot = {}
    end
    table.insert(
      data.raw.turret["bob-giant-worm-turret"].loot,
      { item = "alien-artifact", count_min = 4, count_max = 8, probability = 1 }
    )
  end

  if data.raw.turret["behemoth-worm-turret"] then
    if data.raw.turret["behemoth-worm-turret"].loot == nil then
      data.raw.turret["behemoth-worm-turret"].loot = {}
    end
    table.insert(
      data.raw.turret["behemoth-worm-turret"].loot,
      { item = "alien-artifact", count_min = 5, count_max = 10, probability = 1 }
    )
  end
end

if bobmods.enemies.small_alien_artifacts ~= true then
  -- hide items
  for _, item_name in pairs({
    "small-alien-artifact",
    "small-alien-artifact-red",
    "small-alien-artifact-orange",
    "small-alien-artifact-yellow",
    "small-alien-artifact-green",
    "small-alien-artifact-blue",
    "small-alien-artifact-purple",
  }) do
    if data.raw.item[item_name] then
      data.raw.item[item_name].hidden = true
    end
  end
  -- hide recipies
  for _, recipe_name in pairs({
    "alien-artifact",
    "alien-artifact-red-from-small",
    "alien-artifact-orange-from-small",
    "alien-artifact-yellow-from-small",
    "alien-artifact-green-from-small",
    "alien-artifact-blue-from-small",
    "alien-artifact-purple-from-small",
  }) do
    if data.raw.recipe[recipe_name] then
      bobmods.lib.recipe.hide(recipe_name)
    end
  end
end
