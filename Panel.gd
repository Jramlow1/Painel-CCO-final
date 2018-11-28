extends Panel

onready var Serial = preload("res://addons/serial/libserial.gdns").new()
export(String) var portname = "com4"

func _ready():
	Serial.open(portname,9600)


func _on_Timer_timeout():
	var SB1 = Serial.read_string()
	print(SB1)
	
	
	if SB1:
		if SB1.begins_with("livre"):
			get_node("SB1").frame=1
			get_node("SB1").atualiza_cor_sb()
			get_node("SB1").atualiza_texto_botao()
		else:
			get_node("SB1").frame=0
			get_node("SB1").atualiza_cor_sb()
			get_node("SB1").atualiza_texto_botao()
			
	