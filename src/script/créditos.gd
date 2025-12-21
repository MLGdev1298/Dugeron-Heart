extends Control


func _on_atras_pressed() -> void:
	get_tree().change_scene_to_file("res://src/esenas/UI/menú_principal.tscn")
