extends Node

var selectedslave


func _ready():
	get_node("TabContainer/Game/malesslider").set_value(globals.rules['male_chance'])
	get_node("TabContainer/Game/malesliderlabel").set_text('Random gender occurrence balance: ' + str(globals.rules['male_chance']) + '% of males')
	get_node("TabContainer/Game/furry").set_pressed(globals.rules['furry'])
	get_node("TabContainer/Game/furrynipples").set_pressed(globals.rules['furrynipples'])
	_on_furry_pressed()
	get_node("TabContainer/Game/futa").set_pressed(globals.rules['futa'])
	get_node("TabContainer/Game/futaballs").set_pressed(globals.rules['futaballs'])
	_on_futa_pressed()
	get_node("TabContainer/Game/slaverguildraces").set_pressed(globals.rules.slaverguildallraces)
	get_node("TabContainer/Game/futasliderlabel").set_text('Random futa occurrence: ' + str(globals.rules['futa_chance']) + '% of females')
	get_node("TabContainer/Game/futaslider").set_value(globals.rules['futa_chance'])
	get_node("TabContainer/Settings/fullscreen").set_pressed(OS.is_window_fullscreen())
	get_node("TabContainer/Supporter section/cheatpassword").set_text('')
	get_node("TabContainer/Game/childlike").set_pressed(globals.rules['children'])
	get_node("TabContainer/Game/receive").set_pressed(globals.rules.receiving)
	get_node("TabContainer/Settings/fading").set_pressed(globals.rules.fadinganimation)
	get_node("TabContainer/Game/permadeath").set_pressed(globals.rules.permadeath)
	get_node("TabContainer/Game/aliseoption").select(globals.rules.enddayalise)
	get_node("TabContainer/Settings/spritesindialogues").set_pressed(globals.rules.spritesindialogues)
	$TabContainer/Settings/skipcombatanimation.pressed = globals.rules.instantcombatanimation
	$TabContainer/Settings/randomportraits.pressed = globals.rules.randomcustomportraits
	if globals.rules.children == true:
		get_node("TabContainer/Game/noadults").show()
		get_node("TabContainer/Game/noadults").set_pressed(globals.rules.noadults)
	else:
		get_node("TabContainer/Game/noadults").hide()
	if globals.state.password == 'fkfynroh':
		get_node("TabContainer/Supporter section/cheats").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpasswordenter").set_disabled(true)
	else:
		get_node("TabContainer/Supporter section/cheats").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpasswordenter").set_disabled(false)
	selectedslave = ''
	get_node("TabContainer/Settings/fontsize").set_editable(globals.rules.fontsize)
	_on_soundslider_value_changed(round(globals.rules.soundvol*3))
	_on_musicslider_value_changed(round(globals.rules.musicvol*3))
	if globals.state.nopoplimit == true:
		get_node("TabContainer/Supporter section/cheatpanel/removepopcap").set_disabled(true)


func _on_furry_pressed():
	globals.rules['furry'] = get_node("TabContainer/Game/furry").is_pressed()
	if (globals.rules['furry'] == false):
		get_node("TabContainer/Game/furrynipples").set_disabled(true)
		get_node("TabContainer/Game/furrynipples").set_pressed(false)
		globals.rules['furrynipples'] = false
	else:
		get_node("TabContainer/Game/furrynipples").set_disabled(false)


func _on_futa_pressed():
	globals.rules['futa'] = get_node("TabContainer/Game/futa").is_pressed()
	if (globals.rules['futa'] == false):
		get_node("TabContainer/Game/futaslider").hide()
		get_node("TabContainer/Game/futaballs").set_disabled(true)
		get_node("TabContainer/Game/futaballs").set_pressed(false)
		globals.rules['futaballs'] = false
	else:
		get_node("TabContainer/Game/futaslider").show()
		get_node("TabContainer/Game/futaballs").set_disabled(false)


func _on_slaverguildraces_pressed():
	globals.rules.slaverguildallraces = get_node("TabContainer/Game/slaverguildraces").is_pressed()


func _on_malesslider_value_changed( value ):
	globals.rules['male_chance'] = value
	get_node("TabContainer/Game/malesliderlabel").set_text('Random gender occurrence balance: ' + str(globals.rules['male_chance']) + '% of males')




func _on_futaslider_value_changed( value ):
	globals.rules['futa_chance'] = value
	get_node("TabContainer/Game/futasliderlabel").set_text('Random futa occurrence: ' + str(globals.rules['futa_chance']) + '% of females')


func _on_futaballs_pressed():
	globals.rules['futaballs'] = get_node("TabContainer/Game/futaballs").is_pressed()



