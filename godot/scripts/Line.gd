extends Spatial

var player_prefab = preload("res://prefabs/Player.tscn")

var play

func lineup_players():
	for position in play.positions:
		var player = player_prefab.instance()
		add_child(player)
		player.transform.origin = play.positions[position]
		player.set_position(position)
