extends VBoxContainer

@onready var lblBonus = $Label2

func _ready() -> void:
	MPF.server.add_event_handler("bonus_light_show", self._on_event)

func _on_event(payload: Dictionary) -> void:
	lblBonus.text = 50000
