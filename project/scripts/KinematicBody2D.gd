extends KinematicBody2D

var speed = 2
var velocity: Vector2 = Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_A) and velocity[0] == 0:
		velocity = Vector2.LEFT
		self.rotation_degrees = -90
		if !$Player.is_playing():
			print("yummy")
			$Player.play("Walk")
	elif Input.is_key_pressed(KEY_D) and velocity[0] == 0:
		velocity = Vector2.RIGHT
		self.rotation_degrees = 90
		if !$Player.is_playing():
			print("yummy")
			$Player.play("Walk")
	elif Input.is_key_pressed(KEY_W) and velocity[1] == 0:
		velocity = Vector2.UP
		self.rotation_degrees = 0
		if !$Player.is_playing():
			print("yummy")
			$Player.play("Walk")
	elif Input.is_key_pressed(KEY_S) and velocity[1] == 0:
		velocity = Vector2.DOWN
		self.rotation_degrees = 180
		if !$Player.is_playing():
			print("yummy")
			$Player.play("Walk")
	
	if !self.test_move(transform, velocity):
	#if self.position.x + velocity[0] > 0 and self.position.x + velocity[0] < get_viewport_rect().size.x:
		self.position.x += velocity.x
	#if self.position.y + velocity[1] > 0 and self.position.y + velocity[1] < get_viewport_rect().size.y:
		self.position.y += velocity.y
