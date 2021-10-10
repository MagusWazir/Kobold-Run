extends Node2D

var cactus

# Called when the node enters the scene tree for the first time.
func _ready():
	cactus = preload("res://Cactus.tscn")
	pass # Replace with function body.

func spawnCacti():
	var newcac = cactus.instance()
	get_parent().add_child(newcac)
	newcac.global_position = global_position
	pass

func _process(delta):
	
	pass


func _on_Timer_timeout():
	spawnCacti()
	$Timer.wait_time = rand_range(.5,1.5)
	pass # Replace with function body.
