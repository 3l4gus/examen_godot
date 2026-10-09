extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	velocity.x = -SPEED
	
	if $RayCast2D.is_colliding():
		velocity.x = -SPEED * 2

	move_and_slide()
