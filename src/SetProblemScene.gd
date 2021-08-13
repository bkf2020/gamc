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


func _on_Problem_1_pressed():
	get_tree().change_scene("res://Problems/Problem1.tscn")
func _on_Problem_2_pressed():
	get_tree().change_scene("res://Problems/Problem2.tscn")
func _on_Problem_3_pressed():
	get_tree().change_scene("res://Problems/Problem3.tscn")
func _on_Problem_4_pressed():
	get_tree().change_scene("res://Problems/Problem4.tscn")
func _on_Problem_5_pressed():
	get_tree().change_scene("res://Problems/Problem5.tscn")
