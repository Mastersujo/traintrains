extends Control

var mouse_moved_by : Vector2

func _process(delta: float) -> void:
	
	if Input.is_action_pressed("LMB"):
		
		mouse_moved_by =  Input.get_last_mouse_velocity() 
		position += mouse_moved_by.normalized()*3
		
	else:
		mouse_moved_by = Vector2.ZERO
