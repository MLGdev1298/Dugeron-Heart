extends Node
class_name Paused

signal _on_paused_presed

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("salir"):
		get_tree().paused = true
		_on_paused_presed.emit()
