extends Control


@export var name_of_place : String #name of the place displayed on the map
@export var connections : Array #array of places that can be traveled to 
@export var numiration : int #index of the place used in connections
@export var modulate_me : Color #just the color of the node


signal player_asked_to_move

func _ready() -> void:
	$Button.text = name_of_place
	$Sprite2D.modulate = modulate_me






func _on_button_pressed() -> void:
	Events.emit_signal("player_asked_to_move",numiration,connections)
	
