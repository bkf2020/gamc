extends Panel

func _on_Training_pressed():
	var confirmation = get_node("ConfirmationTraining")
	confirmation.dialog_text = "Are you sure you want to start a 2 hour training? You cannot go back."
	confirmation.get_cancel().text = "No"
	confirmation.get_ok().text = "Yes"
	confirmation.show()

func _on_Training_confirmed():
	get_tree().change_scene("res://SelectDifficulty.tscn")
