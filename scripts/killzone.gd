extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body.name == "Player":  # Verifica si el nodo que entra es el jugador
		print("Has muerto")
		Engine.time_scale = 0.5  # Ralentiza el juego
		body.get_node("CollisionShape2D").queue_free()  # Deshabilita la colisión del jugador
		timer.start()  # Inicia el temporizador
	
	
	
	
	 # Replace with function body.
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene() # Replace with function body.
