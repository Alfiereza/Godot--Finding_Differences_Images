extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Tombol.hide()

func _process(delta):
	if $"/root/Global".temuan == 12 :
		$Selamat.play()
		$"/root/Global".temuan = 13
	if $"/root/Global".temuan == 13 :
		$Label.text = "Selamat, Kamu Berhasil Menemukan Semuanya"
	if $"/root/Global".temuan < 12 && $"/root/Global".main == true :
		$Label.text = "Berhasil = " + str($"/root/Global".temuan)

func _on_Timer_timeout():
	$Tombol.show()
	$Klik.play()
	$Timer.stop()


func _on_Tombol_pressed():
	$Tombol.queue_free()
	$Judul.queue_free()
	$Klik.play()
	$"/root/Global".main = true
