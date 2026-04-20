/obj/item/device/security_recolor
	name = "security conversion remote"
	desc = "A strange remote that remodels security to the classic red color, or at least will try to."
	icon = 'icons/obj/antags/syndicate_tools.dmi'
	icon_state = "weakpoint_locator"

	var/activated = FALSE

/obj/item/device/security_recolor/attack_self(mob/user)
	if(activated)
		to_chat(user, "It's already been used.")
		return

	activated = TRUE
	to_chat(user, "You press the remote. Security's colors quickly begin to shift.")

	transform_station()

/obj/item/device/security_recolor/proc/transform_station()
	// Trimlines recolor
	for(var/obj/effect/turf_decal/trimline/red/T in world)
		T.color = "#DE3A3A"

	// Red tiles recolor
	for(var/obj/machinery/rnd/production/techfab/department/security/T in world)
		T.stripe_color = "#DE3A3A"

	// Techfab recolor
	for(var/obj/effect/turf_decal/tile/red/T in world)
		T.color = "#DE3A3A"

	// Wardrobe
	for(var/obj/machinery/vending/wardrobe/sec_wardrobe/W in world)
		replace_wardrobe(W, /obj/machinery/vending/wardrobe/sec_wardrobe/red)

	// Glass Airlocks FIRST
	for(var/obj/machinery/door/airlock/security/glass/G in world)
		replace_airlock(G, /obj/machinery/door/airlock/security/old/glass)

	// Solid Airlocks
	for(var/obj/machinery/door/airlock/security/A in world)
		if(A.type == /obj/machinery/door/airlock/security)
			replace_airlock(A, /obj/machinery/door/airlock/security/old)

	// Airlock Assembly
	for(var/obj/structure/door_assembly/door_assembly_sec/A in world)
		if(A.type == /obj/structure/door_assembly/door_assembly_sec)
			replace_airlock(A, /obj/structure/door_assembly/door_assembly_sec/old)

	// Closets
	for(var/obj/structure/closet/secure_closet/security/C in world)
		C.icon = 'icons/obj/storage/closet.dmi'
		C.update_icon()

	for(var/obj/structure/closet/secure_closet/warden/C in world)
		C.icon = 'icons/obj/storage/closet.dmi'
		C.update_icon()

	for(var/obj/structure/closet/secure_closet/hos/C in world)
		C.icon = 'icons/obj/storage/closet.dmi'
		C.update_icon()

/obj/item/device/security_recolor/proc/replace_airlock(var/obj/machinery/door/airlock/old, var/new_type)
    if(!old || !new_type)
        return

    var/turf/T = get_turf(old)
    if(!T)
        return

    var/old_name = old.name

    var/obj/machinery/door/airlock/replacement = new new_type(T)

    replacement.name = old_name

    if("req_access" in old.vars)
        replacement.vars["req_access"] = old.vars["req_access"]

    qdel(old)
