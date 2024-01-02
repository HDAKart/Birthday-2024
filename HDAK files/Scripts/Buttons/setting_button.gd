extends TextureButton

@onready var Setting_entrance = $Settings_button_animation
#Settings Panel Remeber to connect for each scene
@export var settings : Control
@export var settings_exit_button : TextureButton
var Settings_screen = false
@export var Settings_background : ColorRect
@export var settings_animation : AnimationPlayer

func _ready():
	Setting_entrance.play("Settings_enter")

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel") and Settings_screen == false:
		_on_setting_button_pressed()
	elif Input.is_action_just_pressed("ui_cancel") and Settings_screen == true:
		_on_exit_button_2_pressed()

func _on_setting_button_pressed():
	if Settings_screen == false:
		settings.show()
		settings_animation.play("Open_settings")
		Settings_screen = true

# This is used to close the settings panel, connect it for every scene
func _on_exit_button_2_pressed():
	settings.hide()
	Settings_screen = false
