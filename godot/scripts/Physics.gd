extends Node


class_name Physics

static func calculate_force(position : Vector3, target : Vector3, yards_per_second = 20.0):
	var dir = target - position
	var flight_time = dir.length() / yards_per_second
	var gravity = Vector3(0.0, 9.8 * flight_time * flight_time / 2.0, 0.0)
	var force = (dir + gravity) / flight_time
	return force

static func calculate_intercept(position: Vector3, target: Vector3, v_target: Vector3):
	return target + v_target
	# var speed = v_target.length()
	# var time = (target - position) / speed
	# var vel = (target - position) / time + v_target
	# var dest = position + vel * time
	# return dest
