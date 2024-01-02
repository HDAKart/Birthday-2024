extends TextureButton

#Add the target scene that you want
@export var Target_scene = ""

#When the Button is pressed it will go to the scene you selected
func _on_pressed():
	LoadingScreen.change_scene_to_file(Target_scene)
