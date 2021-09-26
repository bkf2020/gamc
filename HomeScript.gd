extends Panel

func _ready():
	var time_left = "Time left in the day:\n"
	var tot_seconds = PlayerVariables.seconds_left
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
	time_left += hours_str + ":" + minutes_str + ":" + seconds_str
	get_node("TimeLeft").text = time_left

func _on_Training_pressed():
	var confirmation = get_node("ConfirmationTraining")
	confirmation.dialog_text = "Are you sure you want to start a 2 hour training? You cannot go back."
	confirmation.get_cancel().text = "No"
	confirmation.get_ok().text = "Yes"
	confirmation.show()

func _on_Training_confirmed():
	get_tree().change_scene("res://SelectDifficulty.tscn")
