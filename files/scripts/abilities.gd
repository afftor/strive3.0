
extends Node

var abilitydict = {
attack = {
name = 'Attack',
code = 'attack',
iconnorm = load("res://files/buttons/abils/Attack.png"),
iconpressed = load("res://files/buttons/abils/Attack3.png"),
icondisabled = load("res://files/buttons/abils/Attack2.png"),
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name goes for straight hit. ',
target = 'enemy',
effect = null,
can_miss = true,
power = 1,
cooldown = 0,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage'],
reqs = {level = 0},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 0,
},
"pass" : {
name = 'Pass',
code = 'pass',
learnable = false,
description = 'Do nothing.',
usetext = '$name does nothing. ',
target = 'self',
effect = null,
can_miss = false,
power = 0,
cooldown = 0,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = [],
reqs = {level = 0}
},
escape = {
name = 'Escape',
code = 'escape',
iconnorm = load("res://files/buttons/abils/Escape.png"),
iconpressed = load("res://files/buttons/abils/Escape3.png"),
icondisabled = load("res://files/buttons/abils/Escape2.png"),
learnable = false,
description = 'Attempts to escape from the fight.',
usetext = '$name tries to escape from the fight. ',
target = 'self',
effect = null,
can_miss = false,
power = 1,
cooldown = 4,
type = 'physical',
price = 0,
costenergy = 10,
costmana = 0,
costother = '',
attributes = [],
reqs = {level = 0},
aipatterns = ['any'],
aitargets = 'self',
aiselfcond = 'combatant.health < 20',
aitargetcond = 'any',
aipriority = 10,
},
debilitate = {
name = 'Debilitate',
code = 'debilitate',
iconnorm = load("res://files/buttons/abils/Debilitate.png"),
iconpressed = load("res://files/buttons/abils/Debilitate3.png"),
icondisabled = load("res://files/buttons/abils/Debilitate2.png"),
learnable = true,
description = 'Light attack aimed to slow enemy down.',
usetext = '$name goes for swift, maiming strike. ',
target = 'enemy',
effect = 'debilitateeffect',
can_miss = true,
power = 0.65,
cooldown = 2,
type = 'physical',
price = 100,
costenergy = 3,
costmana = 0,
costother = '',
attributes = ['damage', 'debuff'],
reqs = {'level' : 1, 'sagi' : 1},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'notineffect',
aipriority = 3,
},
protect = {
name = 'Protect',
code = 'protect',
iconnorm = load("res://files/buttons/abils/Protect.png"),
iconpressed = load("res://files/buttons/abils/Protect3.png"),
icondisabled = load("res://files/buttons/abils/Protect2.png"),
learnable = false,
description = 'Shields target ally from incoming attacks. Takes less physical and energy damage from attacks. ',
usetext = '$name moves in to protect $targetname. ',
target = 'ally',
effect = null,
can_miss = true,
power = 1,
cooldown = 0,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = [],
reqs = {level = 0},
aipatterns = ['support'],
aitargets = '1ally',
aiselfcond = 'combatant.health > 50',
aitargetcond = 'any',
aipriority = 2,
},
heal = {
name = 'Heal',
code = 'heal',
iconnorm = load("res://files/buttons/abils/Heal.png"),
iconpressed = load("res://files/buttons/abils/Heal3.png"),
icondisabled = load("res://files/buttons/abils/Heal2.png"),
learnable = true,
requiredspell = 'heal',
description = 'Restores some health to the target. Requires mana to use. ',
usetext = '$name supports $targetname with a [color=aqua]Healing Spell[/color]. ',
target = 'ally',
effect = null,
can_miss = false,
power = 1,
cooldown = 3,
type = 'spell',
price = 100,
costenergy = 0,
costmana = 10,
costother = '',
attributes = [],
reqs = {'level' : 1, 'smaf' : 1},
aipatterns = ['support'],
aitargets = '1ally',
aiselfcond = 'any',
aitargetcond = 'target.health < 50',
aipriority = 4,
},
sedation = {
name = 'Sedation',
code = 'sedation',
iconnorm = load("res://files/buttons/abils/Sedation.png"),
iconpressed = load("res://files/buttons/abils/Sedation3.png"),
icondisabled = load("res://files/buttons/abils/Sedation2.png"),
learnable = true,
requiredspell = 'sedation',
description = "Slows target's reaction, lowering it's speed. ",
usetext = '$name casts Sedation onto $targetname. ',
target = 'enemy',
effect = 'sedationeffect',
can_miss = true,
power = 1,
cooldown = 5,
type = 'spell',
price = 150,
costenergy = 0,
costmana = 10,
costother = '',
attributes = [],
reqs = {'level' : 2, 'smaf' : 1},
aipatterns = ['support'],
aitargets = '1ally',
aiselfcond = 'any',
aitargetcond = 'target.health < 50',
aipriority = 4,
},
barrier = {
name = 'Barrier',
code = 'barrier',
iconnorm = load("res://files/buttons/abils/Barrier.png"),
iconpressed = load("res://files/buttons/abils/Barrier3.png"),
icondisabled = load("res://files/buttons/abils/Barrier2.png"),
learnable = true,
requiredspell = 'barrier',
description = "Creates a magical barrier around target, raising it's armor. ",
usetext = '$name casts Barrier onto $targetname. ',
target = 'ally',
effect = 'barriereffect',
can_miss = false,
power = 1,
cooldown = 4,
type = 'spell',
price = 150,
costenergy = 0,
costmana = 12,
costother = '',
attributes = ['buff'],
reqs = {'level' : 2, 'smaf' : 2},
aipatterns = ['support'],
aitargets = '1ally',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 3,
},
shackle = {
name = 'Shackle',
code = 'shackle',
iconnorm = load("res://files/buttons/abils/Shackle.png"),
iconpressed = load("res://files/buttons/abils/Shackle3.png"),
icondisabled = load("res://files/buttons/abils/Shackle2.png"),
learnable = true,
requiredspell = 'shackle',
description = "Ties single target to ground making escape impossible. ",
usetext = '$name casts Shackle onto $targetname. ',
target = 'enemy',
effect = 'shackleeffect',
can_miss = false,
power = 0,
cooldown = 5,
type = 'spell',
price = 150,
costenergy = 0,
costmana = 10,
costother = '',
attributes = ['debuff'],
reqs = {'level' : 3, 'smaf' : 2},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 5,
},
mindblast = {
name = 'Mind Blast',
code = 'mindblast',
iconnorm = load("res://files/buttons/abils/Mindblast.png"),
iconpressed = load("res://files/buttons/abils/Mindblast3.png"),
icondisabled =load("res://files/buttons/abils/Mindblast2.png"),
learnable = true,
description = "Deals damage to single target enemy based on your Magic Affinity. ",
usetext = '$name [color=aqua]uses Mind Blast[/color] at $targetname. ',
target = 'enemy',
effect = null,
can_miss = true,
power = 2,
cooldown = 2,
type = 'spell',
price = 100,
costenergy = 3,
costmana = 3,
costother = '',
attributes = ['damage'],
reqs = {'level' : 2, 'smaf' : 1},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 6,
},
acidspit = {
name = 'Acid Spit',
code = 'acidspit',
learnable = true,
iconnorm = load("res://files/buttons/abils/Acid spit.png"),
iconpressed = load("res://files/buttons/abils/Acid spit3.png"),
icondisabled = load("res://files/buttons/abils/Acid spit2.png"),
description = "Deals damage to single target enemy and recudes it's armor. Effect grows with Magic Affinity. ",
usetext = '$name [color=aqua]Spits Acid[/color] at $targetname. ',
target = 'enemy',
effect = 'acidspiteffect',
can_miss = true,
power = 4,
cooldown = 4,
type = 'spell',
price = 200,
costenergy = 0,
costmana = 4,
costother = '',
attributes = ['damage','debuff'],
reqs = {'level' : 4, 'smaf' : 4},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 4,
},
heavystike = {
name = 'Heavy Strike',
code = 'heavystike',
iconnorm = load("res://files/buttons/abils/Heavy Strike.png"),
iconpressed = load("res://files/buttons/abils/Heavy Strike3.png"),
icondisabled = load("res://files/buttons/abils/Heavy Strike3.png"),
learnable = true,
description = "A slow, yet powerful attack. ",
usetext = '$name goes for a powerful swing at $targetname. ',
target = 'enemy',
effect = null,
can_miss = true,
power = 1.75,
cooldown = 3,
type = 'physical',
price = 250,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage'],
reqs = {'level' : 3, 'sstr' : 2},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 3,
},
aimedstrike = {
name = 'Aimed Strike',
code = 'aimedstrike',
iconnorm = load("res://files/buttons/abils/Aimed strike.png"),
iconpressed = load("res://files/buttons/abils/Aimed strike3.png"),
icondisabled = load("res://files/buttons/abils/Aimed strike2.png"),
learnable = true,
description = "Powerful, quick strike ignoring target's armor. ",
usetext = '$name goes for an Aimed Strike at $targetname. ',
target = 'enemy',
effect = null,
can_miss = true,
power = 1.5,
cooldown = 4,
type = 'physical',
price = 250,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage','physpen'],
reqs = {'level' : 2, 'sagi' : 2},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 3,
},
leechingstrike = {
name = 'Leeching Strike',
code = 'leechingstrike',
iconnorm = load("res://files/buttons/abils/Lich strike.png"),
iconpressed = load("res://files/buttons/abils/Lich strike3.png"),
icondisabled = load("res://files/buttons/abils/Lich strike2.png"),
learnable = true,
description = "Mana infused attack which restores health based on dealt damage. ",
usetext = '$name launches Leeching Strike at $targetname. ',
target = 'enemy',
effect = null,
can_miss = true,
power = 1.2,
cooldown = 5,
type = 'physical',
price = 300,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage', 'lifesteal'],
reqs = {'level' : 4, 'sagi' : 3, 'smaf' : 2},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 3,
},
mindread = {
name = 'Mind reading',
code = 'mindread',
iconnorm = load("res://files/buttons/abils/Mindread.png"),
iconpressed = load("res://files/buttons/abils/Mindread3.png"),
icondisabled = load("res://files/buttons/abils/Mindread2.png"),
learnable = true,
requiredspell = 'mindread',
description = "A faster, combat oriented appliance of Mind Reading, allows you to get more information from your enemies. ",
usetext = '$name cast Mind reading onto self. ',
target = 'self',
effect = 'mindreadeffect',
can_miss = false,
power = 0,
cooldown = 0,
type = 'physical',
price = 100,
costenergy = 0,
costmana = 5,
costother = '',
attributes = ['buff', 'onlyself'],
reqs = {},
aitargets = 'self',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = -1,
},
aoeattack = {
name = 'Slam',
code = 'aoeattack',
iconnorm = load("res://files/buttons/abils/Attack.png"),
iconpressed = load("res://files/buttons/abils/Attack2.png"),
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name performs [color=aqua]Slam attack[/color]. ',
target = 'enemy',
effect = null,
can_miss = false,
power = 0.8,
cooldown = 4,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage','allparty'],
reqs = {level = 0},
aipatterns = ['attack'],
aitargets = 'enemies',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 5,
},
alwayshitattack = {
name = 'Precise Attack',
code = 'alwayshitattack',
iconnorm = load("res://files/buttons/abils/Attack.png"),
iconpressed = load("res://files/buttons/abils/Attack2.png"),
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name uses [color=aqua]Precise attack[/color] landing on $targetname. ',
target = 'enemy',
effect = null,
can_miss = false,
power = 1.2,
cooldown = 5,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage'],
reqs = {level = 0},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 5,
},
stunattack = {
name = 'Stun',
code = 'stunattack',
iconnorm = null,
iconpressed = null,
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name launches [color=aqua]Stun attack[/color] at $targetname. ',
target = 'enemy',
effect = 'stun',
can_miss = true,
power = 1,
cooldown = 6,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage'],
reqs = {level = 0},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 5,
},
webattack = {
name = 'Shoot Web',
code = 'webattack',
iconnorm = null,
iconpressed = null,
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name [color=aqua]shoots web[/color] at $targetname. ',
target = 'enemy',
effect = 'enemyslow',
can_miss = true,
power = 1,
accuracy = 0.8,
cooldown = 4,
type = 'physical',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = ['damage'],
reqs = {level = 0},
aipatterns = ['attack'],
aitargets = '1enemy',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 3,
},
masshealcouncil = {
name = 'Mass Heal',
code = 'masshealcouncil',
iconnorm = null,
iconpressed = null,
learnable = false,
description = 'Attempts to attack chosen enemy.',
usetext = '$name [color=aqua]casts mass heal[/color]. ',
target = 'ally',
effect = null,
can_miss = false,
power = 1,
accuracy = 1,
cooldown = 4,
type = 'spell',
price = 0,
costenergy = 0,
costmana = 0,
costother = '',
attributes = [],
reqs = {level = 0},
aipatterns = ['support'],
aitargets = 'allies',
aiselfcond = 'any',
aitargetcond = 'any',
aipriority = 2,
},
}

