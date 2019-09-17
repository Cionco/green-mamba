extends Sprite

var speed = 5
var velocity = [0, 0]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT) and velocity[0] == 0:
		velocity = [-speed, 0]
		self.rotation_degrees = -90
	elif Input.is_key_pressed(KEY_RIGHT) and velocity[0] == 0:
		velocity = [speed, 0]
		self.rotation_degrees = 90
	elif Input.is_key_pressed(KEY_UP) and velocity[1] == 0:
		velocity = [0, -speed]
		self.rotation_degrees = 0
	elif Input.is_key_pressed(KEY_DOWN) and velocity[1] == 0:
		velocity = [0, speed]
		self.rotation_degrees = 180
	
	if self.position.x + velocity[0] > 0 and self.position.x + velocity[0] < get_viewport_rect().size.x:
		self.position.x += velocity[0]
	if self.position.y + velocity[1] > 0 and self.position.y + velocity[1] < get_viewport_rect().size.y:
		self.position.y += velocity[1]