func _on_fullscreen_pressed():
	OS.set_window_fullscreen(get_node("TabContainer/Settings/fullscreen").is_pressed())
	hide()
	popup()
	get_node("screenpopup").popup()

func _on_childlike_pressed():
	globals.rules.children = get_node("TabContainer/Game/childlike").is_pressed()
	if globals.rules.children == false:
		get_node("TabContainer/Game/noadults").hide()
		get_node("TabContainer/Game/noadults").set_pressed(false)
		globals.rules.adults = true
	else:
		get_node("TabContainer/Game/noadults").show()

func _on_noadults_pressed():
	globals.rules.noadults = get_node("TabContainer/Game/noadults").is_pressed()


func _on_furrynipples_pressed():
	globals.rules['furrynipples'] = get_node("TabContainer/Game/furrynipples").is_pressed()

func _on_Done_pressed():
	hide()
	globals.overwritesettings()

func _on_cheatpasswordenter_pressed():
	globals.state.password = get_node("TabContainer/Supporter section/cheatpassword").get_text()
	_ready()
	if get_node("TabContainer/Supporter section/cheats").is_disabled() == false:
		if globals.state.supporter == false:
			get_node("TabContainer/Supporter section/supporterpanel").popup()
		globals.state.supporter = true

func _on_cheats_pressed():
	get_node("TabContainer/Supporter section/cheatpanel").popup()

func _on_close_pressed():
	get_node("TabContainer/Supporter section/cheatpanel").hide()


func _on_cheatpanel_visibility_changed(person = null):
	if person == null:
		get_node("TabContainer/Supporter section/cheatpanel/selectedslavelabel").set_text('Selected slave - none')
		get_node("TabContainer/Supporter section/cheatpanel/maxobed").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/maxlust").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/maxloyalty").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/maxlewd").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/nostress").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/addskillpoints").set_disabled(true)
		get_node("TabContainer/Supporter section/cheatpanel/addlevel").set_disabled(true)
	else:
		get_node("TabContainer/Supporter section/cheatpanel/selectedslavelabel").set_text('Selected slave - '+person.name + '\nObedience - '+str(person.obed)+'\nLust - '+str(person.lust)+'\nLoyalty - '+str(person.loyal) + '\nAffection - '+str(person.sexuals.affection)+'\nStress - '+str(person.stress) + '\nSkillpoints - ' + str(person.skillpoints) )
		selectedslave = person
		get_node("TabContainer/Supporter section/cheatpanel/maxobed").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/maxlust").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/maxloyalty").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/maxlewd").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/nostress").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/addskillpoints").set_disabled(false)
		get_node("TabContainer/Supporter section/cheatpanel/addlevel").set_disabled(false)

func _on_selectslave_pressed():
	if get_tree().get_current_scene().find_node('mansion'):
		get_tree().get_current_scene().selectslavelist(true, '_on_cheatpanel_visibility_changed', self)

func _on_options_visibility_changed():
	_ready()
	selectedslave = null

func _on_unlockspells_pressed():
	for i in globals.spelldict.values():
		i.learned = true
		if globals.abilities.abilitydict.has(i.code) == true:
			globals.player.ability.append(i.code)

func _on_gold_pressed():
	globals.resources.gold = get_node("TabContainer/Supporter section/cheatpanel/SpinBox").get_value()


func _on_food_pressed():
	globals.resources.food = get_node("TabContainer/Supporter section/cheatpanel/SpinBox").get_value()


func _on_mana_pressed():
	globals.resources.mana = get_node("TabContainer/Supporter section/cheatpanel/SpinBox").get_value()


func _on_maxloyalty_pressed():
	selectedslave.loyal = 100
	_on_cheatpanel_visibility_changed(selectedslave)
	if selectedslave.effects.has('captured') == true:
		selectedslave.add_effect(globals.effectdict.captured, true)


func _on_maxobed_pressed():
	selectedslave.obed += 100
	_on_cheatpanel_visibility_changed(selectedslave)
	if selectedslave.effects.has('captured') == true:
		selectedslave.add_effect(globals.effectdict.captured, true)


func _on_maxlewd_pressed():
	selectedslave.sexuals.affection = 1000
	_on_cheatpanel_visibility_changed(selectedslave)


func _on_maxlust_pressed():
	selectedslave.lust = 100
	_on_cheatpanel_visibility_changed(selectedslave)


func _on_nostress_pressed():
	selectedslave.stress += -200
	_on_cheatpanel_visibility_changed(selectedslave)



func _on_addskillpoints_pressed():
	selectedslave.skillpoints += 1
	_on_cheatpanel_visibility_changed(selectedslave)


func _on_addlevel_pressed():
	selectedslave.level += 1


