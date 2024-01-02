extends Control

@onready var campaign = $Campaign
@onready var select_level_type = $Select_level_type
@onready var rich_text_label = $RichTextLabel
@onready var back_button = $BackButton
@onready var commuinty = $Commuinty
@onready var level_selection_animation = $Level_selection_animation

func _ready():
	_on_back_button_pressed()

func _on_campaign_button_pressed():
	select_level_type.hide()
	back_button.hide()
	#rich_text_label.hide()
	campaign.show()

func _on_back_button_pressed():
	select_level_type.show()
	back_button.show()
	campaign.hide()
	commuinty.hide()
	#rich_text_label.show()

func _on_community_levels_button_pressed():
	select_level_type.hide()
	back_button.hide()
	#rich_text_label.hide()
	commuinty.show()
