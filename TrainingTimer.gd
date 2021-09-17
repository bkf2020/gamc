extends Timer

func _physics_process(delta):
	var tot_seconds = int(floor(get_node(".").time_left))
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
	
	var display = "Time left: " + hours_str + ":" + minutes_str + ":" + seconds_str
	get_node("TimeLeft").text = display
