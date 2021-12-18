extends Node2D

onready var screen_size = get_viewport().size

func _ready():
	$Apple.position = Vector2(screen_size.x -55,screen_size.y -60)
	$ScoreText.rect_position = Vector2(screen_size.x -30,screen_size.y -70)

func update_score(snake_length):
	$ScoreText.text = str(snake_length - 2)


func _draw():
	var score_width = $Apple.get_rect().size.x + $ScoreText.get_rect().size.x -16
	var bg_rect = Rect2($Apple.position.x -20,$Apple.position.y -20,score_width,40)
	draw_rect(bg_rect,Color8(118,123,128))
	draw_rect(bg_rect,Color8(225,225,255),false)
