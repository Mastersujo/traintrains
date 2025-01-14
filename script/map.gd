extends Node2D
@onready var m1: Marker2D = $"1"

func _ready() -> void:
	GM.spawn_player(self, m1.position)
