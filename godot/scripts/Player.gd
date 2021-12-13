extends KinematicBody

export(float) var run_speed = 10.0

var isPlayer : bool = false
var isOffense : bool = true
var playerToTackle : Spatial
var target : Vector3
var velocity = Vector3.ZERO
var position = "none"

func _process(delta):
	if isOffense:
		pass
	else:
		if playerToTackle:
			## Tackle my charge
			target = Physics.calculate_intercept(global_transform.origin, \
			 playerToTackle.global_transform.origin, \
			playerToTackle.velocity)

func _physics_process(delta):
	if isPlayer:
		pass
	else:
		if not target:
			return
		var movement = target - global_transform.origin
		var dist = min(movement.length(), run_speed * delta)
		velocity = move_and_slide(movement.normalized() * dist / delta)

func set_position(_position : String):
	position = _position
