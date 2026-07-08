//SYNDIE AIRLOCKS
/obj/machinery/door/airlock/syndicate
	name = "syndicate airlock"
	icon = 'modular_skyrat/modules/aesthetics/airlock/icons/airlocks/syndicate/syndicate.dmi'
	overlays_file = 'modular_skyrat/modules/aesthetics/airlock/icons/airlocks/syndicate/overlays.dmi'
	assemblytype = /obj/structure/door_assembly/door_assembly_syndie
	normal_integrity = 450

/obj/machinery/door/airlock/syndicate/glass
	opacity = FALSE
	glass = TRUE
	normal_integrity = 400

/obj/structure/door_assembly/door_assembly_syndie
	name = "syndicate airlock assembly"
	icon = 'modular_skyrat/modules/aesthetics/airlock/icons/airlocks/syndicate/syndicate.dmi'
	glass_type = /obj/machinery/door/airlock/syndicate/glass
	airlock_type = /obj/machinery/door/airlock/syndicate
