class_name Ball
extends RigidBody2D

@export var boost_strength := 1000.0


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				boost()


func boost() -> void:
	var target := get_global_mouse_position()
	var boost_direction := (target - global_position).normalized()
	apply_central_impulse(boost_direction * boost_strength)
