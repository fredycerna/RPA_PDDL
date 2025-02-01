(define (problem roverprob1234) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 - Rover ; se agrega el rover1
	rover0store rover1store - Store ; se agrega el rover1store
	waypoint0 waypoint1 waypoint2 waypoint3 - Waypoint
	camera0 camera1 - Camera ; se agrega la camera1
	objective0 objective1 objective2 - Objective
	)
(:init
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint2 waypoint0)
	(visible waypoint0 waypoint2)
	(visible waypoint2 waypoint1)
	(visible waypoint1 waypoint2)
	(visible waypoint3 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(at_soil_sample waypoint0)
	(at_rock_sample waypoint1)
	(at_soil_sample waypoint2)
	(at_rock_sample waypoint2)
	(at_soil_sample waypoint3)
	(at_rock_sample waypoint3)
	(at_lander general waypoint0)
	(channel_free general)
	; configuracion rover0
	(at rover0 waypoint3)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_soil_analysis rover0)
	(equipped_for_rock_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint3 waypoint0)
	(can_traverse rover0 waypoint0 waypoint3)
	(can_traverse rover0 waypoint3 waypoint1)
	(can_traverse rover0 waypoint1 waypoint3)
	(can_traverse rover0 waypoint1 waypoint2)
	(can_traverse rover0 waypoint2 waypoint1)
	(on_board camera0 rover0)
	(calibration_target camera0 objective1)
	(supports camera0 colour)
	(supports camera0 high_res)

	; configuracion rover1 
	(at rover1 waypoint2) ; se agrega la posicion del rover1
	(available rover1) ; se agrega la disponibilidad del rover1
	(store_of rover1store rover1) ; se agrega el almacen del rover1
	(empty rover1store) ; se agrega el almacen vacio del rover1
    (not (equipped_for_soil_analysis rover1)) ; se agrega que el rover1 no esta equipado para analisis de suelo
    (not (equipped_for_rock_analysis rover1)) ; se agrega que el rover1 no esta equipado para analisis de roca
    (equipped_for_imaging rover1) ; se agrega que el rover1 esta equipado para imagenes
    (on_board camera1 rover1) ; se agrega que la camara1 esta a bordo del rover1
    (supports camera1 colour) ; se agrega que la camara1 soporta color
    (supports camera1 high_res) ; se agrega que la camara1 soporta alta resolucion    
    (can_traverse rover1 waypoint3 waypoint0) ; se agrega que el rover1 puede ir del waypoint3 al waypoint0
	(can_traverse rover1 waypoint0 waypoint3) ; se agrega que el rover1 puede ir del waypoint0 al waypoint3
	(can_traverse rover1 waypoint3 waypoint1) ; se agrega que el rover1 puede ir del waypoint3 al waypoint1
	(can_traverse rover1 waypoint1 waypoint3) ; se agrega que el rover1 puede ir del waypoint1 al waypoint3
	(can_traverse rover1 waypoint1 waypoint2) ; se agrega que el rover1 puede ir del waypoint1 al waypoint2
	(can_traverse rover1 waypoint2 waypoint1) ; se agrega que el rover1 puede ir del waypoint2 al waypoint1
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint3)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective1 waypoint2)	
)

(:goal (and
(communicated_soil_data waypoint2)
(communicated_rock_data waypoint3)
(communicated_image_data objective1 high_res)
	)
)
)
