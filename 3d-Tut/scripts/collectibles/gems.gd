extends Node3D

func _on_hitbox_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		data.gem += 1
		$hitbox/CollisionShape3D.disabled = true
		$anim.play("Collected")
		await $anim.animation_finished
		queue_free()
