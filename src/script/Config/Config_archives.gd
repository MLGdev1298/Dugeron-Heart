extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	OS.request_permission("permissions/access_media_location")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
