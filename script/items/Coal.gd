extends Item

class_name Coal

func	_ready():
	item_name = "Coal"
	description = "Basic and reliable fuel for the train"
	shape = 1
	size = Vector2(1, 1)
	icon = load("res://assets/item_icons.png")
	
