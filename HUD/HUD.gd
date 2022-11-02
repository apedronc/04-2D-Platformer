extends Control


func _ready():
	_update_score()
	_update_lives()

func _update_score():
	$Score.text = "Score: " + str(Global.score)

func _update_lives():
	$Lives.text = "Lives: " + str(Global.lives)
