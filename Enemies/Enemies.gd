extends Node2D

onready var FireSkull = load("res://Enemies/FireSkull.tscn")
var start_position = Vector2(0, 0)

func _process(_delta):
	if not has_node("FireSkull"):
		var fireskull = FireSkull.instance()
		fireskull.name = "FireSkull"
		add_child(fireskull)
