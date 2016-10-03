unitDef = {
  unitname            = [[commsupport1]],
  name                = [[Support Commander]],
  description         = [[Econ/Support Commander, Builds at 12 m/s]],
  acceleration        = 0.25,
  activateWhenBuilt   = true,
  amphibious          = [[1]],
  autoHeal            = 5,
  brakeRate           = 0.45,
  buildCostEnergy     = 1200,
  buildCostMetal      = 1200,
  buildDistance       = 250,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[commsupport.png]],
  buildTime           = 1200,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canreclamate        = [[1]],
  category            = [[LAND]],
  commander           = true,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[45 50 45]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[CylY]],  
  corpse              = [[DEAD]],

  customParams        = {
    cloakstealth = [[1]],
    description_de = [[Ökonomie/Untersützung Kommandant, Baut mit 12 M/s]],
    description_pl = [[Dowodca ekonomiczny/wsparcia, moc 12 m/s]],
    helptext       = [[The esoteric Support Commander uses a more unorthodox weapon set. Though lacking armor or speed, this chassis is still favored due to its intrinsic buildpower bonus.]],
    helptext_de    = [[Der geheimnisvolle Support Commander nutzt ein eher unothodoxes Waffenset besteht. Jedoch fehlt es ihm an Rüstung und Geschwindigkeit, darum macht sich dieser Unterbau vor allem durch den inhärenten Baubonus beliebt.]],
    helptext_pl    = [[Support to Dowodca, ktory moze uzywac bardziej niekonwencjonalnych broni do wspierania swoich jednostek; ma takze wieksza moc budowy, niz pozostali Dowodcy. Mimo to jest dosyc wolny i ma niska wytrzymalosc.]],
    level = [[1]],
    statsname = [[commsupport1]],
    soundok = [[heavy_bot_move]],
    soundselect = [[bot_select]],
    soundbuild = [[builder_start]],
    commtype = [[4]],
    aimposoffset   = [[0 15 0]],
  },

  energyMake          = 6,
  energyUse           = 0,
  explodeAs           = [[ESTOR_BUILDINGEX]],
  footprintX          = 2,
  footprintZ          = 2,
  hideDamage          = false,
  iconType            = [[commander1]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  losEmitHeight       = 40,
  mass                = 402,
  maxDamage           = 2000,
  maxSlope            = 36,
  maxVelocity         = 1.2,
  maxWaterDepth       = 5000,
  metalMake           = 4,
  minCloakDistance    = 75,
  movementClass       = [[AKBOT2]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  norestrict          = [[1]],
  objectName          = [[commsupport.s3o]],
  script              = [[commsupport.lua]],
  seismicSignature    = 16,
  selfDestructAs      = [[ESTOR_BUILDINGEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:flashmuzzle1]],
	  [[custom:NONE]],
    },

  },

  showNanoSpray       = false,
  showPlayerName      = true,
  side                = [[ARM]],
  sightDistance       = 500,
  smoothAnim          = true,
  sonarDistance       = 300,
  TEDClass            = [[COMMANDER]],
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 22,
  terraformSpeed      = 600,
  turnRate            = 1350,
  upright             = true,
  workerTime          = 12,

  weapons             = {

	[1] = {
      def                = [[FAKELASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],	
	}, 
  
    [5] = {
      def                = [[GAUSS]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    FAKELASER     = {
      name                    = [[Fake Laser]],
      areaOfEffect            = 12,
      beamTime                = 0.1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0,
      },

      duration                = 0.11,
      explosionGenerator      = [[custom:flash1green]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      laserFlareSize          = 5.53,
      minIntensity            = 1,
      range                   = 450,
      reloadtime              = 0.11,
      rgbColor                = [[0 1 0]],
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 5.53,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 900,
    },
	
    GAUSS = {
      name                    = [[Gauss Rifle]],
      alphaDecay              = 0.12,
      areaOfEffect            = 16,
      avoidfeature            = false,
      bouncerebound           = 0.15,
      bounceslip              = 1,
      cegTag                  = [[gauss_tag_l]],
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 140,
        planes  = 140,
        subs    = 8,
      },
      
      customParams = {
        single_hit = true,
      },

      explosionGenerator      = [[custom:gauss_hit_l]],
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      noExplode               = true,
      noSelfDamage            = true,
      numbounce               = 40,
      range                   = 420,
      reloadtime              = 2.5,
      rgbColor                = [[0.5 1 1]],
      separation              = 0.5,
      size                    = 0.8,
      sizeDecay               = -0.1,
      soundHit                = [[weapon/gauss_hit]],
      soundHitVolume          = 3,
      soundStart              = [[weapon/gauss_fire]],
      soundStartVolume        = 2.5,
      stages                  = 32,
      turret                  = true,
      waterbounce             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2200,
    },

  },


  featureDefs         = {

    DEAD      = {
      description      = [[Wreckage - Support Commander]],
      blocking         = true,
      category         = [[corpses]],
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      object           = [[commsupport_dead.s3o]],
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP      = {
      description      = [[Debris - Support Commander]],
      blocking         = false,
      category         = [[heaps]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      hitdensity       = [[100]],
      object           = [[debris2x2c.s3o]],
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ commsupport1 = unitDef })
