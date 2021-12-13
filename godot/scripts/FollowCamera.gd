extends Camera


onready var offset = global_transform.origin

var target

func _ready():
	GlobalCameraServer.follow_camera = self

func _process(delta):
	if target:
		global_transform.origin.x = target.global_transform.origin.x + offset.x
		global_transform.origin.z = target.global_transform.origin.z + offset.z
