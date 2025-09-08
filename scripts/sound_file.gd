class_name SoundFile

enum Type {
	KICK,
	SNARE,
	HIHAT,
	CRASH,
}

const AUDIO_PATH := "res://assets/audio/"

var _path: String


func _init(type: Type) -> void:
	_path = AUDIO_PATH + _get_file_name(type)


func _get_file_name(type: Type) -> String:
	match type:
		Type.KICK:
			return "909CX 33 BD3  1.wav"
		Type.SNARE:
			return "909CX 31 SN3  8.wav"
		Type.HIHAT:
			return "909CX 42 CHH 2.wav"
		Type.CRASH:
			return "909CX 49 CS1 8.wav"
		_:
			push_error("Invalid sound file type: %s" % type)
			return ""


func get_path() -> String:
	return _path
