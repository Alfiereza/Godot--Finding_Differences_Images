extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(512,-200)
	$Tween.interpolate_property(self, "position", position, Vector2(512,220),3, Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	$Tween.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
