extends Control

@onready var progress: Array #almacena el progreso de carga
@onready var scene_load_status: int 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ResourceLoader.load_threaded_request(Global.change_scene)
	# metodo que se usa para cargar la esena de un hilo separado


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scene_load_status = ResourceLoader.load_threaded_get_status(Global.change_scene, progress)
	# devuelve el estado de carga de un recurso precargado
	
	if scene_load_status == ResourceLoader.THREAD_LOAD_LOADED:
		get_tree().call_deferred("change_scene_to_packed", ResourceLoader.load_threaded_get(Global.change_scene))
	
	$loading/AnimationPlayer.play("loading")
	%ProgressBar.value = progress[0] * 100
	
