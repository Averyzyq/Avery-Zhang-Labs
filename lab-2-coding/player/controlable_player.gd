extends Sprite2D
@export var speed = 3
@export var health = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
		
	if Input.is_action_pressed("ui_right"):
		position.x += speed
		
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
		
	if Input.is_action_pressed("ui_down"):
		position.y += speed
		
	#if health <= 0:
		#print("You're Dead")
		#hide()
	#elif health < 3:
		#print("You're almost dead")
		#modulate= Color.RED
	#else:
		#print("still alive")
		#show()
		#modulate= Color.WHITE
	if Input.is_action_just_pressed("ui_accept"):
		position.x += 10
		
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		health -= 1
	