var effects = {
healeffect = {
duration = 0,
effect = 'restorehealth',
type = 'buff',
},
sedationeffect = {
duration = 3,
name = 'Sedation',
code = 'sedationeffect',
type = 'debuff',
stats = [['speed', '-(3+,caster.magic,)']],
},
barriereffect = {
duration = 3,
name = 'Barrier',
code = 'barriereffect',
type = 'buff',
stats = [['armor', '3+,caster.magic,*2']],
},
debilitateeffect = {
duration = 3,
name = 'Debilitate',
code = 'debilitateeffect',
type = 'debuff',
stats = [['speed', '-(2+,caster.power,/2)']],
},
mindreadeffect = {
duration = 5,
name = 'Mind Reading',
code = 'mindreadeffect',
type = 'buff',
stats = [],
},
shackleeffect = {
duration = 6,
name = "Shackled",
code = 'shackleeffect',
type = 'debuff',
stats = [],
},
acidspiteffect = {
duration = 5,
name = "Acid",
code = 'acidspiteffect',
type = 'debuff',
stats = [['armor', '-(3+,caster.magic,)']],
},
enemyslow = {
duration = 3,
name = "Slow",
code = 'enemyslow',
type = 'debuff',
stats = [['speed', '-(5, )']],
},
stun = {
duration = 1,
name = "Stunned",
code = 'stun',
type = 'debuff',
stats = [],
},
lustweak = {
duration = -1,
name = "Horny",
code = 'lustweak',
type = 'passive',
stats = [['speed', '-(3,)']],
},
luststrong = {
duration = -1,
name = "Very Horny",
code = 'luststrong',
type = 'passive',
stats = [['speed', '-(5,)'],['power','-(3,)']],
},
}

func restorehealth(caster, target):
	var text = ''
	var value = 25 + (caster.magic*5)
	target.health = min(target.health + value, target.healthmax)
	text = '$name restores ' + str(value) + ' health.'
	return text


