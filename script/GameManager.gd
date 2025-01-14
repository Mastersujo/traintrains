extends Node

const PLAYER = preload("res://scenes/map/player.tscn")
var player

func _ready() -> void:
	player = PLAYER.instantiate()
	
func spawn_player(current_scene :Node, spawn_position :Vector2):
	current_scene.add_child(player)
	player.position = spawn_position
