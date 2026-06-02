extends MeshInstance3D

@export var upper_arm_speed : float = 180 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed ("ui_up"):
		print("hoch")
		$upper_arm.rotate_z(deg_to_rad(upper_arm_speed * delta ))
	if Input.is_action_pressed("ui_down"):
		print("Runter")
		$upper_arm.rotate_z(deg_to_rad(-upper_arm_speed * delta ))
		
