class_name Spinner
extends Node2D

## Starting rotation in degrees
@export var starting_rotation := 0


func _ready() -> void:
	$Spinner.rotation_degrees = starting_rotation
