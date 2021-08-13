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
