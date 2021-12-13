extends RigidBody

# Called when the node enters the scene tree for the first time.
func _ready():
	mode = MODE_STATIC
	
func throw_at(tgt : Vector3):
	mode = MODE_RIGID
	var force = Physics.calculate_force(global_transform.origin, tgt + Vector3(0.0, 1.0, 0.0))
	apply_central_impulse(force)
