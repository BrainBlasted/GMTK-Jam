extends KinematicBody2D

var speed = 70.0
var velocity = Vector2()

func _fixed_process(delta):
	# move( Vector2(0,-1))
	velocity.y -= delta * speed
	var motion = delta * velocity
	move(motion)
	if Input.is_key_pressed(KEY_DOWN):
		_slow()
	if Input.is_key_pressed(KEY_UP):
		_speedup()	
func _slow():
	# Slows the character
	speed = 50.0
func _speedup():
	# Slows the character
	speed = 300.0	
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)

	pass

