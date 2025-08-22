extends VBoxContainer

@onready var lblBonus = $Label2
@onready var lblHeader = $Label

func _ready() -> void:
	MPF.server.add_event_handler("trigger_bonus_combos", self._on_event_combos)
	MPF.server.add_event_handler("trigger_bonus_nodes", self._on_event_nodes)
	MPF.server.add_event_handler("trigger_bonus_summary", self._on_event_summary)

func _on_event_combos(payload: Dictionary) -> void:
	var combos = MPF.game.player.combos
	lblBonus.text = "Combos" + str(combos) + " x " + "100000"

func _on_event_nodes(payload: Dictionary) -> void:
	var nodes = MPF.game.player.nodes_collected
	lblBonus.text = "Nodes" + str(nodes) + " x " + "50000"

func _on_event_summary(payload: Dictionary) -> void:
	var bonus_total = MPF.game.player.bonus_total
	var bonus_multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "Nodes" + str(nodes) + " x " + "50000"
