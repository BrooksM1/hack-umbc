extends Sprite2D
var is_dragging = false
var mouse_offset
var delay = 5

func off_screen():
	pass

func _physics_process(delta: float) -> void:
	if is_dragging == true:
		var tween = get_tree().create_tween()
		tween.tween_property(self,"position", get_global_mouse_position()-mouse_offset, delay * delta)
	pass
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			if get_rect().has_point(to_local(event.position)):
				print("clicked on sprite UwU")
				is_dragging = true
				mouse_offset = get_global_mouse_position()-global_position
			else:
				print("clicked off T-T")
			print("down")
		else:
			print("up")
			is_dragging = false
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
