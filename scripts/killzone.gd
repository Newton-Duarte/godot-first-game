extends Area2D

@onready var timer = $Timer
@onready var sfx = $SFX

func _on_body_entered(body):
	print("You died")
	sfx.play()
	body.velocity.y = -300
	#Engine.time_scale = 0.5
	body.get_node("AnimatedSprite2D").flip_v = true
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	#Engine.time_scale = 1.0
	get_tree().reload_current_scene()
