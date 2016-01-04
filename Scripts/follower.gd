
extends PathFollow2D

# member variables here
var count_offset = 0.0
var delta_offset = 5

func _ready():
	# Initialization here
	set_fixed_process(true)
	set_process(true)
	set_process_unhandled_input(true)
	set_process_unhandled_key_input(true)


func _fixed_process(delta):
	count_offset+=delta_offset
	
	set_offset(count_offset)