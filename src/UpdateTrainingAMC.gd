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
	

func _on_Problem1Submit_pressed():
	var player_answer = get_node("Problem1Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem1Confirm").dialog_text = are_you_sure
	get_node("Problem1Confirm").get_ok().text = "Yes"
	get_node("Problem1Confirm").get_cancel().text = "No"
	get_node("Problem1Confirm").show()
func _on_Problem2Submit_pressed():
	var player_answer = get_node("Problem2Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem2Confirm").dialog_text = are_you_sure
	get_node("Problem2Confirm").get_ok().text = "Yes"
	get_node("Problem2Confirm").get_cancel().text = "No"
	get_node("Problem2Confirm").show()
func _on_Problem3Submit_pressed():
	var player_answer = get_node("Problem3Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem3Confirm").dialog_text = are_you_sure
	get_node("Problem3Confirm").get_ok().text = "Yes"
	get_node("Problem3Confirm").get_cancel().text = "No"
	get_node("Problem3Confirm").show()
func _on_Problem4Submit_pressed():
	var player_answer = get_node("Problem4Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem4Confirm").dialog_text = are_you_sure
	get_node("Problem4Confirm").get_ok().text = "Yes"
	get_node("Problem4Confirm").get_cancel().text = "No"
	get_node("Problem4Confirm").show()
func _on_Problem5Submit_pressed():
	var player_answer = get_node("Problem5Answer").text
	var are_you_sure = "You selected " + player_answer + ". Are you sure?"
	get_node("Problem5Confirm").dialog_text = are_you_sure
	get_node("Problem5Confirm").get_ok().text = "Yes"
	get_node("Problem5Confirm").get_cancel().text = "No"
	get_node("Problem5Confirm").show()
