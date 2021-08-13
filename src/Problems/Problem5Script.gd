extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Label").text = PlayerVariables.problem_names[4]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_BackTraining_pressed():
	get_tree().change_scene("res://Training.tscn")

func _on_ProblemLink5_pressed():
	OS.shell_open(PlayerVariables.problem_links[4])
