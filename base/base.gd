class_name Base
extends Node3D

## The current health of the base.
@export var max_health: int = 10

@onready var health_label: Label3D = $HealthLabel

var curr_health: int:
	set(health_in):
		curr_health = health_in
		health_label.text = str(curr_health, "/", max_health)
		health_label.modulate = Color.RED.lerp(Color.WHITE, float(curr_health) / max_health)
		print("Health changed, new health: ", curr_health)
		if curr_health < 1:
			get_tree().reload_current_scene()
	get:
		return curr_health

func _ready() -> void:
	curr_health = max_health


func take_damage(damage: int) -> void:
	curr_health -= damage
