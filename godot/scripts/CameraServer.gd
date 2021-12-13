extends Node

var follow_camera

func follow(tgt: Spatial):
	if follow_camera:
		follow_camera.target = tgt
