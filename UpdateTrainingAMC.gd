extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Problem1Description").text = PlayerVariables.problem_names[0]
	get_node("Problem2Description").text = PlayerVariables.problem_names[1]
	get_node("Problem3Description").text = PlayerVariables.problem_names[2]
	get_node("Problem4Description").text = PlayerVariables.problem_names[3]
	get_node("Problem5Description").text = PlayerVariables.problem_names[4]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Problem1Link_pressed():
	OS.shell_open(PlayerVariables.problem_links[0])
func _on_Problem2Link_pressed():
	OS.shell_open(PlayerVariables.problem_links[1])
func _on_Problem3Link_pressed():
	OS.shell_open(PlayerVariables.problem_links[2])
func _on_Problem4Link_pressed():
	OS.shell_open(PlayerVariables.problem_links[3])
func _on_Problem5Link_pressed():
	OS.shell_open(PlayerVariables.problem_links[4])
	
var player_answer = ""

func _on_Problem1Submit_pressed():
	player_answer = get_node("Problem1Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem1Confirm").dialog_text = are_you_sure
	get_node("Problem1Confirm").get_ok().text = "Yes"
	get_node("Problem1Confirm").get_cancel().text = "No"
	get_node("Problem1Confirm").show()
func _on_Problem2Submit_pressed():
	player_answer = get_node("Problem2Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem2Confirm").dialog_text = are_you_sure
	get_node("Problem2Confirm").get_ok().text = "Yes"
	get_node("Problem2Confirm").get_cancel().text = "No"
	get_node("Problem2Confirm").show()
func _on_Problem3Submit_pressed():
	player_answer = get_node("Problem3Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem3Confirm").dialog_text = are_you_sure
	get_node("Problem3Confirm").get_ok().text = "Yes"
	get_node("Problem3Confirm").get_cancel().text = "No"
	get_node("Problem3Confirm").show()
func _on_Problem4Submit_pressed():
	player_answer = get_node("Problem4Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem4Confirm").dialog_text = are_you_sure
	get_node("Problem4Confirm").get_ok().text = "Yes"
	get_node("Problem4Confirm").get_cancel().text = "No"
	get_node("Problem4Confirm").show()
func _on_Problem5Submit_pressed():
	player_answer = get_node("Problem5Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem5Confirm").dialog_text = are_you_sure
	get_node("Problem5Confirm").get_ok().text = "Yes"
	get_node("Problem5Confirm").get_cancel().text = "No"
	get_node("Problem5Confirm").show()

var problem_points = [7, 7, 7, 7, 7]

func _on_Problem1Confirm_confirmed():
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[0], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[0]]
	if(player_answer == correct_answer):
		get_node("Problem1Status").text = "Correct! (" + str(problem_points[0]) + "/7)"
		get_node("Problem1Submit").hide()
		get_node("Problem1Answer").hide()
	else:
		get_node("Problem1Status").text = "Wrong answer! (0/7)"
		problem_points[0] = max(problem_points[0] - 2, 1)
func _on_Problem2Confirm_confirmed():
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[1], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[1]]
	if(player_answer == correct_answer):
		get_node("Problem2Status").text = "Correct! (" + str(problem_points[1]) + "/7)"
		get_node("Problem2Submit").hide()
		get_node("Problem2Answer").hide()
	else:
		get_node("Problem2Status").text = "Wrong answer! (0/7)"
		problem_points[1] = max(problem_points[1] - 2, 1)
func _on_Problem3Confirm_confirmed():
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[2], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[2]]
	if(player_answer == correct_answer):
		get_node("Problem3Status").text = "Correct! (" + str(problem_points[2]) + "/7)"
		get_node("Problem3Submit").hide()
		get_node("Problem3Answer").hide()
	else:
		get_node("Problem3Status").text = "Wrong answer! (0/7)"
		problem_points[2] = max(problem_points[2] - 2, 1)
func _on_Problem4Confirm_confirmed():
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[3], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[3]]
	if(player_answer == correct_answer):
		get_node("Problem4Status").text = "Correct! (" + str(problem_points[3]) + "/7)"
		get_node("Problem4Submit").hide()
		get_node("Problem4Answer").hide()
	else:
		get_node("Problem4Status").text = "Wrong answer! (0/7)"
		problem_points[3] = max(problem_points[3] - 2, 1)
func _on_Problem5Confirm_confirmed():
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[4], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[4]]
	if(player_answer == correct_answer):
		get_node("Problem5Status").text = "Correct! (" + str(problem_points[4]) + "/7)"
		get_node("Problem5Submit").hide()
		get_node("Problem5Answer").hide()
	else:
		get_node("Problem5Status").text = "Wrong answer! (0/7)"
		problem_points[4] = max(problem_points[4] - 2, 1)
