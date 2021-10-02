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
	
	var characteristics = "Characteristics\n"
	characteristics += "Motivation: " + str(PlayerVariables.motivation) + '\n'
	characteristics += "Energy: " + str(PlayerVariables.energy) + '\n'
	characteristics += "Hunger: " + str(PlayerVariables.hunger) + '\n'
	if(PlayerVariables.has_math_skill):
		characteristics += "Hunger: " + str(PlayerVariables.math_skill) + '\n'
	else:
		characteristics += "Math skill: N/A\n"
	characteristics += "Money left: $" + str(PlayerVariables.money) + '\n'
	characteristics += "Job: " + PlayerVariables.job + '\n'
	get_node("Characteristics").text = characteristics

func _on_Training_pressed():
	var seconds_left = int(min(PlayerVariables.seconds_left, 7200))
	var seconds = seconds_left % 60
	seconds_left = seconds_left / 60 # get number of minutes
	var minutes = seconds_left % 60
	seconds_left = seconds_left / 60 # get number of hours
	var hours = seconds_left
	
	var seconds_str = str(seconds)
	var minutes_str = str(minutes)
	var hours_str = str(hours)
	
	if(seconds < 10):
		seconds_str = "0" + seconds_str
	if(minutes < 10):
		minutes_str = "0" + minutes_str
	if(hours < 10):
		hours_str = "0" + hours_str
	var time_left = hours_str + ":" + minutes_str + ":" + seconds_str
	time_left += " (format: hours:minutes:seconds)"
	
	var confirmation = get_node("ConfirmationTraining")
	confirmation.dialog_text = "Are you sure you want to start a training?\n"
	confirmation.dialog_text += "You will have at most " + time_left + " to finish.\n"
	confirmation.dialog_text += "You can't go back to this home screen until you end the training."
	confirmation.get_cancel().text = "No"
	confirmation.get_ok().text = "Yes"
	confirmation.show()

func _on_Training_confirmed():
	get_tree().change_scene("res://SelectDifficulty.tscn")
