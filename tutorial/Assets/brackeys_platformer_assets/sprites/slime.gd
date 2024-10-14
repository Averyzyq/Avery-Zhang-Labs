extends AnimatedSprite2D

const SPEED = 60

var direction = 1

@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
@onready var slime: AnimatedSprite2D = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_castright.is_colliding():
		direction = -1
		slime.flip_h = true
	if ray_castleft.is_colliding():
		direction = 1
		slime.flip_h = false
	position.x += direction * SPEED * delta
