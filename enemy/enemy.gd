class_name Enemy
extends PathFollow3D

## The movement speed of the enemy.
@export var movement_speed: float = 1.0


func _process(delta: float) -> void:
	progress += delta * movement_speed
