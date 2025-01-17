extends Control

@onready var	wagon_inventory	: Inventory = $Train/wagons/wagon/inventory

func	_ready():
	wagon_inventory.add_item(Coal.new(), Vector2(2, 2))
