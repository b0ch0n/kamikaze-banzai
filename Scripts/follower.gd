
extends PathFollow2D

# member variables here, example:
# var a=2
# var b="textvar"
var count_offset=0.0
func _ready():
	# Initialization here
	set_process(true)


func _process(delta):
#	print(delta)
	count_offset+=0.25
	
	set_offset(count_offset)
	
#	if Input

