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
	are_you_sure += curr_difficulty + " as your difficulty.\n"
	are_you_sure += "Once you press start, there will be a 2 HOUR TIMER that can't be stopped.\n"
	are_you_sure += "Also, have a browser open so you can view the problems.\n"
	are_you_sure += "Are you sure you want to start?"
	get_node("ConfirmTraining").dialog_text = are_you_sure
	get_node("ConfirmTraining").get_ok().text = "Yes"
	get_node("ConfirmTraining").get_cancel().text = "No"
	get_node("ConfirmTraining").show()

var rng = RandomNumberGenerator.new()
func _on_ConfirmTraining_confirmed():
	rng.randomize()
	var ltest = PlayerVariables.test.to_lower()
	var ldiff = PlayerVariables.difficulty.to_lower()
	if(ldiff == "very hard"):
		ldiff = "veryhard"
	
	var test_data = File.new()
	test_data.open("res://choices/" + ltest + "/" + ldiff, File.READ)
	
	var problem_data = []
	
	while(!test_data.eof_reached()):
		problem_data.push_back(test_data.get_line())
	
	var possible = problem_data.size() - 1 # extra line at end
	var choices = []
	
	for i in 5:
		var curr_choice_idx = rng.randi_range(0, possible - 1)
		while(choices.find(curr_choice_idx) != -1):
			curr_choice_idx = rng.randi_range(0, possible - 1)
		choices.push_back(curr_choice_idx)
		
		var curr_choice = problem_data[curr_choice_idx]
		var data_in_choice = curr_choice.split(",", true, 3)
		var curr_problem_link = data_in_choice[0]
		var curr_problem_answer = data_in_choice[1]
		var curr_problem_name = data_in_choice[2]
		var curr_problem_num = data_in_choice[3]
		
		PlayerVariables.problem_links[i] = curr_problem_link
		PlayerVariables.problem_answers[i] = curr_problem_answer
		PlayerVariables.problem_names[i] = curr_problem_name
		PlayerVariables.problem_nums[i] = int(curr_problem_num)
		
	if(ltest == "aime"):
		get_tree().change_scene("res://TrainingAIME.tscn")
	else:
		get_tree().change_scene("res://TrainingAMC.tscn")
