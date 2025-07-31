GLOBAL_LIST_EMPTY(abscond_markers)

///Send a pod full of helpful items to the station's bridge
/proc/send_station_support_package(list/additional_items, sent_message = "We are sending a support package to the bridge to help deal with the threats to the station.")
	var/turf/bridge_turf = pick(GLOB.areas_by_type[/area/station/command/bridge].get_turfs_from_all_zlevels())
	if(!bridge_turf)
		return

	var/list/spawned_list = list(
		/obj/item/storage/medkit/advanced,
		/obj/item/storage/medkit/brute,
		/obj/item/storage/medkit/fire,
		/obj/item/storage/medkit/regular,
		/obj/item/gun/medbeam,
		/obj/item/storage/part_replacer/cargo,
		/obj/item/storage/box/recharger_parts,
	)

	if(additional_items)
		spawned_list += additional_items

	priority_announce(sent_message, has_important_message = TRUE)
	podspawn(list("target" = bridge_turf, "spawn" = spawned_list))

/obj/item/storage/box/recharger_parts
	name = "Recharger Parts"

/obj/item/storage/box/recharger_parts/PopulateContents()
	. = ..() //there is actually a helper for this but I cant remember the name
	var/list/spawned_list = list(/obj/item/circuitboard/machine/recharger = 5, /obj/item/stack/cable_coil = 1, /obj/item/stack/sheet/iron/fifty = 1)
	for(var/type in spawned_list)
		for(var/i in 1 to spawned_list[type])
			new type(src)

/obj/effect/mob_spawn/corpse/human/blood_cultist
	name = "Blood Cultist"
	outfit = /datum/outfit/blood_cultist

/datum/outfit/blood_cultist
	name = "Blood Cultist"

	uniform = /obj/item/clothing/under/color/black
	suit = /obj/item/clothing/suit/hooded/cultrobes/alt
	shoes = /obj/item/clothing/shoes/cult/alt

/datum/outfit/blood_cultist/post_equip(mob/living/carbon/human/equipped, visualsOnly)
	equipped.eye_color_left = BLOODCULT_EYE
	equipped.eye_color_right = BLOODCULT_EYE
	equipped.update_body()

/obj/effect/mob_spawn/corpse/human/clock_cultist
	name = "Clock Cultist"
	outfit = /datum/outfit/clock

/obj/effect/landmark/late_cog_portals
	name = "reebe crew portal spawn"

//for the portal from the outpost to reebe
/obj/effect/landmark/abscond_marker
	name = "abscond marker"
	icon = 'modular_zzplurt/icons/effects/landmarks_static.dmi'
	icon_state = "clockwork_orange"

/obj/effect/landmark/abscond_marker/Initialize(mapload)
	. = ..()
	GLOB.abscond_markers += src

/obj/effect/landmark/abscond_marker/Destroy()
	. = ..()
	GLOB.abscond_markers -= src

/obj/effect/servant_blocker
	name = "servant Blocker"
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_effects.dmi'
	icon_state = "servant_blocker"
	anchored = TRUE

/obj/effect/servant_blocker/CanPass(atom/movable/mover, border_dir)
	for(var/mob/held_mob in mover.get_all_contents())
		if(IS_CLOCK(held_mob))
			return FALSE
	return ..()

/obj/effect/spawner/structure/window/clockwork
	name = "brass window spawner"
	icon_state = "bronzewindow_spawner"
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/clockwork/fulltile)
