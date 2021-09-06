extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 100
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	position.x = 737
	position.y = rand_range(420,630)
	 # Replace with function body.

func _process(delta):
	move_and_collide(Vector2(-speed*delta,0))
	if (position.x <= 55):
		print ("restart")
		position.x = 785
		position.y = rand_range(420,630)
		print (position.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
