extends KinematicBody2D


var jump_height = 700
var gravity = 4000
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y -= jump_height
		pass


func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	move_and_slide(velocity, Vector2.UP)
	if is_on_floor():
		velocity.y = 0
	pass
