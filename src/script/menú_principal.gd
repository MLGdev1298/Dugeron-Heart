extends Control



func _ready() -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://src/esenas/mundo.tscn")


func _on_start_2_pressed() -> void:
	OS.alert("Varios ajustes para la versión 0.0.2.alfa disponible espere una actualización", "Mensaje de Alerta")


func _on_start_3_pressed() -> void:
	get_tree().quit()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://src/esenas/UI/créditos.tscn")
