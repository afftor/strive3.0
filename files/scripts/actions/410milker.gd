extends Node

const category = 'tools'
const code = 'milker'
const order = 11
var givers
var takers
const canlast = true
const giverpart = ''
const takerpart = 'acc5'
const virginloss = false
const giverconsent = 'basic'
const takerconsent = 'any'
const givertags = ['pet','noorgasm']
const takertags = ['tits']

func getname(state = null):
	return "Milker"

func getongoingname(givers, takers):
	return "[name1] put milker[s/1] on [names2] nipples."

func getongoingdescription(givers, takers):
	return ""
	
func requirements():
	var valid = true
#	for i in takers:
#		if i.acc5 != null:
#			valid = false
	if takers.size() < 1 || givers.size() < 1:
		valid = false
	elif givers.size() > 2:
		valid = false
	return valid

func givereffect(member):
	var result
	var effects = {lust = 0, tags = ['pervert']}
	if member.consent == true || (member.person.traits.find("Likes it rough") >= 0 && member.lewd >= 10):
		result = 'good'
	elif member.person.traits.find("Likes it rough") >= 0:
		result = 'average'
	else:
		result = 'bad'
	return [result, effects]

func takereffect(member):
	var result
	var effects = {lust = 25, sens = 35, tags = ['pervert']}
	if member.consent == true || (member.person.traits.find("Likes it rough") >= 0 && member.lewd >= 10):
		result = 'good'
	elif member.person.traits.find("Likes it rough") >= 0:
		result = 'average'
	else:
		result = 'bad'
	if member.person.sex == 'male':
		effects.sens /= 1.5
	return [result, effects]

func initiate():
	var text = ''
	var temparray = []
	temparray += ["[name1] {^place:shove:stick}[s/1] the milker on [names2] nipples"]
#	temparray += ["[name1] latch[es/1] onto [names2] nipples"]
	text += temparray[randi()%temparray.size()]
	temparray.clear()
	temparray += [", {^teasing} and {^sucking on} them."]
	temparray += [", {^lightly:gently} {^stimulating} them with its suction mechanism."]
	temparray += [", {^greedily slurping at them:nursing} like [a /1]bab[y/ies1]."]
	text += temparray[randi()%temparray.size()]
	return text

func reaction(member):
	var text = ''
#	if member.energy == 0:
#		text = "[name2] lie[s/2] unconscious, {^trembling:twitching} {^slightly :}as [his2] nipples {^respond:react} to {^the stimulation:milker suckling:milker teasing}."
#	#elif member.consent == false:
#		#TBD
#	elif member.sens < 100:
#		text = "[name2] {^show:give}[s/2] little {^response:reaction} to [his2] nipples being {^stimulated:teased:sucked on:suckled}."
#	elif member.sens < 400:
#		text = "[name2] {^begin:start}[s/2] to {^respond:react} as [his2] nipples are {^stimulated:teased:sucked on:suckled}."
#	elif member.sens < 800:
#		text = "[name2] {^moans[s/2]:crie[s/2] out} in {^pleasure:arousal:extacy} as [his2] nipples are {^stimulated:teased:sucked on:suckled}."
#	else:
#		text = "[names2] body {^trembles:quivers} {^at the slightest suction of the milker:in response to the milker suckling}{^ as [he2] rapidly near[s/2] orgasm: as [he2] approach[es/2] orgasm: as [he2] edge[s/2] toward orgasm:}."
	return text
