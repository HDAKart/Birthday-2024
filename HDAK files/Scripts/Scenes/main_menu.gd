extends Control

@onready var buttons_animation = $MainMenuButtons/ButtonsAnimation

#Exit confirmation panel
@onready var Exit_panel = $Exit_conformation
var exit_screen = false
@onready var exit_prompt_animation = $Exit_conformation/Exit_prompt_animation

func _ready():
	buttons_animation.play("Entrance_animation")
	
#to exit the game
func _on_exit_button_pressed():
	if exit_screen == false:
		exit_prompt_animation.play("Exit_prompt")
		Exit_panel.show()
		exit_screen = true

func _on_exit_confirmed_pressed():
	get_tree().quit()

func _on_exit_canceled_pressed():
	exit_screen = false
	Exit_panel.hide()

func _on_gallery_button_pressed():
	LoadingScreen.change_scene_to_file("res://Scenes/gallery_screen.tscn")

func _on_credits_button_pressed():
	LoadingScreen.change_scene_to_file("res://Scenes/credit_screen.tscn")
	
func _on_play_button_pressed():
	LoadingScreen.change_scene_to_file("res://Scenes/level_selection_screen.tscn")
