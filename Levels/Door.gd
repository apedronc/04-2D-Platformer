extends Area2D


func _ready():
	pass






func _on_Door_body_entered(body):
		if body.name == "Player":
			Global.level = 0
			var _s = get_tree().change_scene("res://Levels/Level2.tscn")
