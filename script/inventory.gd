extends Control

class_name Inventory

@export var columns	: int
@export var lines	: int
var	slots	: Array[Slot]

func	_ready():
	$item_queue.columns = columns
	for slot in columns * lines:
		var new_slot = Slot.new()
		new_slot.text = " "
		$item_queue.add_child(new_slot)
		slots.append(new_slot)

func	add_item(_item : Item, position : Vector2):
	var	slot_to_add = slots[4]
	slot_to_add.content = _item
	slot_to_add.text = "C"
