extends Node3D
@export var upper_arm_speed : float = 180 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed ("ui_up"):
		print("hoch Links")
		$"Körper_002/Oberarm_R004".rotate_z(deg_to_rad(upper_arm_speed * delta ))
	if Input.is_action_pressed("ui_down"):
		print("Runter Links")
		$"Körper_002/Oberarm_R004".rotate_z(deg_to_rad(-upper_arm_speed * delta ))
	if Input.is_action_pressed ("ui_left"):
		print("hoch Rechts")
		$"Körper_002/Oberarm_L_005".rotate_z(deg_to_rad(upper_arm_speed * delta ))
	if Input.is_action_pressed("ui_right"):
		print("Runter Rechts ")
		$"Körper_002/Oberarm_L_005".rotate_z(deg_to_rad(-upper_arm_speed * delta ))
		
