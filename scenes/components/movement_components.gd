class_name MovementComponent
extends Node

@export_subgroup("Settings")
@export var speed: float = 100
@export var acceleration: float = 800.0
@export var friction: float = 1000.0

func handle_horizontal_movement(body: CharacterBody2D, direction: float, delta: float) -> void:
	var target_speed = direction * speed

	if direction != 0:
		body.velocity.x = move_toward(body.velocity.x, target_speed, acceleration * delta)
	else:
		body.velocity.x = move_toward(body.velocity.x, 0, friction * delta)
