extends Node3D

@export var item:Item

func _on_area_3d_body_entered(body):
	#print("aaah")
	if body.has_method("on_item_picked_up"):
		body.on_item_picked_up(item)
		queue_free()
