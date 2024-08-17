extends CharacterBody2D


var SPEED = 300.0
var accel = Vector2.ZERO
	
func _process(delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	velocity = velocity.normalized() * SPEED
	move_and_slide()

