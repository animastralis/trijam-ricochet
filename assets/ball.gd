extends RigidBody2D

@export var boost_strength := 1000.0


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				boost(event.global_position)


func boost(target: Vector2) -> void:
	var boost_direction := global_position.direction_to(target)
	apply_central_impulse(boost_direction * boost_strength)
