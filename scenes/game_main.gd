extends Node2D

var player_position : int = 1 
var player_fuel : float = 1000
var player_possibility : Array = [2]
var colors_showcase : Array = [Color(0,0,0),Color(0.2,0.2,0.2),Color(0.9,0.7,0.1),Color(0.1,0.1,0.9),Color(0.2,0.9,0.5),Color(0.5,0.5,0.9),Color(0.6,0.6,0.7), ]

var distances : Dictionary 
var fuel_cost : float 

func _ready() -> void:
	Events.connect("player_asked_to_move",move_player)
	distances = Events.distance_from_place_to_place

func _process(delta: float) -> void:
	$overall_interface/pldebug.text = str(player_possibility)




func move_player(destination,connections):
	if player_possibility.has(destination):
		
		var decide_distance : String = str(player_position) +str("_")+ str(destination)
		var decide_distance_second_time : String = str(destination) +str("_")+ str(player_position)
		if distances.has(decide_distance):
			fuel_cost = distances[decide_distance]
			if fuel_cost > player_fuel:
				print("not_enough_fuel")
			else :
				player_fuel = player_fuel - fuel_cost
				change_state(destination,connections)
				print(player_fuel)
		elif distances.has(decide_distance_second_time):
			fuel_cost = distances[decide_distance_second_time]
			if fuel_cost > player_fuel:
				print("not_enough_fuel")
			else :
				player_fuel = player_fuel - fuel_cost
				change_state(destination,connections)
				print(player_fuel)
		
		
	else:
		Events.interested_spot = []
		print("destination_unavailable")







func change_state(destination,connections):
	player_position = destination
	player_possibility = connections
	$background.modulate = colors_showcase[destination]
