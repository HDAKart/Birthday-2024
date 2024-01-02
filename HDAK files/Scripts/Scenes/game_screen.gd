extends Control

func restart_button():
	get_tree().reload_current_scene()

func Level_select_button():
	LoadingScreen.change_scene_to_file("res://Scenes/level_selection_screen.tscn")

func Main_menu_button():
	LoadingScreen.change_scene_to_file("res://Scenes/main_menu.tscn")
