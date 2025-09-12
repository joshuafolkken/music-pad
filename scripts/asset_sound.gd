class_name AssetSound

enum Type {
	KICK,
	SNARE,
	HIHAT,
	CRASH,
}

const UID_MAPPING: Dictionary[Type, String] = {
	Type.KICK: "uid://b1qbwms5q3oge",
	Type.SNARE: "uid://ei2wydrmqv5r",
	Type.HIHAT: "uid://bx3fbtxir2fgv",
	Type.CRASH: "uid://ciyin0l8cfh55",
}

var _uid: String


func _init(type: Type) -> void:
	assert(type in UID_MAPPING, "Invalid sound type: " + str(type))
	_uid = UID_MAPPING[type]


func get_stream() -> AudioStream:
	return load(_uid)
