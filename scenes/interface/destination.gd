extends Control


@export var name_of_place : String 
@export var distance : float
@export var connections : Array
@export var numiration : int
@export var modulate_me : Color


signal player_asked_to_move

func _ready() -> void:
	$Button.text = name_of_place
	$Sprite2D.modulate = modulate_me






func _on_button_pressed() -> void:
	Events.emit_signal("player_asked_to_move",numiration,connections)
	
