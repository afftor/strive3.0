extends WindowDialog

func _on_Mods_pressed():
	if(!visible):
		visible = true
	elif(visible):
		visible = false

var file_dictionary = {}
var mods_dictionary = {}

func add_items():
	var mods = globals.dir_contents("res://user_mods")
	var files = globals.dir_contents("res://files")
	for i in files:
		if(i.find(".gd") != -1):
			var modfile = File.new()
			modfile.open(i, File.READ)
			file_dictionary[i] = modfile.get_as_text()
			modfile.close()
	for i in mods:
		if(i.find(".gd") != -1):
			var modfile = File.new()
			modfile.open(i, File.READ)
			mods_dictionary[i] = modfile.get_as_text()
			modfile.close()	
	for i in file_dictionary:
		var backup = File.new()
		if !backup.file_exists(i.replacen("res://files", "res://backup")):
			backup.open(i.replacen("res://files", "res://backup"), File.WRITE)
			backup.store_string(file_dictionary[i])
			backup.close()
	var all_mods = get_node("allmodscontainer//VBoxContainer")
	var applied_mods = get_node("appliedmodscontainer//VBoxContainer")
	for i in mods_dictionary:
		all_mods.add_string(i)

var run_once = false
func _ready():
	if run_once:
		pass
	else:
		add_items()
		run_once = true

func _on_applymods_pressed():
	var all_mods = get_node("appliedmodscontainer//VBoxContainer")
	for i in all_mods.get_children():
		if(i.full_string != "NULL"):
			apply_mod_to_dictionary(mods_dictionary[i.full_string])
	apply_mod_dictionary()

func apply_mod_dictionary():	
	for i in file_dictionary.keys():
		var core_file = File.new()
		core_file.open(i, File.WRITE)
		core_file.store_string(file_dictionary[i])
		core_file.close()

func apply_mod_to_dictionary(string):
	var full_func = RegEx.new()
	full_func.compile("func\\s+(\\w*).*([\r\n]*[\\t#]+.*)*")
	var next_match = full_func.search_all(string)
	var full_var = RegEx.new()
	full_var.compile("[\r\n]+(var.*=).*")
	var next_var_match = full_var.search_all(string)
	for key in file_dictionary.keys():
		var file_string = file_dictionary[key]
		var file_match = full_func.search_all(file_string)
		for each_match in next_match:
			for nested_match in file_match:
				if(each_match.get_string(1) == nested_match.get_string(1)):
					file_dictionary[key] = file_dictionary[key].replacen(nested_match.get_string(), each_match.get_string())
		file_match = full_var.search_all(file_string)
		for each_match in next_var_match:
			for nested_match in file_match:
				if(each_match.get_string(1) == nested_match.get_string(1)):
					file_dictionary[key] = file_dictionary[key].replacen(nested_match.get_string(), each_match.get_string())

func _on_disablemods_pressed():
	for i in file_dictionary:
		var backup = File.new()
		backup.open(i.replacen("res://files", "res://backup"), File.READ)
		var file_string = backup.get_as_text()
		backup.close()
		backup.open(i, File.WRITE)
		backup.store_string(file_string)
		backup.close()
