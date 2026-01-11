extends CharacterBody2D
class_name Jugador

@export var speed = 100
@onready var anims = $AnimatedSprite2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Izquierda", "Derecha", "Arriba", "Abajo")

	if direction != Vector2.ZERO :
		velocity = direction * speed
	else :
		velocity = direction * 0

		if is_zero_approx(direction.x) :
			anims.play("ilde_down")
			if direction.x == 1 :
				anims.play("walk_left")
				



	move_and_slide()
