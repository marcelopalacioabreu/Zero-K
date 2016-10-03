unitDef = {
  unitname            = [[corvalk]],
  name                = [[Valkyrie]],
  description         = [[Air Transport]],
  acceleration        = 0.2,
  amphibious          = true,
  brakeRate           = 1.2,
  buildCostEnergy     = 100,
  buildCostMetal      = 100,
  builder             = false,
  buildPic            = [[CORVALK.png]],
  buildTime           = 100,
  canFly              = true,
  canGuard            = true,
  canload             = [[1]],
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP UNARMED]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[28 16 35]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAlt           = 140,

  customParams        = {
    airstrafecontrol = [[1]],
    description_bp = [[Transporte aéreo]],
    description_fr = [[Transport Aerien]],
	description_de = [[Lufttransport]],
	description_pl = [[Transport powietrzny]],
    helptext       = [[The Valkyrie is the basic air transport. It is ideal to ferry units to the front or make a drop deep behind enemy lines, but should not be used to land in areas with any kind of AA cover.]],
    helptext_bp    = [[A unidade de transporte básica de Logos. é usada para levar unidades rapidamente de um lugar a outro ou para depositalas dentro do território inimigo, mas n?o deve ser usada para aterrisagens em qualquer lugar com defesas anti-aéreas decentes.]],
    helptext_fr    = [[Le Valkyrie est une unit? de transport a?rien basique. Elle peut ?tre utilis?e pour a?roporter des troups sur le front comme derri?re les lignes ennemies. Il faut cependant ?viter ? tout prix les endroits couvert par de l'Anti-Air: il n'y survivrait pas.]],
	helptext_de    = [[Der Valkyrie ist ein einfacher Lufttransport. Er wird benutzt, um Einheiten an die Front zu befördern oder gezielte Abwürfe in das feindliche Territorium zu durchzuführen, allerdings mit der Einschränkung, sich ausdrücklich von jeder Luftabwehr fernzuhalten.]],
	helptext_pl    = [[Valkyrie to lekki transport. Nie moze przenosic ciezszych jednostek i jest bardzo delikatny, co ogranicza zastosowanie bojowe. Mimo to jest niesamowicie szybki i tani, dzieki czemu jest idealny do zadan logistycznych.]],
	midposoffset   = [[0 0 0]],
	modelradius    = [[15]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  hoverAttack         = true,
  iconType            = [[gunshiptransport]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  mass                = 90,
  maxDamage           = 300,
  maxVelocity         = 10.7,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[smallTransport.s3o]],
  script              = [[corvalk.lua]],
  releaseHeld         = true,
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:ATLAS_ENGINE]],
    },

  },

  side                = [[CORE]],
  sightDistance       = 300,
  transportCapacity   = 1,
  transportMass       = 330,
  transportSize       = 4,
  turninplace         = 0,
  turnRate            = 550,
  verticalSpeed       = 30,

  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Valkyrie]],
      blocking         = true,
      category         = [[corpses]],
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      object           = [[smalltrans_d.dae]],
    },


    HEAP  = {
      description      = [[Debris - Valkyrie]],
      blocking         = false,
      category         = [[heaps]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ corvalk = unitDef })
