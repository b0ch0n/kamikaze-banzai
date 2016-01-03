
extends PathFollow2D

# member variables here
var count_offset = 0.0

# El siguiente valor en Intel(0.25) produce el movimiento rapido
# mientras que en AMD tengo que aumentar 20 veces su valor
# para que empiece a moverse similar al movimiento en Intel
var delta_offset = 5 #0.25 # para Intel
#var delta_offset = 0.25*20 # para AMD


func _ready():
	# Initialization here
	#set_process(true)
	set_fixed_process(true)


#func _process(delta):
func _fixed_process(delta):
	count_offset+=delta_offset
	
	set_offset(count_offset)