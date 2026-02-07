extends Camera2D

@export var ball: Ball


func _physics_process(delta: float) -> void:
	if ball:
		global_position.x = ball.global_position.x
