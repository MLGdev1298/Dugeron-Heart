extends CanvasLayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pause_pressed() -> void:
	get_tree().paused = true
	$"menu paused".visible = true
	
	


func _on_continue_pressed() -> void:
	get_tree().paused = false
	$"menu paused".visible = false


func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/esenas/UI/menú_principal.tscn")
