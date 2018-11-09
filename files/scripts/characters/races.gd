
extends Node
var namefile = load("res://files/scripts/characters/names.gd").new()
var names = namefile.names


var races = {
Human = {
	skin = ['pale', 'fair', 'olive', 'tan'],
	eyecolor = ['blue', 'green', 'brown', 'hazel', 'black', 'gray'],
	haircolor = ['blond', 'red', 'auburn', 'brown', 'black'],
	surname = names.humansurname,
	description = "Humans are a highly successful militaristic people whose members can be found throughout much of the world, their presence often receiving a mixed reception. Slavery is a common part of human society, viewed as a civilized form of alternative punishment, with many laws and businesses based around the concept. Because of this slave driven culture, you have found that humans tend to be the most widely accessible residents, servants, and slaves.",
	details = "[color=aqua]Racial trait: Punishment expectations and praise lasts twice as long.[/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 3, Magic - 2, Endurance - 4 [/color]",
	pricemod = 1,
	startingrace = true,
	wimbornrace = true,
	gornrace = true,
	frostfrodrace = true,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Human_M.png", female = "res://files/buttons/inventory/shades/Human_F.png"},
	stats = {str_max = 5, 
	agi_max = 3, 
	maf_max = 2, 
	end_max = 4}
},
Elf = {
	surname = names.elfsurname,
	ears = ['pointy'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	description = "Elves are famous among the various races for the legends and stories of ancient times, when elves held a similar status to modern humans. These tales speak of elves as arrogant, and in command of powerful nature magic, but ultimately spelling their own downfall in some great act of folly.\n\nModern elves bear few connections to their ancestors beyond physical appearance and a close connection to nature. In stark contrast, their lives are often fairly humble and reclusive, generally staying deep within forests. There is no evidence to suggest any inherent magic found in modern elves, but this hardly impedes their popularity.",
	details = "[color=aqua]Racial trait: Preferred role based on confidence level.[/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 5, Magic - 4, Endurance - 3 [/color]",
	pricemod = 1.5,
	startingrace = true,
	wimbornrace = true,
	gornrace = false,
	frostfrodrace = true,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Elf_M.png", female = "res://files/buttons/inventory/shades/Elf_F.png"},
	stats = {str_max = 3,
	agi_max = 5,
	maf_max = 4,
	end_max = 3}
},
'Dark Elf' : {
	surname = names.elfsurname,
	description = "Elves are famous among the various races for the legends and stories of ancient times, when elves held a similar status to modern humans. These tales speak of elves as arrogant, and in command of powerful nature magic, but ultimately spelling their own downfall in some great act of folly.\n\nDark elves belong to less known tribes, rumored to be separated from main groups and living in warmer regions.",
	details = "[color=aqua]Racial trait: Temporal effects from potions and spells last longer.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 3, Endurance - 4 [/color]",
	pricemod = 1.5,
	startingrace = true,
	wimbornrace = true,
	gornrace = false,
	frostfrodrace = false,
	banditrace = true,
	uncivilized = false,
	ears = ['pointy'],
	skin = ['tan', 'brown', 'dark'],
	eyecolor = ['blue', 'green', 'amber', 'red', 'purple'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	shade = {male = "res://files/buttons/inventory/shades/Elf_M.png", female = "res://files/buttons/inventory/shades/Elf_F.png"},
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 3,
	end_max = 4}
},
Drow = {
	surname = names.elfsurname,
	description = "Drow are a race, considered a branching species of elf. Little is known about their history and motherland, if they ever had one at all, as their underground cities are spread thin across multiple continents, and are even more difficult to enter than to locate.\n\nBeyond a preference for isolation and their general appearance, drow are quite different from their cousins in both attitude and culture. However, what sets them apart most is the unusual pigmentation of their skin; a dark colors with occasional blue tint. The unusual pigmentation is the subject of much debate and speculation, with theories ranging from natural mutation, to the byproduct of ancient beings.",
	details = "[color=aqua]Racial trait: sexual actions give 20% more mana.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 6, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = false,
	ears = ['pointy'],
	skin = ['blue', 'purple', 'pale blue'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	shade = {male = "res://files/buttons/inventory/shades/Elf_M.png", female = "res://files/buttons/inventory/shades/Elf_F.png"},
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 6,
	end_max = 3,}
},
Orc = {
	surname = names.orcsurname,
	description = "Orcs are among the most recognizable races for their unique green skin color, and naturally untamed appearances. Orcs are widely considered barbarians for their tribal nature, but those who study them have found a diverse and highly communal society, far more civilized than it may first appear.\n\nOrcs reside primarily in the south, within the borders of Gorn; a powerful nation. It is well documented in local history and folklore that as the scale and ferocity of the tribal wars grew, foreign invaders were pushed further out, allowing Gorn’s relatively undisturbed development. These days, though the constant wars have ended, the remaining tribes receive regular offerings to stay within the nation’s borders as a deterrent and to maintain friendly relations.",
	details = "[color=aqua]Racial trait: wounds heal quicker.[/color]\n\n[color=yellow]Stat potential: Strength - 6, Agility - 3, Magic - 1, Endurance - 5 [/color]",
	pricemod = 1.5,
	startingrace = true,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = false,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Orc_-M.png", female = "res://files/buttons/inventory/shades/Orc_F.png"},
	skin = ['green'],
	ears = ['pointy'],
	stats = {str_max = 6,
	agi_max = 3,
	maf_max = 1,
	end_max = 5}
},
Gnome = {
	bodyshape = ['shortstack'],
	description = "Though nowadays the gnome capital is open as a tourist spot, there are stories and documents stating that generations ago, they were once humans sealed within the city by demons, experimented on and mutated into the forms they have today.\n\nThough they are a stocky, physically weak race, they compensate for their shortcomings with outstanding intellect, holding a commanding lead as the world’s frontrunners in technology.",
	details = "[color=aqua]Racial trait: studying at Library twice as effective. [/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 3, Magic - 5, Endurance - 3 [/color]",
	pricemod = 1.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Gnome_M.png", female = "res://files/buttons/inventory/shades/Gnome_F.png"},
	height = ['tiny'],
	stats = {str_max = 3,
	agi_max = 3,
	maf_max = 5,
	end_max = 3}
},
Goblin = {
	bodyshape = ['shortstack'],
	description = "Goblins are a race of cave dwellers, loosely resembling short, green-skinned elves. They have existed for a very long time, but despite their prevalence rarely played any influential role. While often been considered nothing more than common monsters, they have surprising skill and understanding, putting them on par with many humanoid races in term of sentience.",
	details = "[color=aqua]Racial trait: pregnancy progresses lot quicker. [/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 5, Magic - 3, Endurance - 3 [/color]",
	pricemod = 1.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = false,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Goblin_M.png", female = "res://files/buttons/inventory/shades/Goblin_F.png"},
	skin = ['green'],
	ears = ['pointy'],
	height = ['tiny'],
	stats = {str_max = 3,
	agi_max = 5,
	maf_max = 3,
	end_max = 3}
},
Fairy = {
	bodyshape = ['shortstack'],
	description = "Modern fairies, often referred to as city fairies by some parts of the magic community, are an unexpected evolution of nature spirits sharing the same name, resulting from interaction with outsiders and migration into cities. These fairies have retained much of the cute, friendly, and playful attitudes of the spirits they came from, making them popular for positions with high volumes of public interaction.",
	details = "[color=aqua]Racial trait: build-up stress dissipates twice as fast.[/color]\n\n[color=yellow]Stat potential: Strength - 2, Agility - 5, Magic - 6, Endurance - 2 [/color]",
	pricemod = 2,
	startingrace = false,
	wimbornrace = true,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Fairy_M.png", female = "res://files/buttons/inventory/shades/Fairy_F.png"},
	eyecolor = ['blue', 'green', 'amber', 'red', 'purple'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	ears = ['pointy'],
	wings = ['insect'],
	height = ['tiny'],
	surname = '',
	stats = {str_max = 2,
	agi_max = 5,
	maf_max = 6,
	end_max = 2}
},
Seraph = {
	ears = ['pointy'],
	description = "Seraphs were named because of their similarity in appearance to angels, the winged servants of divinity spoken of in myth. The reclusiveness of seraphs has led to a lack of research, but common theories are that they are a subspecies of harpy, or an artificial race created accidentally many generations ago.\n\nUnlike demons, seraphs seem to exhibit many behavioral traits in line with their mythic counterparts, such as a prudish nature and a slight inclination towards public service, though it’s unknown if these traits are universal, or if they come down to an individual basis.",
	details = "[color=aqua]Racial trait: +4 speed in combat[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 3, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = true,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Seraph_M.png", female = "res://files/buttons/inventory/shades/Seraph_F.png"},
	wings = ['feathered_black', 'feathered_white', 'feathered_brown'],
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 3,
	end_max = 3}
},
Demon = {
	description = "Though they share a name and certain physical traits, modern demons bear no true resemblance to their ancient counterparts, who were driven into the great depths of the underground, and even into other dimensions. It is speculated that modern demons are either the offspring of humans and actual monsters, or as some research suggests, the byproduct of extensive magical corruption, similar to gnomes.\n\nThough demons are often feared and reviled, those with outstanding talent or skill often receive recognition for their abilities, so it is not entirely uncommon to see demons among the elite, or in high profile positions.",
	details = "[color=aqua]Racial trait: laboratory modifications are cheaper.[/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 4, Magic - 4, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = true,
	wimbornrace = true,
	gornrace = false,
	frostfrodrace = false,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Demon_M.png", female = "res://files/buttons/inventory/shades/Demon_F.png"},
	ears = ['pointy'],
	tail = ['demon'],
	wings = ['leather_black', 'leather_red'],
	horns = ['short', 'long_straight', 'curved'],
	stats = {str_max = 5,
	agi_max = 4,
	maf_max = 4,
	end_max = 3}
},
Dryad = {
	description = "Dryads are a virtual unknown, with little information on their natural habitat and reproduction. It is speculated that they are nature spirits born from old trees that have absorbed a large amount of mana.",
	details = "[color=aqua]Racial trait: forage is 50% more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 4, Magic - 5, Endurance - 4 [/color]",
	pricemod = 2,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Dryad_M.png", female = "res://files/buttons/inventory/shades/Dryad_F.png"},
	skin = ['green'],
	eyesclera = ['green'],
	haircolor = ['green', 'purple'],
	ears = ['pointy'],
	skincov = ['plants'],
	surname = '',
	stats = {str_max = 3,
	agi_max = 4,
	maf_max = 5,
	end_max = 4}
},
Dragonkin = {
	description = "Dragonkin are an extremely rare breed of human with draconic lineage, partially possessing the blood and certain physical traits of dragons, such as wings, scales, and a tail. While originally confined to the whims of dragons, a coalition of influential mages banded together and developed a powerful ritual to imbue grown humans with dragon blood, in spite of observed difficulties in adoption of the blood so late into development. There is a great deal of secrecy surrounding the ritual, and outside of a few involved elite, its success rate is unknown. The few dragonkin alleged to have been produced by the ritual are virtually indistinguishable from those who were naturally birthed.",
	details = "[color=aqua]Racial trait: strength is increased.[/color]\n\n[color=yellow]Stat potential: Strength - 6, Agility - 4, Magic - 5, Endurance - 5 [/color]",
	pricemod = 3.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Dragonkin_M.png", female = "res://files/buttons/inventory/shades/Dragonkin_F.png"},
	eyecolor = ['amber', 'red', 'brown'],
	eyeshape = ['slit', 'normal'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	ears = ['pointy'],
	tail = ['dragon'],
	horns = ['short', 'long_straight', 'curved'],
	wings = ['leather_black', 'leather_red'],
	skincov = ['scales'],
	arms = ['scales'],
	legs = ['scales'],
	stats = {str_max = 6,
	agi_max = 4,
	maf_max = 5,
	end_max = 5}
},
Taurus = {
	description = "Tauruses are a purely artificial race, created on the orders of a group of noblemen looking for bodyguards. The experiment seems to have been an attempt at recreating the size and strength of orcs and beastkin in a more easily controlled package, but was ultimately considered only partially successful, as specimens of the new species had a tendency of taking too many bovine behavioral traits, becoming too passive, or in some cases, too aggressive.\n\nStill, they, especially the females, remain popular among certain individuals for their appearance and outstanding natural lactation.",
	details = "[color=aqua]Racial trait: milking is more effective. [/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 3, Magic - 2, Endurance - 6 [/color]",
	pricemod = 2,
	startingrace = true,
	wimbornrace = true,
	gornrace = true,
	frostfrodrace = false,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Taurus_M.png", female = "res://files/buttons/inventory/shades/Taurus_F.png"},
	horns = ['long_straight'],
	ears = ['short_furry'],
	tail = ['scruffy'],
	stats = {str_max = 5,
	agi_max = 3,
	maf_max = 2,
	end_max = 6}
},
Slime = {
	description = "Slimes are the result of a relatively common magical mutation, which dramatically changes a person's bodily integrity. Slimes are heavily reliant on water, even though their body is not actually 'slimy'. They can freely ooze over anything they touch, yet are in fact, pretty cohesive and firm to the touch.\n\nUnlike most other ooze-type slime monsters, slimes of humanoid origins are capable of nearly the same mental processes, although they are generally ill-regarded for having a clearly monstrous appearance.",
	details = "[color=aqua]Racial trait: can't be modified in the lab, toxicity is nullified every day.[/color]'\n\n[color=yellow]Stat potential: Strength - 4, Agility - 6, Magic - 3, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Slime_M.png", female = "res://files/buttons/inventory/shades/Slime_F.png"},
	bodyshape = ['jelly'],
	haircolor = ['jelly'],
	skin = ['jelly'],
	surname = '',
	stats = {str_max = 4,
	agi_max = 6,
	maf_max = 3,
	end_max = 3}
},
Lamia = {
	description = "Lamias are easily recognized and tend to be timid in their interactions, rarely showing themselves to majority of the population. Their population has been severely reduced by hunting and extermination expeditions launched by different races. Lamias are surprisingly intelligent, as the few captured and studied samples have shown.",
	details = "[color=aqua]Racial trait: Elongated Tongue.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 4, Endurance - 4 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Lamia_M.png", female = "res://files/buttons/inventory/shades/Lamia_F.png"},
	bodyshape = ['halfsnake'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	tail = ['snake tail'],
	ears = ['pointy'],
	skincov = ['scales'],
	legs = ['snake'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = ['slit'],
	surname = '',
	mods = {augmenttongue = 'augmenttongue'},
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 4,
	end_max = 4}
},
Harpy = {
	description = "Harpies are human-bird hybrids with easily recognisable features, such as their feathered arms and avian lower quarters. Commonly seen as monsters, they have existed since time immemorial. Wild harpies generally inhabit mountain regions and are relatively aggressive. Their intelligence has a wide range, and people have had some success making them into slave-pets.",
	details = "[color=aqua]Racial trait: egg-laying is more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 3, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Harpy_M.png", female = "res://files/buttons/inventory/shades/Harpy_F.png"},
	bodyshape = ['halfbird'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	tail = ['bird'],
	ears = ['feathery'],
	skincov = ['feathers'],
	arms = ['winged'],
	legs = ['avian'],
	surname = '',
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 3,
	end_max = 3}
},
Arachna = {
	description = "Arachna live in isolation and tend to choose caves and other underground locations as their homes. While not being especially aggressive, they are fearsome hunters and have been reported for rare night attacks on both cattle and humans.",
	details = "[color=aqua]Racial trait: hunting is more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 4, Magic - 5, Endurance - 4 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Arachna_M.png", female = "res://files/buttons/inventory/shades/Arachna_F.png"},
	bodyshape = ['halfspider'],
	haircolor = ['white', 'green', 'purple', 'blue', 'blond', 'red', 'auburn'],
	tail = ['spider abdomen'],
	ears = ['pointy'],
	skincov = ['scales'],
	legs = ['spider'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = ['slit'],
	surname = '',
	stats = {str_max = 4,
	agi_max = 4,
	maf_max = 5,
	end_max = 4}
},
Centaur = {
	description = "The Centaur race is somewhat distant, yet not unheard of in southern regions. Some individuals have made it very far by adopting a nomadic lifestyle, making the race common enough to be recognized by most. The centauri population is relatively small, due to dealing with territorial oppression from humanoid races.",
	pricemod = 1.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Centaur_M.png", female = "res://files/buttons/inventory/shades/Centaur_F.png"},
	details = "[color=aqua]Racial trait: Increased Energy.[/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 5, Magic - 3, Endurance - 5. [/color]",
	bodyshape = ['halfhorse'],
	tail = ['horse'],
	ears = ['short_furry'],
	legs = ['horse'],
	stats = {str_max = 5,
	agi_max = 5,
	maf_max = 3,
	end_max = 5,
	energy_max = 140}
},
Nereid = {
	description = "Nereid are considered to be another subspecies of the humanoid races, yet they likely split from another race in the distant past. They adapted to an aquatic lifestyle. Nereids are often seen by sailors and fishermen, but they tend to be hesitant in making contact with humans, likely viewing them as a threat.",
	details = "[color=aqua]Racial trait: entertainment is more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 5, Magic - 5, Endurance - 3 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Nereid_M.png", female = "res://files/buttons/inventory/shades/Nereid_F.png"},
	bodyshape = ['halffish'],
	tail = ['fish'],
	ears = ['fins'],
	legs = ['webbed'],
	arms = ['webbed'],
	eyecolor = ['amber', 'red', 'turquoise'],
	eyeshape = ['slit'],
	eyesclera = ['yellow'],
	skin = ['teal', 'blue', 'pale blue'],
	surname = '',
	stats = {str_max = 3,
	agi_max = 5,
	maf_max = 5,
	end_max = 3}
},
Scylla = {
	bodyshape = ['halfsquid'],
	description = "Scylla are rather unusual in appearance, possessing a number of tentacle-like appendages they use in the place of legs. They generally prefer damp and aquatic regions. In general, their behavior and capabilities are not much different from lamia. Their appearance is extremely rare, to the point of being treated as mere myth or drunken fancy by some.",
	details = "[color=aqua]Racial trait: cooking is more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 4, Magic - 5, Endurance - 4 [/color]",
	pricemod = 2.5,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = false,
	banditrace = false,
	uncivilized = true,
	shade = {male = "res://files/buttons/inventory/shades/Scylla_M.png", female = "res://files/buttons/inventory/shades/Scylla_F.png"},
	tail = ['tentacles'],
	ears = ['pointy'],
	legs = ['tentacles'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	surname = '',
	stats = {str_max = 5,
	agi_max = 4,
	maf_max = 5,
	end_max = 4}
},
"Beastkin Cat" : {
	bodyshape = ['bestial'],
	description = "Cat folk are an unusually social breed of Beastkin, having no known settlements of their own, and living quite openly in populous towns and cities. They have a great deal of popularity among certain crowds for their lush appearance and lascivious nature.",
	details = "[color=aqua]Racial trait: increased dodge chance.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 6, Magic - 3, Endurance - 3 [/color]",
	pricemod = 1.75,
	startingrace = true,
	wimbornrace = true,
	gornrace = true,
	frostfrodrace = true,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Beastkin-Cat_M.png", female = "res://files/buttons/inventory/shades/Beastkin-Cat_F.png"},
	skincov = ['full_body_fur'],
	furcolor = ['white', 'gray', 'orange_white','black_white','black_gray','black'],
	tail = ['cat'],
	ears = ['short_furry'],
	legs = ['fur_covered'],
	arms = ['fur_covered'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = 'slit',
	stats = {str_max = 4,
	agi_max = 6,
	maf_max = 3,
	end_max = 3}
},
"Beastkin Fox" : {
	bodyshape = ['bestial'],
	description = "Fox folk are a rare, and relatively mysterious breed of Beastkin. They display high intelligence, a tendency towards lifelong monogamy, and congregate in small, close-knit communities.",
	details = "[color=aqua]Racial trait: escort assignment is more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 5, Magic - 4, Endurance - 3 [/color]",
	pricemod = 2,
	startingrace = true,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = true,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Beastkin-Fox_M.png", female = "res://files/buttons/inventory/shades/Beastkin-Fox_F.png"},
	skincov = ['full_body_fur'],
	furcolor = ['black_white', 'orange', 'orange', 'orange'],
	tail = ['fox'],
	ears = ['long_pointy_furry'],
	legs = ['fur_covered'],
	arms = ['fur_covered'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = ['slit'],
	stats = {str_max = 4,
	agi_max = 5,
	maf_max = 4,
	end_max = 3}
},
"Beastkin Wolf" : {
	bodyshape = ['bestial'],
	description = "Unlike other Beastkin, Wolves are not viewed as simple novelties, but are treated as the powerful, agile pack hunters they are. Though they rarely show hostility towards outsiders unless threatened, great caution should be taken when dealing with them.\n\nThere are rumors that far to the north exists a nation richly populated by Beastkin, where wolves play a leading role, being well suited to the harsh environment.",
	details = "[color=aqua]Racial trait: Detection bonus, Combat Power increased.[/color]\n\n[color=yellow]Stat potential: Strength - 5, Agility - 5, Magic - 2, Endurance - 4 [/color]",
	pricemod = 1.75,
	startingrace = true,
	wimbornrace = true,
	gornrace = false,
	frostfrodrace = true,
	banditrace = true,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Beastkin-Wolf_M.png", female = "res://files/buttons/inventory/shades/Beastkin-Wolf_F.png"},
	skincov = ['full_body_fur'],
	furcolor = ['gray', 'black_gray', 'brown'],
	tail = ['wolf'],
	ears = ['short_furry'],
	legs = ['fur_covered'],
	arms = ['fur_covered'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = ['slit'],
	stats = {str_max = 5,
	agi_max = 5,
	maf_max = 2,
	end_max = 4}
},
"Beastkin Bunny" : {
	bodyshape = ['bestial'],
	description = "Bunnies are one of the least self-sufficient, but netherless common beast races. They are not aggressive and can actually be quite timid. They are quite well liked  due to their comforting appearance and their natural lewdness makes them a popular choice for slave pets.",
	details = "[color=aqua]Racial trait: prostitution related assignments cause only half stress.[/color]\n\n[color=yellow]Stat potential: Strength - 3, Agility - 5, Magic - 3, Endurance - 3 [/color]",
	pricemod = 1.75,
	startingrace = false,
	wimbornrace = false,
	gornrace = true,
	frostfrodrace = true,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Beastkin-Bunny_M.png", female = "res://files/buttons/inventory/shades/Beastkin-Bunny_F.png"},
	skincov = ['full_body_fur'],
	furcolor = ['white', 'gray'],
	tail = ['bunny'],
	ears = ['long_round_furry', 'long_droopy_furry'],
	legs = ['fur_covered'],
	arms = ['fur_covered'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	stats = {str_max = 3,
	agi_max = 5,
	maf_max = 3,
	end_max = 3}
},
"Beastkin Tanuki" : {
	bodyshape = ['bestial'],
	description = "The Tanuki are a rare beast race possessing raccoon features. It's hard to pinpoint any specific mental differences between them and the majority of the humanoid races. Some say that their behavior and attitudes are much like that of the average human. There's still much  speculation as to how they originated.",
	pricemod = 1.75,
	startingrace = false,
	wimbornrace = false,
	gornrace = false,
	frostfrodrace = true,
	banditrace = false,
	uncivilized = false,
	shade = {male = "res://files/buttons/inventory/shades/Beastkin-Tanuki_M.png", female = "res://files/buttons/inventory/shades/Beastkin-Tanuki_F.png"},
	details = "[color=aqua]Racial trait: store assignment more effective.[/color]\n\n[color=yellow]Stat potential: Strength - 4, Agility - 4, Magic - 4, Endurance - 4 [/color]",
	skincov = ['full_body_fur'],
	furcolor = ['black_gray'],
	tail = ['racoon'],
	ears = ['short_furry'],
	legs = ['fur_covered'],
	arms = ['fur_covered'],
	eyecolor = ['blue', 'green', 'amber', 'red'],
	eyeshape = ['slit'],
	stats = {str_max = 4,
	agi_max = 4,
	maf_max = 4,
	end_max = 4}
},
}

var beastkindescription = "The term Beastkin refers to a wide range of sentient species with prominent humanoid and animalistic traits. True beastkin are fully covered in fur, feathers, or scales, with similar stature and proportions to a human. Even among individual species, there are wide differences to be observed with inherited animal traits, such as eyes, claws, and teeth. It is unknown whether Beastkin are man-made or the product of nature, as their spread and diversity often leads to inconsistent findings."
var halfkindescription = "Halfkin are the offspring produced by the union of a beastkin and a human. Halfkin most prominently display their human lineage, lacking fur and other major animalistic characteristics, but do possess secondary traits from their beastkin forebears, such as claws, ears, and tails, and tend to exhibit behavior from both parents equally.\n\nThe fate of halfkin varies from place to place, some living normally as any other race, others living under persecution and prejudice, and even rumors of far off lands where they are respected and worshipped. Regardless of what kind of environment they live in, halfkin are a popular item among collectors for their exotic appearance and the unique quality that their offspring will often swing back to fully human or fully beast."