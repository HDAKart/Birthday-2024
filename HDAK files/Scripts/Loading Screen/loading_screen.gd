extends CanvasLayer

@onready var texture_rect = $TextureRect
@onready var animation_player = $AnimationPlayer
@onready var texture_rect_2 = $TextureRect2

func change_scene_to_file(target: String) -> void:
	texture_rect.show()
	texture_rect_2.show()
	texture_rect_2.size.x = 1920.0
	texture_rect_2.size.y = 1080.0
	var img = get_viewport().get_texture().get_image()
	texture_rect.texture = ImageTexture.create_from_image(img)
	animation_player.play("Page_flip")
	await animation_player.animation_finished
	get_tree().change_scene_to_file(target)
	animation_player.play_backwards("Page_flip")
	texture_rect.hide()
	texture_rect_2.hide()
	
