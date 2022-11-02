extends Area2D


func _ready():
	pass


func _on_Door2_body_entered(_body):
	if Global.level == -1:
		Global.level = 1
		var _s = get_tree().change_scene("res://Levels/Level1.tscn")
