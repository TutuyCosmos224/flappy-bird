extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const UP = Vector2(0,-1)
const FLAP = 250
const MAXFALLSPEED = 350
const GRAVITY = 15

var motion = Vector2()
var Pipe1 = preload("res://Pipe.tscn")
var Pipe2 = preload("res://Pipe2.tscn")
var Pipe3 = preload("res://Pipe3.tscn")
var Pipe4 = preload("res://Pipe4.tscn")
var Pipe5 = preload("res://Pipe5.tscn") 
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	# Replace with function body.

func _physics_process(delta):
	motion.y += GRAVITY
	if (motion.y > MAXFALLSPEED):
		motion.y = MAXFALLSPEED
	
	if Input.is_action_just_pressed("jump"):
		motion.y = -FLAP
		$WingSFX.play()
		
	motion = move_and_slide(motion, UP)
	
	if position.y >=515:
		get_tree().reload_current_scene()
	
	get_parent().get_node("Score/RichTextLabel").text = "score: " + str(score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Detect_area_entered(area):
	if (area.name == "PointArea"):
		score = score + 1
		print(score)
		$PointSFX.play()
	
	pass # Replace with function body.


func _on_Detect_body_entered(body):
	if (body.name == "Pipe"):
		get_tree().reload_current_scene()
	elif (body.name == "Pipe2"):
		get_tree().reload_current_scene()
	elif (body.name == "Pipe3"):
		get_tree().reload_current_scene()
	elif (body.name == "Pipe4"):
		get_tree().reload_current_scene()
	elif (body.name == "Pipe5"):
		get_tree().reload_current_scene()
	pass # Replace with function body.
