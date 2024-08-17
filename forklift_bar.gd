extends CharacterBody2D


var SPEED = 300.0
var accel = Vector2.ZERO
var amplitude = 50
var center_y = 0
var bottom_y = 10
var direction = 1

@onready var tween = $Tween
func _ready():
	center_y = position.y
		
func _process(delta):
	velocity = Vector2.ZERO
	position.y += direction * delta
	
	if position.y > center_y + bottom_y:
		position.y = center_y + bottom_y
		direction = -1
	elif position.y < center_y - amplitude:
		position.y = center_y - amplitude
		direction = 1
	
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	velocity = velocity.normalized() * SPEED
	move_and_slide()

