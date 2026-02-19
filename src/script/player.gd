extends CharacterBody2D
class_name Player

@onready var anims = $AnimatedSprite2D
var speed = 100
var current_dir = "none"

func _ready() -> void:
	anims.play("ilde_down")


func _physics_process(delta: float) -> void:
	player_moves(delta)

func player_moves(delta):
	
	if Input.is_action_pressed("Derecha"):
		current_dir = "rigth"
		play_anims(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("Izquierda"):
		current_dir = "left"
		play_anims(1)
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("Abajo"):
		current_dir = "down"
		play_anims(1)
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("Arriba"):
		current_dir = "up"
		play_anims(1)
		velocity.x = 0
		velocity.y = -speed
	else :
		play_anims(0)
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()

func play_anims(movement):
	var dir = current_dir
	
	if dir == "rigth":
		anims.flip_h = true
		if movement == 1:
			anims.play("walk_left")
		elif movement == 0:
			anims.play("ilde_left")

	if dir == "left":
		anims.flip_h = false
		if movement == 1:
			anims.play("walk_left")
		elif movement == 0:
			anims.play("ilde_left")

	if dir == "down":
		anims.flip_h = true
		if movement == 1:
			anims.play("walk_down")
		elif movement == 0:
			anims.play("ilde_down")

	if dir == "up":
		anims.flip_h = true
		if movement == 1:
			anims.play("walk_up")
		elif movement == 0:
			anims.play("ilde_up")
