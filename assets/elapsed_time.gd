extends Label

var elapsed_time := 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	elapsed_time += delta
	var minutes: int = elapsed_time / 60
	var seconds: int = int(elapsed_time) % 60
	var seconds_str: String
	if seconds < 10:
		seconds_str = "0" + str(seconds)
	else:
		seconds_str = str(seconds)
	var fractional_str := ("%0.2f" % (elapsed_time - floor(elapsed_time))).split(".")[1]
	
	text = str(minutes) + ":" + seconds_str + "." + fractional_str
