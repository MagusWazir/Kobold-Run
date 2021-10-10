extends Node2D


var score = 0
var end_game = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func finish():
	end_game = true
	$UI/ScoreBox/VBoxContainer/Label.text = "Final Score: " + str(score)
	get_tree().paused = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(!end_game):
		score += 1
		$UI/ScoreBox/VBoxContainer/Label.text = str(score)
	pass
