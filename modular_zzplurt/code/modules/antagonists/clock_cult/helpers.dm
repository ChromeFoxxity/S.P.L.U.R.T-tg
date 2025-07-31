/proc/try_servant_warp(mob/living/servant, turf/target_turf)
	var/mob/living/pulled = servant.pulling
	playsound(servant, 'sound/effects/magic/magic_missile.ogg', 50, TRUE) //doing this manually for sound volume reasons
	playsound(target_turf, 'sound/effects/magic/magic_missile.ogg', 50, TRUE)
	do_sparks(3, TRUE, servant)
	do_sparks(3, TRUE, target_turf)
	do_teleport(servant, target_turf, 0, no_effects = TRUE, channel = TELEPORT_CHANNEL_CULT, forced = TRUE)
	if(ishuman(servant)) //looks weird on non-humanoids
		new /obj/effect/temp_visual/ratvar/warp(target_turf)
	to_chat(servant, "You warp to [get_area(target_turf)].")
	if(istype(pulled))
		do_teleport(pulled, target_turf, 0, no_effects = TRUE, channel = TELEPORT_CHANNEL_CULT, forced = TRUE)
		if(!IS_CLOCK(pulled))
			pulled.Paralyze(3 SECONDS)
			to_chat(pulled, span_warning("You feel sick and confused."))
