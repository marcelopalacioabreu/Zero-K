unitDef = {
  unitname            = [[bomberstrike]],
  name                = [[Kestrel]],
  description         = [[Tactical Strike Bomber]],
  amphibious          = true,
  buildCostEnergy     = 400,
  buildCostMetal      = 400,
  builder             = false,
  buildPic            = [[bomberstrike.png]],
  buildTime           = 400,
  canAttack           = true,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[80 10 30]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],
  cruiseAlt           = 160,

  customParams        = {
    description_pl = [[Bombowiec taktyczny]],
    helptext       = [[The Kestrel launches short-range surface attack missiles that can also hit submarines. It is the best bomber for picking off single mobile targets.]],
    helptext_pl    = [[Kestrel wystrzeliwuje rakiety krotkiego zasiegu, ktore moga trafic cele naziemne, nawodne lub podwodne. Sposrod bombowcow najlepiej nadaje sie do niszczenia pojedynczych jednostek.]],
    --modelradius    = [[10]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bomber]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  mass                = 234,
  maxAcc              = 0.5,
  maxDamage           = 900,
  maxElevator         = 0.02,
  maxRudder           = 0.006,
  maxFuel             = 1000000,
  maxVelocity         = 7.8,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName          = [[bomberstrike.s3o]],
  script              = [[bomberstrike.lua]],
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {},

  side                = [[CORE]],
  sightDistance       = 660,
  turnRadius          = 80,
  workerTime          = 0,

  weapons             = {
    {
      def                = [[MISSILE]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 90,      
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER SINK SUB]],
    },
  },


  weaponDefs          = {
  
    MISSILE = {
      name                    = [[Heavy Missiles]],
      areaOfEffect            = 96,
      cegTag                  = [[missiletrailgreen]],
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 450,
        planes  = 450,
      },

      fireStarter             = 70,
      fixedlauncher           = true,
      flightTime              = 3.5,
      impulseBoost            = 0.75,
      impulseFactor           = 0.3,
      interceptedByShieldType = 2,
      model                   = [[wep_m_dragonsfang.s3o]],
      projectiles             = 2,
      range                   = 360,
      reloadtime              = 10,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med5]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/missile/rapid_rocket_fire2]],
      soundStartVolume        = 7,
      startVelocity           = 190,
      texture2                = [[lightsmoketrail]],
      tracks                  = true,
      trajectoryHeight        = 0.4,
      turnRate                = 24000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 90,
      weaponTimer             = 3,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 200,
    },
    
  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Kestrel]],
      blocking         = true,
      category         = [[corpses]],
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      object           = [[bomberstrike_dead.s3o]],
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Kestrel]],
      blocking         = false,
      category         = [[heaps]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      object           = [[debris2x2c.s3o]],
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ bomberstrike = unitDef })
