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
	get_tree().change_scene("res://Problem1.tscn")
func _on_Problem_2_pressed():
	get_tree().change_scene("res://Problem2.tscn")
func _on_Problem_3_pressed():
	get_tree().change_scene("res://Problem3.tscn")
func _on_Problem_4_pressed():
	get_tree().change_scene("res://Problem4.tscn")
func _on_Problem_5_pressed():
	get_tree().change_scene("res://Problem5.tscn")

func _on_BackTraining_pressed():
	get_tree().change_scene("res://Training.tscn")


func _on_ProblemLink1_pressed():
	OS.shell_open("https://artofproblemsolving.com/wiki/index.php/2021_AIME_I_Problems#Problem_6")
func _on_ProblemLink2_pressed():
	OS.shell_open("https://artofproblemsolving.com/wiki/index.php/2021_AIME_II_Problems#Problem_6")
func _on_ProblemLink3_pressed():
	OS.shell_open("https://artofproblemsolving.com/wiki/index.php/2021_AIME_I_Problems#Problem_7")
func _on_ProblemLink4_pressed():
	OS.shell_open("https://artofproblemsolving.com/wiki/index.php/2021_AIME_II_Problems#Problem_7")
func _on_ProblemLink5_pressed():
	OS.shell_open("https://artofproblemsolving.com/wiki/index.php/2021_AIME_I_Problems#Problem_8")
