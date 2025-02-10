local sounds = {}
sounds.laser = {
  begin_sound = {
    {
      filename = "__bobwarfare__/sound/laser-beam-01.ogg",
      volume = 0.6,
    },
  },
  middle_sound = {
    {
      filename = "__bobwarfare__/sound/laser-beam-02.ogg",
      volume = 0.6,
    },
  },
  end_sound = {
    {
      filename = "__bobwarfare__/sound/laser-beam-03.ogg",
      volume = 0.6,
    },
  },
}

sounds.laserBeam = {
  sound = {
    category = "weapon",
    filename = "__base__/sound/fight/laser-beam.ogg",
    volume = 0.75,
    modifiers = volume_multiplier("main-menu", 2.5),
  },
  max_sounds_per_prototype = 1,
}

sounds.plasmaTurret = function(volume)
  return {
    {
      filename = "__bobwarfare__/sound/plasma-turret-01.ogg",
      volume = volume,
    },
  }
end

sounds.turretFire = {
  {
    filename = "__bobwarfare__/sound/turret_fire.ogg",
    volume = 0.5,
  },
}

sounds.rifle = {
  {
    filename = "__bobwarfare__/sound/Rifle1.ogg",
    volume = 0.35,
  },
  {
    filename = "__bobwarfare__/sound/Rifle2.ogg",
    volume = 0.35,
  },
  {
    filename = "__bobwarfare__/sound/Rifle3.ogg",
    volume = 0.35,
  },
}

sounds.sniperRifle = {
  {
    filename = "__bobwarfare__/sound/Sniper_Rifle1.ogg",
    volume = 1,
  },
  {
    filename = "__bobwarfare__/sound/Sniper_Rifle2.ogg",
    volume = 1,
  },
  {
    filename = "__bobwarfare__/sound/Sniper_Rifle3.ogg",
    volume = 1,
  },
  {
    filename = "__bobwarfare__/sound/Sniper_Rifle4.ogg",
    volume = 1,
  },
  {
    filename = "__bobwarfare__/sound/Sniper_Rifle5.ogg",
    volume = 1,
  },
}

sounds.tankTurret = {
  { filename = "__bobwarfare__/sound/Tank_Turret1.ogg", volume = 0.6 },
  {
    filename = "__bobwarfare__/sound/Tank_Turret2.ogg",
    volume = 0.6,
  },
  {
    filename = "__bobwarfare__/sound/Tank_Turret3.ogg",
    volume = 0.6,
  },
}

sounds.gunTurret = {
  {
    filename = "__bobwarfare__/sound/Gun_Turret1.ogg",
    volume = 0.6,
  },
  {
    filename = "__bobwarfare__/sound/Gun_Turret2.ogg",
    volume = 0.6,
  },
  {
    filename = "__bobwarfare__/sound/Gun_Turret3.ogg",
    volume = 0.6,
  },
}

sounds.plasmaExplosion = {
  {
    filename = "__bobwarfare__/sound/plasma-explosion-01.ogg",
    volume = 1.0,
  },
  {
    filename = "__bobwarfare__/sound/plasma-explosion-02.ogg",
    volume = 1.0,
  },
}

sounds.deconstruct_large = function(volume)
  return {
    switch_vibration_data = {
      filename = "__core__/sound/deconstruct-large.bnvib",
      gain = 0.25,
    },
    variations = {
      {
        filename = "__core__/sound/deconstruct-large.ogg",
        volume = volume,
      },
    },
  }
end

return sounds
