extends CSGBox3D


func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("Sword"):
		queue_free()

func _on_hitbox_area_entered(area: Area3D) -> void:
	if area.is_in_group("player_hitbox"):
		health_manager.life -= 1
		print(health_manager.life)
