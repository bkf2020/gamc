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
