extends CharacterBody2D

var horizontal_speed = 70
var vertical_speed   = 60

func _physics_process(delta: float) -> void:
	var input_vec = Vector2.ZERO
	
	if Input.is_action_pressed("Up"):
		input_vec.y -= 1
	if Input.is_action_pressed("Left"):
		input_vec.x -= 1
	if Input.is_action_pressed("Down"):
		input_vec.y += 1
	if Input.is_action_pressed("Right"):
		input_vec.x += 1
	
	if input_vec.length() > 0:
		velocity.y = input_vec.y * vertical_speed
		velocity.x = input_vec.x * horizontal_speed
		move_and_slide();
