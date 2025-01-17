extends Control

@export var columns	: int
@export var lines	: int

func	_ready():
	$item_queue.columns = columns
	for slot in columns * lines:
		var new_slot = Button.new()
		$item_queue.add_child(new_slot)
