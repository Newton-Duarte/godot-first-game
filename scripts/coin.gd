extends Area2D

@onready var game_manager = %GameManager
@onready var sfx = $SFX
@onready var timer = $Timer
@onready var animated_sprite = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D

func _on_body_entered(body):
	collision_shape.disabled = true
	animated_sprite.visible = false
	timer.start()
	sfx.play()
	game_manager.add_point()
	


func _on_timer_timeout():
	queue_free()
