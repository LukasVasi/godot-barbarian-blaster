class_name Enemy
extends PathFollow3D

## The movement speed of the enemy.
@export var movement_speed: float = 1.0

## The damage this enemy does to the base and obstacles.
@export var damage: int = 1

@onready var base: Base = get_tree().get_first_node_in_group("Base")

func _process(delta: float) -> void:
	progress += delta * movement_speed
	if progress_ratio == 1.0:
		base.take_damage(damage)
		set_process(false)
