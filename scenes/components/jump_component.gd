class_name JumpComponent
extends Node

@export_subgroup("Settings")
@export var jumpforce: float = 400.0

var is_jumping: bool = false

func handle_jump(body: CharacterBody2D, want_to_jump: bool) -> void:
	if body.is_on_floor() and want_to_jump:
		body.velocity.y = -jumpforce
		
	is_jumping = body.velocity.y < 0 and not body.is_on_floor()