func _on_levelup_pressed():
	if globals.player != null:
		globals.player.skillpoints += 1


func _on_custommouse_pressed():
	if get_node("TabContainer/Settings/custommouse").is_pressed() == true:
		globals.state.customcursor = "res://files/buttons/kursor1.png"
		globals.rules.custommouse = true
	else:
		globals.state.customcursor = null
		globals.rules.custommouse = false
	if globals.state.customcursor == null:
		Input.set_custom_mouse_cursor(null)
	else:
		Input.set_custom_mouse_cursor(load(globals.state.customcursor))



func _on_fontsize_value_changed( value ):
	if get_tree().get_current_scene().find_node('MainScreen') != null:
		get_tree().get_current_scene().get_node('MainScreen').get_font('font').set_size(value)
	elif get_tree().get_current_scene().find_node('changelog') != null:
		get_tree().get_current_scene().get_node('TextureFrame/changelog').get_font('font').set_size(value)
	globals.rules.fontsize = value


func _on_removepopcap_pressed():
	globals.state.nopoplimit = true
	if globals.state.nopoplimit == true:
		get_node("TabContainer/Supporter section/cheatpanel/removepopcap").set_disabled(true)

func _on_musicslider_value_changed(value):
	globals.rules.musicvol = round(value/3)
	get_node("TabContainer/Settings/musicslider/Label3").set_text("Music Volume: " +str(value))
	get_node("TabContainer/Settings/musicslider").set_value(value)
	if get_tree().get_current_scene().find_node("music"):
		get_tree().get_current_scene().get_node("music").set_volume_db(round(value/3))
		if globals.rules.musicvol <= 0:
			get_tree().get_current_scene().get_node('music').stop()
		else:
			if get_tree().get_current_scene().get_node('music').playing == false:
				get_tree().get_current_scene().get_node('music').play()

func _on_soundslider_value_changed( value ):
	globals.rules.soundvol = round(value/3)
	get_node("TabContainer/Settings/soundslider/Label3").set_text("Sound Volume: " +str(value))
	get_node("TabContainer/Settings/soundslider").set_value(value)
	


func _on_receive_pressed():
	globals.rules.receiving = get_node("TabContainer/Game/receive").is_pressed()


func _on_screenresize_pressed():
	globals.rules.oldresize = get_node("TabContainer/Settings/screenresize").is_pressed()
	if globals.rules.oldresize == true:
		get_tree().set_screen_stretch(1, 1, Vector2(1080,600))
	else:
		get_tree().set_screen_stretch(0, 1, Vector2(1080,600))
	hide()
	show()


func _on_fading_pressed():
	globals.rules.fadinganimation = get_node("TabContainer/Settings/fading").is_pressed()


func _on_RichTextLabel_meta_clicked( meta ):
	if meta == 'patreon':
		OS.shell_open('https://www.patreon.com/maverik')


func _on_permadeath_pressed():
	globals.rules.permadeath = get_node("TabContainer/Game/permadeath").is_pressed()


func _on_confirm_pressed():
	globals.rules.fullscreen = get_node("TabContainer/Settings/fullscreen").is_pressed()
	globals.overwritesettings()
	get_node("screenpopup").hide()



func _on_cancel_pressed():
	OS.set_window_fullscreen(!get_node("TabContainer/Settings/fullscreen").is_pressed())
	get_node("TabContainer/Settings/fullscreen").set_pressed(globals.rules.fullscreen)
	get_node("screenpopup").hide()



func _on_aliseoption_item_selected( ID ):
	globals.rules.enddayalise = ID



func _on_addupgradepoint_pressed():
	globals.resources.upgradepoints += 5


func _on_unlockgallery_pressed():
	for i in globals.charactergallery.values():
		i.unlocked = true
		i.nakedunlocked = true
		for k in i.scenes:
			k.unlocked = true



func _on_spritesindialogues_pressed():
	globals.rules.spritesindialogues = get_node("TabContainer/Settings/spritesindialogues").is_pressed()


func _on_screenconf_pressed():
	globals.rules.screenwidth = int(get_node("TabContainer/Settings/screenresize/width").get_text())
	globals.rules.screenheight = int(get_node("TabContainer/Settings/screenresize/height").get_text())
	get_tree().set_screen_stretch(1, 1, Vector2(globals.rules.screenwidth,globals.rules.screenheight))


func _on_skipcombatanimation_pressed():
	globals.rules.instantcombatanimation = $TabContainer/Settings/skipcombatanimation.pressed


func _on_randomportraits_pressed():
	globals.rules.randomcustomportraits = $TabContainer/Settings/randomportraits.pressed
