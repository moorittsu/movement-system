extends CharacterBody2D

@export_subgroup("Nodes")
@export var gravity_component: GravityComponent
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent
@export var jump_component: JumpComponent

func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal, delta)
	animation_component.handle_move_animation(input_component.input_horizontal)
	jump_component.handle_jump(self, input_component.get_jump_input())
	animation_component.handle_jump_animation(jump_component.is_jumping, gravity_component.is_falling)
	#print physics and game fps
	#print("FPS:", Engine.get_frames_per_second(), " Physics:", Engine.get_physics_ticks_per_second())
	
	move_and_slide()
