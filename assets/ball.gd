class_name Ball
extends RigidBody2D

@export var boost_strength := 1000.0

@onready var particles := $Pivot/GPUParticles2D
@onready var pivot := $Pivot


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				boost()
	
	# arrow key movement
	if event.is_action_pressed("boost_up"):
		boost_dir(Vector2.UP)
	if event.is_action_pressed("boost_down"):
		boost_dir(Vector2.DOWN)
	if event.is_action_pressed("boost_left"):
		boost_dir(Vector2.LEFT)
	if event.is_action_pressed("boost_right"):
		boost_dir(Vector2.RIGHT)


func boost() -> void:
	var target := get_global_mouse_position()
	var boost_direction := (target - global_position).normalized()
	apply_central_impulse(boost_direction * boost_strength)
	pivot.rotation = -boost_direction.angle()
	particles.emitting = true


func boost_dir(direction: Vector2) -> void:
	apply_central_impulse(direction * boost_strength)
	pivot.rotation = -direction.angle()
	particles.emitting = true
