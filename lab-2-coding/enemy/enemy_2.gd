extends Sprite2D

@export var speed = 0.1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= speed
	position.y -= speed
	#scale.x -= speed
	#scale.y -= speed
	#rotation_degrees += 0.01
