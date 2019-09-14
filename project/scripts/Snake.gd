extends Sprite

var speed = 1
var velocity = [0, 0]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		velocity = [-speed, 0]
	elif Input.is_key_pressed(KEY_RIGHT):
		velocity = [speed, 0]
	elif Input.is_key_pressed(KEY_UP):
		velocity = [0, -speed]
	elif Input.is_key_pressed(KEY_DOWN):
		velocity = [0, speed]
	
	self.position.x += velocity[0]
	self.position.y += velocity[1]