extends Control


func _input(event):
	if event.is_action_pressed("pause"):
		var new_paused_state = not get_tree().paused
		get_tree().paused = not get_tree().paused
		visible = new_paused_state
