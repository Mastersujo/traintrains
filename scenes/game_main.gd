extends Node2D

var player_position : int = 1 

var player_possibility : Array = [2]
var colors_showcase : Array = [Color(0,0,0),Color(0.2,0.2,0.2),Color(0.9,0.7,0.1),Color(0.1,0.1,0.9),Color(0.2,0.9,0.5),Color(0.5,0.5,0.9),Color(0.6,0.6,0.7), ]

func _ready() -> void:
	Events.connect("player_asked_to_move",move_player)

func _process(delta: float) -> void:
	$overall_interface/pldebug.text = str(player_possibility)




func move_player(destination,connections):
	if player_possibility.has(destination):
		change_state(destination,connections)
	else:
		Events.interested_spot = []
		print("destination_unavailable")







func change_state(destination,connections):
	player_position = destination
	player_possibility = connections
	$background.modulate = colors_showcase[destination]
