extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	pass # Replace with function body.

func _input(event):
	if (Input.is_action_just_pressed("jump")):
		print ("Up")
		apply_central_impulse(Vector2(0,-5000))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
