extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TestSelection_item_selected(index):
	var diff_description = ""
	if(index == 0):
		diff_description += "For the AIME Test, the difficulties represent:\n\n"
		diff_description += "Easy = Problems 1 to 5\n"
		diff_description += "Medium = Problems 6 to 10\n"
		diff_description += "Hard = Problems 11 to 13\n"
		diff_description += "Very Hard = Problems 14 to 15\n"
		get_node("DDLabel").text = diff_description
	elif(index == 1):
		diff_description += "For the AMC 8 Test, the difficulties represent:\n\n"
		diff_description += "Easy = Problems 1 to 15\n"
		diff_description += "Medium = Problems 16 to 18\n"
		diff_description += "Hard = Problems 19 to 22\n"
		diff_description += "Very Hard = Problems 23 to 25\n"
		get_node("DDLabel").text = diff_description
	elif(index == 2):
		diff_description += "For the AMC 10 Test, the difficulties represent:\n\n"
		diff_description += "Easy = Problems 1 to 15\n"
		diff_description += "Medium = Problems 16 to 18\n"
		diff_description += "Hard = Problems 19 to 22\n"
		diff_description += "Very Hard = Problems 23 to 25\n"
		get_node("DDLabel").text = diff_description
	else:
		diff_description += "For the AMC 12 Test, the difficulties represent:\n\n"
		diff_description += "Easy = Problems 1 to 15\n"
		diff_description += "Medium = Problems 16 to 18\n"
		diff_description += "Hard = Problems 19 to 22\n"
		diff_description += "Very Hard = Problems 23 to 25\n"
		get_node("DDLabel").text = diff_description


func _on_GetTraining_pressed():
	var test_id = get_node("TestSelection").get_selected_id()
	var diff_id = get_node("DifficultySelection").get_selected_id()
	var curr_test = get_node("TestSelection").get_item_text(test_id)
	var curr_difficulty = get_node("DifficultySelection").get_item_text(diff_id)
	PlayerVariables.test = curr_test
	PlayerVariables.difficulty = curr_difficulty
	var are_you_sure = "You selected " + curr_test + " as your test and "
	are_you_sure += curr_difficulty + " as your difficulty. Are you sure?"
	get_node("ConfirmTraining").dialog_text = are_you_sure
	get_node("ConfirmTraining").get_ok().text = "Yes"
	get_node("ConfirmTraining").get_cancel().text = "No"
	get_node("ConfirmTraining").show()

var rng = RandomNumberGenerator.new()
func _on_ConfirmTraining_confirmed():
	rng.randomize()
	if(PlayerVariables.test == "AIME"):
		for i in 5:
			var year = rng.randi_range(2015, 2021)
			var problem = 0
			if(PlayerVariables.difficulty == "Easy"):
				problem = rng.randi_range(1, 5)
			if(PlayerVariables.difficulty == "Medium"):
				problem = rng.randi_range(6, 10)
			if(PlayerVariables.difficulty == "Hard"):
				problem = rng.randi_range(11, 13)
			if(PlayerVariables.difficulty == "Very Hard"):
				problem = rng.randi_range(14, 15)

			var test_types = ["I", "II"]
			var test_type = test_types[rng.randi_range(0, 1)]

			var problem_name = str(year) + " AIME " + test_type + " #" + str(problem)
			PlayerVariables.problem_names[i] = problem_name

			var problem_link = "https://artofproblemsolving.com/wiki/index.php/"
			problem_link += str(year) + "_AIME_"
			problem_link += test_type + "_Problems#"
			problem_link += "Problem_" + str(problem)
			PlayerVariables.problem_links[i] = problem_link
	elif(PlayerVariables.test == "AMC8"):
		for i in 5:
			var year = rng.randi_range(2015, 2020)
			var problem = 0
			if(PlayerVariables.difficulty == "Easy"):
				problem = rng.randi_range(1, 15)
			if(PlayerVariables.difficulty == "Medium"):
				problem = rng.randi_range(16, 18)
			if(PlayerVariables.difficulty == "Hard"):
				problem = rng.randi_range(19, 22)
			if(PlayerVariables.difficulty == "Very Hard"):
				problem = rng.randi_range(23, 25)

			var problem_name = str(year) + " AMC 8 #" + str(problem)
			PlayerVariables.problem_names[i] = problem_name

			var problem_link = "https://artofproblemsolving.com/wiki/index.php/"
			problem_link += str(year) + "_AMC_8_Problems#"
			problem_link += "Problem_" + str(problem)
			PlayerVariables.problem_links[i] = problem_link
	elif(PlayerVariables.test == "AMC10"):
		for i in 5:
			var year = rng.randi_range(2015, 2021)
			var problem = 0
			if(PlayerVariables.difficulty == "Easy"):
				problem = rng.randi_range(1, 15)
			if(PlayerVariables.difficulty == "Medium"):
				problem = rng.randi_range(16, 18)
			if(PlayerVariables.difficulty == "Hard"):
				problem = rng.randi_range(19, 22)
			if(PlayerVariables.difficulty == "Very Hard"):
				problem = rng.randi_range(23, 25)

			var test_types = ["A", "B"]
			var test_type = test_types[rng.randi_range(0, 1)]

			var problem_name = str(year) + " AMC 10" + test_type + " #" + str(problem)
			PlayerVariables.problem_names[i] = problem_name

			var problem_link = "https://artofproblemsolving.com/wiki/index.php/"
			problem_link += str(year) + "_AMC_10" + test_type + "_Problems#"
			problem_link += "Problem_" + str(problem)
			PlayerVariables.problem_links[i] = problem_link

	elif(PlayerVariables.test == "AMC12"):
		for i in 5:
			var year = rng.randi_range(2015, 2021)
			var problem = 0
			if(PlayerVariables.difficulty == "Easy"):
				problem = rng.randi_range(1, 15)
			if(PlayerVariables.difficulty == "Medium"):
				problem = rng.randi_range(16, 18)
			if(PlayerVariables.difficulty == "Hard"):
				problem = rng.randi_range(19, 22)
			if(PlayerVariables.difficulty == "Very Hard"):
				problem = rng.randi_range(23, 25)

			var test_types = ["A", "B"]
			var test_type = test_types[rng.randi_range(0, 1)]

			var problem_name = str(year) + " AMC 12" + test_type + " #" + str(problem)
			PlayerVariables.problem_names[i] = problem_name

			var problem_link = "https://artofproblemsolving.com/wiki/index.php/"
			problem_link += str(year) + "_AMC_12" + test_type + "_Problems#"
			problem_link += "Problem_" + str(problem)
			PlayerVariables.problem_links[i] = problem_link

	if(PlayerVariables.test == "AIME"):
		get_tree().change_scene("res://TrainingAIME.tscn")
	else:
		get_tree().change_scene("res://TrainingAMC.tscn")
