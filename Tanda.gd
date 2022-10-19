extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var salah = false
export var id = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$Lingkaran.hide()
	
func _process(delta):
	if $"/root/Global".id == id :
		$Lingkaran.show()
		salah = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tanda_input_event(viewport, event, shape_idx):
	if salah == false && $"/root/Global".main == true :
		if event is InputEventMouseButton && event.button_index == BUTTON_LEFT && event.pressed :
			$Lingkaran.show()
			$Efek.play()
			salah = true
			$"/root/Global".id = id
			$"/root/Global".temuan += 1
			
		
	
