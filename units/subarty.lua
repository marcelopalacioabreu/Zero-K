unitDef = {
  unitname               = [[subarty]],
  name                   = [[Serpent]],
  description            = [[Precise Artillery/Anti-Heavy Submarine]],
  acceleration           = 0.1,
  activateWhenBuilt      = true,
  brakeRate              = 0.3,
  buildCostEnergy        = 1000,
  buildCostMetal         = 1000,
  builder                = false,
  buildPic               = [[serpent.png]],
  buildTime              = 1000,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 3 0]],
  collisionVolumeScales  = [[50 12 70]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Sous-Marin Artilleur]],
	description_de = [[Scharfschützen U-Boot]],
	description_pl = [[Lodz podwodna dalekiego zasiegu]],
    helptext       = [[The Serpent is truly a nightmare, for its long-range, deadly accurate, high lethality heavy torpedoes can sink almost any ship in a few shots. It is however extremely expensive and not particularly agile.]],
    helptext_fr    = [[Le Serpent est un véritable cauchemard, grâce r ses torpilles haute vélocité r charge creuse, il peut couler depuis de les profondeurs nimporte quel navire ennemi. Relativement lent et peu blindé, sa portée lui permet de rester loin des combats.]],
	helptext_de    = [[Der Serpent ist wahrlich ein Albtraum. Seine weitreichenden, tödlich genauen und hochtödlichen, schweren Torpedos können fast jedes Schiff mit ein paar Schüssen zum Sinken bringen. Es ist allerdings extrem teuer und nicht sehr wendig.]],
	helptext_pl    = [[Serpent jest bardzo drogi i ma niska wytrzymalosc, ale jego potezne torpedy dalekiego zasiegu zatapiaja wszystko, co plywa.]],
	modelradius    = [[15]],
	aimposoffset   = [[0 -5 0]],
	midposoffset   = [[0 -5 0]],
	turnatfullspeed = [[1]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[snipersub]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  mass                   = 457,
  maxDamage              = 1000,
  maxVelocity            = 1.8,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[UBOAT3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP HOVER]],
  objectName             = [[serpent]],
  script                 = [[subarty.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  side                   = [[ARM]],
  sightDistance          = 660,
  smoothAnim             = true,
  sonarDistance          = 300,
  turninplace            = 0,
  turnRate               = 250,
  upright                = true,
  waterline              = 25,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[STANDOFF_TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 60,
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    STANDOFF_TORPEDO = {
      name                    = [[Long Range Torpedo]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      burnblow                = true,
      canattackground         = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 900.5,
        subs    = 900.5,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fireSubmersed           = true,
      flightTime              = 8,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
	  leadlimit               = 0,
      model                   = [[wep_t_barracuda.s3o]],
      range                   = 900,
      reloadtime              = 8,
      soundHit                = [[explosion/wet/ex_underwater]],
      soundHitVolume          = 12,
      soundStart              = [[weapon/torpedo]],
      soundStartVolume        = 7,
      startVelocity           = 150,
      tolerance               = 32767,
      tracks                  = true,
      turnRate                = 3800,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 25,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 250,
    },

  },


  featureDefs            = {

    DEAD = {
      description      = [[Wreckage - Serpent]],
      blocking         = false,
      category         = [[corpses]],
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[10]],
      hitdensity       = [[100]],
      object           = [[serpent_dead]],
    },


    HEAP = {
      description      = [[Debris - Serpent]],
      blocking         = false,
      category         = [[heaps]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[4]],
      hitdensity       = [[100]],
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ subarty = unitDef })
