extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Problem1Description").text = PlayerVariables.problem_names[0]
	get_node("Problem2Description").text = PlayerVariables.problem_names[1]
	get_node("Problem3Description").text = PlayerVariables.problem_names[2]
	get_node("Problem4Description").text = PlayerVariables.problem_names[3]
	get_node("Problem5Description").text = PlayerVariables.problem_names[4]

func _on_ProblemLink_pressed(index):
	OS.set_clipboard(PlayerVariables.problem_links[index])

func valid_format(var input):
	return input.is_valid_integer() and 0 <= int(input) and int(input) <= 999

var player_answer = ""

func _on_ProblemSubmit_pressed(index):
	var istr = str(index + 1)
	var answer_node = get_node("Problem" + istr + "Answer")
	var confirm_node = get_node("Problem" + istr + "Confirm")
	var invalid_node = get_node("Problem" + istr + "Invalid")
	player_answer = answer_node.text
	if(valid_format(player_answer)):
		var are_you_sure = "Your answer is " + player_answer + ". Are you sure?"
		confirm_node.dialog_text = are_you_sure
		confirm_node.get_ok().text = "Yes"
		confirm_node.get_cancel().text = "No"
		confirm_node.show()
	else:
		var invalid_format = "You answer \"" + player_answer + "\" is invalid!"
		invalid_format += " It should be an integer between 0 and 999"
		invalid_node.dialog_text = invalid_format
		invalid_node.show()

var problem_points = [7, 7, 7, 7, 7]

func _on_answer_confirmed(index):
	var istr = str(index + 1)
	var answers_file = File.new()
	answers_file.open("res://" + PlayerVariables.problem_answers[index], File.READ)
	var answers = ["A"]
	while(!answers_file.eof_reached()):
		answers.push_back(answers_file.get_line())
	var correct_answer = answers[PlayerVariables.problem_nums[index]]
	if(int(player_answer) == int(correct_answer)):
		get_node("Problem" + istr + "Status").text = "Correct! (" + str(problem_points[index]) + "/7)"
		get_node("Problem" + istr + "Submit").hide()
		get_node("Problem" + istr + "Answer").hide()
	else:
		get_node("Problem" + istr + "Status").text = "Wrong answer! (0/7)"
		problem_points[index] = max(problem_points[index] - 2, 1)
