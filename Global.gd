extends Node

var score = 0
var lives = 5
var level = -1
var timer = 0
var damage = 1

var levels = [
	load("res://Levels/Level1.tscn")
	,load("res://Levels/Level2.tscn")
]

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	
func _unhandled_input(_event):
	if Input.is_action_just_pressed("quit"):
		var menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true
		else:
			menu.hide()
			get_tree().paused = false

func increase_score(s):
	score += s
	var hud = get_node_or_null("//root/Game/UI/HUD")
	if hud != null:
		hud._update_score()

func decrease_lives(l):
	lives -= l
	var hud = get_node_or_null("//root/Game/UI/HUD")
	if hud != null:
		hud._update_lives()
