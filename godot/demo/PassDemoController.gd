extends Node


onready var player = get_node("../Player")
onready var defender = get_node("../Defender")
onready var football = get_node("../Football")
onready var targetbody = $Target

func _ready():
	player.target = targetbody.global_transform.origin
	defender.isOffense = false
	defender.playerToTackle = player
	GlobalCameraServer.follow(football)


func _on_Timer_timeout():
	football.throw_at(targetbody.global_transform.origin)
