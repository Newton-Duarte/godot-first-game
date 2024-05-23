extends Area2D

@onready var game_manager = %GameManager
@onready var sfx = $SFX
@onready var timer = $Timer
@onready var animated_sprite = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D

var is_collecting := false

func _on_body_entered(body):
	if (is_collecting): 
		return
	
	is_collecting = true
	collision_shape.disabled = true
	animated_sprite.visible = false
	timer.start()
	sfx.play()
	game_manager.add_point()
	


func _on_timer_timeout():
	queue_free()
