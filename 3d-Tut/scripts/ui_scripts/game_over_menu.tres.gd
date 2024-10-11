extends Node2D


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/world_1.tscn")


func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/main_menu.tscn")
