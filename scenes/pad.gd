extends Control

@export var sound_type: SoundFile.Type = SoundFile.Type.KICK

var _audio_player: AudioStreamPlayer


func _ready() -> void:
	_audio_player = _get_audio_player()
	add_child(_audio_player)


func _get_audio_player() -> AudioStreamPlayer:
	var audio_player := AudioStreamPlayer.new()
	audio_player.stream = _get_audio_stream()
	return audio_player


func _get_audio_stream() -> AudioStream:
	var sound_file := SoundFile.new(sound_type)
	return AudioStreamWAV.load_from_file(sound_file.get_path())


func _gui_input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		_gui_input_touch(event as InputEventScreenTouch)


func _gui_input_touch(event: InputEventScreenTouch) -> void:
	if event.pressed:
		_audio_player.play()
	else:
		pass
