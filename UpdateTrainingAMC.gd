extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Problem1Description").text = PlayerVariables.problem_names[0]
	get_node("Problem2Description").text = PlayerVariables.problem_names[1]
	get_node("Problem3Description").text = PlayerVariables.problem_names[2]
	get_node("Problem4Description").text = PlayerVariables.problem_names[3]
	get_node("Problem5Description").text = PlayerVariables.problem_names[4]
	get_node("Timer").wait_time = min(7200, PlayerVariables.seconds_left)

func _physics_process(delta):
	var tot_seconds = int(floor(get_node("Timer").time_left))
	var seconds = tot_seconds % 60
	tot_seconds = tot_seconds / 60 # get number of minutes
	var minutes = tot_seconds % 60
	tot_seconds = tot_seconds / 60 # get number of hours
	var hours = tot_seconds
	
	var seconds_str = str(seconds)
	var minutes_str = str(minutes)
	var hours_str = str(hours)
	
	if(seconds < 10):
		seconds_str = "0" + seconds_str
	if(minutes < 10):
		minutes_str = "0" + minutes_str
	if(hours < 10):
		hours_str = "0" + hours_str
	
	var display = "Time left: " + hours_str + ":" + minutes_str + ":" + seconds_str
	get_node("TimeLeft").text = display

func _on_ProblemLink_pressed(index):
	OS.set_clipboard(PlayerVariables.problem_links[index])

var player_answer = ""

func _on_ProblemSubmit_pressed(index):
	var istr = str(index + 1)
	var answer_node = get_node("Problem" + istr + "Answer")
	var confirm_node = get_node("Problem" + istr + "Confirm")
	player_answer = answer_node.text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	confirm_node.dialog_text = are_you_sure
	confirm_node.get_ok().text = "Yes"
	confirm_node.get_cancel().text = "No"
	confirm_node.show()

var problem_points = [7, 7, 7, 7, 7]
var player_points = 0

func _on_answer_confirmed(index):
	var istr = str(index + 1)
	var status_node = get_node("Problem" + istr + "Status")
	var answer_node = get_node("Problem" + istr + "Answer")
	var submit_node = get_node("Problem" + istr + "Submit")

	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[index], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[index]]
	if(player_answer == correct_answer):
		status_node.text = "Correct! (" + str(problem_points[index]) + "/7)"
		submit_node.hide()
		answer_node.hide()
		player_points += problem_points[index]
		get_node("TotalPoints").text = "Total points: " + str(player_points)
	else:
		status_node.text = "Wrong answer!"
		problem_points[index] = max(problem_points[index] - 2, 1)

func _on_FinishTraining_pressed():
	var confirmation = get_node("ConfirmFinishTraining")
	confirmation.dialog_text = "Are you sure you want to end the training here?"
	confirmation.get_cancel().text = "No"
	confirmation.get_ok().text = "Yes"
	confirmation.show()

func _on_FinishTraining_confirmed():
	# this is the number of seconds used so far
	PlayerVariables.seconds_left -= 7200 - int(floor(get_node("Timer").time_left))
	get_tree().change_scene("res://YourHome.tscn")
