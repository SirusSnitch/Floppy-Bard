extends Control

@onready var StartButton = $MarginContainer/HBoxContainer/VBoxContainer/StartButton as Button
@onready var QuitButton = $MarginContainer/HBoxContainer/VBoxContainer/QuitButton as Button
@onready var Start = preload("res://Scenes/main.tscn") as PackedScene

func _ready():
	StartButton.button_down.connect(on_start_pressed)
	QuitButton.button_down.connect(on_quit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(Start)
	

func on_quit_pressed() -> void:
	get_tree().quit()
