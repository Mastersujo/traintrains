extends Control


func _on_inventory_button_pressed() -> void:
	if $inventory.visible == true:
		$inventory.visible = false
	else :
		$inventory.visible = true
		$map.visible = false
		$event.visible = false

func _on_map_button_pressed() -> void:
	if $map.visible == true:
		$map.visible = false
	else :
		$map.visible = true
		$event.visible = false
		$inventory.visible = false

func _on_event_button_pressed() -> void:
	if $event.visible == true:
		$event.visible = false
	else :
		$event.visible = true
		$inventory.visible = false
		$map.visible = false
