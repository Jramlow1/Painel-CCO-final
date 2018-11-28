extends Node

onready var Serial = preload("res://addons/serial/libserial.gdns").new()

var frame

func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	frame = get_node("Sprite").get_frame()
	atualiza_texto_botao()
	

func _on_Button_pressed():
	if frame==0:
		frame=1
	else:
		frame=0
	atualiza_cor_sb()
	atualiza_texto_botao()
	

func atualiza_texto_botao():
	if frame==1:
		get_node("Button").set_text("Livre")
	else:
		get_node("Button").set_text("Ocupado")
		
		
func atualiza_cor_sb():
	get_node("Sprite").set_frame(frame)