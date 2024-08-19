extends CharacterBody2D

@export var area2D : Area2D
@export var Forkliftbar : CollisionShape2D

var original_parent : Node2D = null

func _ready():
	if area2D == null or Forkliftbar == null:
		print("xxx")
	
	#area2D.connect("body_entered", self, "_on_body_entered")
	#area2D.connect("body_exited", self, "_on_body_exited")
	
func _on_body_entered(body):
	if body == Forkliftbar:
		set_physics_process((false))
		#attach_to_Forkliftbar()
		
#func _on_body_exited(body):
	#if body == Forkliftbar:
		#detach_from_Forkliftbar()
