extends Spatial

onready var offensive_line = $"../OffensiveLine"

func _ready():
	var play = Play.new()
	play.positions = {"C": Vector3(0.0, 0.0, 0.0),
	"QB": Vector3(0.0, 0.0, 1.0),
	"HB": Vector3(0.0, 0.0, 4.0),
	"TE": Vector3(2.0, 0.0, 0.5),
	"WR": Vector3(-3.0, 0.0, 1.0)}
	offensive_line.play = play
	offensive_line.lineup_players()
