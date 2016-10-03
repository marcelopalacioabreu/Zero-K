unitDef = {
  unitname            = [[dynsupport1]],
  name                = [[Engineer Commander]],
  description         = [[Econ/Support Commander]],
  acceleration        = 0.25,
  activateWhenBuilt   = true,
  amphibious          = [[1]],
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
    description_de = [[Ökonomie/Untersützung Kommandant]],
    description_pl = [[Dowodca ekonomiczny/wsparcia]],
    helptext       = [[The esoteric Engineer chassis uses a more unorthodox weapon set. Though lacking armor or speed, this chassis is still favored due to its intrinsic buildpower bonus.]],
    helptext_de    = [[Der geheimnisvolle Support Commander nutzt ein eher unothodoxes Waffenset besteht. Jedoch fehlt es ihm an Rüstung und Geschwindigkeit, darum macht sich dieser Unterbau vor allem durch den inhärenten Baubonus beliebt.]],
    helptext_pl    = [[Support to Dowodca, ktory moze uzywac bardziej niekonwencjonalnych broni do wspierania swoich jednostek; ma takze wieksza moc budowy, niz pozostali Dowodcy. Mimo to jest dosyc wolny i ma niska wytrzymalosc.]],
    level = [[1]],
    statsname = [[dynsupport1]],
    soundok = [[heavy_bot_move]],
    soundselect = [[bot_select]],
    soundbuild = [[builder_start]],
    commtype = [[4]],
    aimposoffset   = [[0 15 0]],
	dynamic_comm   = 1,
  },

  energyUse           = 0,
  explodeAs           = [[ESTOR_BUILDINGEX]],
  footprintX          = 2,
  footprintZ          = 2,
  hideDamage          = false,
  iconType            = [[commander1]],
  idleAutoHeal        = 5,
  idleTime            = 0,
  leaveTracks         = true,
  losEmitHeight       = 40,
  mass                = 402,
  maxDamage           = 2000,
  maxSlope            = 36,
  maxVelocity         = 1.2,
  maxWaterDepth       = 5000,
  minCloakDistance    = 75,
  movementClass       = [[AKBOT2]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  norestrict          = [[1]],
  objectName          = [[commsupport.s3o]],
  script              = [[dynsupport.lua]],
  seismicSignature    = 16,
  selfDestructAs      = [[ESTOR_BUILDINGEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:flashmuzzle1]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
	  [[custom:NONE]],
    },

  },

  showNanoSpray       = false,
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
  workerTime          = 10,

  featureDefs         = {

    DEAD      = {
      description      = [[Wreckage - Engineer Commander]],
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
      description      = [[Debris - Engineer Commander]],
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

return lowerkeys({ dynsupport1 = unitDef })
