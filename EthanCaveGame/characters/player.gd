extends CharacterBody2D

#The higher the number the LESS friction
var friction = 5
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
#DEALING WITH MOVEMENT
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = -600
	if Input.is_action_pressed("right"):
		velocity.x = 50
	if Input.is_action_pressed("left"):
		velocity.x = -50
	if Input.is_action_pressed("down"):
		pass
	if Input.is_action_pressed("up"):
		pass
	if is_on_floor():
		if Input.is_anything_pressed() == false:
			if velocity.x < 0:
				velocity.x += int(0 - velocity.x/friction)
			if velocity.x > 0:
				velocity.x -= int(0 + velocity.x/friction)
#DEALING WITH INTERACTIONS!!
	if Input.is_action_just_pressed("interact"):
		pass
	
	move_and_slide()
	


