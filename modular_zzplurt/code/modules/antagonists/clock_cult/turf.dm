/turf/open/indestructible/reebe_void
	name = "void"
	desc = "A white, empty void, quite unlike anything you've seen before."
	icon_state = "reebemap"
	layer = SPACE_LAYER
	baseturfs = /turf/open/indestructible/reebe_void
	planetary_atmos = TRUE
	bullet_bounce_sound = null //forever falling
	tiled_dirt = FALSE


/turf/open/indestructible/reebe_void/Initialize(mapload)
	. = ..()
	icon_state = "reebegame"


/turf/open/indestructible/reebe_void/Enter(atom/movable/movable, atom/old_loc, walkable)
	if(walkable)
		return ..()

	if(!..())
		return FALSE
	else
		if(istype(movable, /obj/structure/window))
			return FALSE
		if(istype(movable, /obj/projectile))
			return TRUE
		return FALSE


/turf/open/indestructible/reebe_void/walkable
	icon_state = "reebespawn"

/turf/open/indestructible/reebe_void/walkable/Enter(atom/movable/movable, atom/old_loc, walkable = TRUE)
	. = ..()

/turf/open/indestructible/reebe_void/spawning
	icon_state = "reebespawn"


/turf/open/indestructible/reebe_void/spawning/Initialize(mapload)
	. = ..()
	if(mapload)
		if(prob(2))
			new /obj/structure/fluff/clockwork/alloy_shards/large(src)

		if(prob(4))
			new /obj/structure/fluff/clockwork/alloy_shards/medium(src)

		if(prob(6))
			new /obj/structure/fluff/clockwork/alloy_shards/small(src)

/turf/open/indestructible/reebe_void/spawning/lattices
	icon_state = "reebelattice"

/turf/open/indestructible/reebe_void/spawning/lattices/Initialize(mapload)
	. = ..()
	if(mapload)
		if(prob(40))
			new /obj/structure/lattice/clockwork(src)

//edge of the reebe map
/turf/open/indestructible/reebe_void/void_edge
	icon_state = "reebespawn"

/turf/open/indestructible/reebe_flooring //used on reebe
	name = "clockwork floor"
	desc = "You feel a faint warmth from below it."
	icon_state = "clockwork_floor"
	planetary_atmos = TRUE
	baseturfs = /turf/open/indestructible/reebe_flooring
	turf_flags = NOJAUNT

/turf/open/indestructible/reebe_flooring/flat
	icon_state = "reebe"

/turf/open/indestructible/reebe_flooring/filled
	icon_state = "clockwork_floor_filled"

/turf/closed/wall/clockwork //version created by clock cultists
	name = "clockwork wall"
	desc = "A forboding clump of gears that turn on their own. A faint glow emanates from within."
	icon = 'icons/turf/walls/clockwork_wall.dmi'
	icon_state = "clockwork_wall-0"
	base_icon_state = "clockwork_wall"
	turf_flags = IS_SOLID
	smoothing_flags = SMOOTH_BITMASK
	canSmoothWith = null
	sheet_type = /obj/item/stack/sheet/bronze
	sheet_amount = 2
	girder_type = /obj/structure/girder/bronze
	turf_flags = NOJAUNT
	hardness = 3 //very hard for hulks to break
	//for deconstruction
	var/d_state = INTACT

/turf/closed/wall/clockwork/hulk_recoil(obj/item/bodypart/arm, mob/living/carbon/human/hulkman, damage = 41)
	if(IS_CLOCK(hulkman)) //dont recoil for clock cultists
		damage = 0
	return ..()

/turf/closed/wall/clockwork/rcd_act(mob/user, obj/item/construction/rcd/the_rcd, passed_mode)
	return

/turf/closed/wall/clockwork/deconstruction_hints(mob/user)
	switch(d_state)
		if(INTACT)
			return IS_CLOCK(user) ? span_notice("You see a way to unwind the gears with a <i>wrench</i>.") : span_notice("You have no idea how this works! \
																											 You think you see a small cog that could be <i>cut</i> loose.")
		if(COVER_COG_REMOVED)
			return span_notice("The outer cog has been <i>cut</i> loose, and some inner transmission cogs secured by <b>screws</b> are visable.")
		if(TRANSMISSION_COGS_REMOVED)
			return span_notice("The transmission cogs have been <i>screwed</i> loose. It looks like you could <b>unbolt</b> the gears now.")
		if(GEARS_UNBOLTED)
			return span_notice("The main gears have been <i>unbolted</i> and have stopped turning. You see a support beam that looks like it might fall off if <i>heated</i>.")
		if(INNER_PANEL_REMOVED)
			return span_notice("The support beam has been <i>heated</i> off. It looks like you could <i>pry</i> the rest apart.")
		if(GEARS_UNWOUND)
			return span_notice("The gears have been unwound with a <i>wrench</i>. You could take the rest apart with a <i>crowbar</i>.")

/turf/closed/wall/clockwork/try_decon(obj/item/W, mob/user, turf/T)
	//DECONSTRUCTION
	switch(d_state)
		if(INTACT)
			if(W.tool_behaviour == TOOL_WRENCH)
				to_chat(user, span_notice("You begin to unwind the gears..."))
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != INTACT)
						return TRUE
					d_state = GEARS_UNWOUND
					update_appearance()
					to_chat(user, span_notice("You unwind the gears."))
				return TRUE

		if(GEARS_UNWOUND)
			if(W.tool_behaviour == TOOL_WIRECUTTER)
				to_chat(user, span_notice("You begin to cut the outer cog..."))
				W.play_tool_sound(src, 100)
				d_state = COVER_COG_REMOVED
				update_appearance()
				to_chat(user, span_notice("You cut the outer cog."))
				return TRUE

			else if(W.tool_behaviour == TOOL_SCREWDRIVER)
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != GEARS_UNWOUND)
						return TRUE
					d_state = INTACT
					update_appearance()
					to_chat(user, span_notice("You put the cog back in place."))
				return TRUE

		if(COVER_COG_REMOVED)
			if(W.tool_behaviour == TOOL_SCREWDRIVER)
				to_chat(user, span_notice("You begin to unscrew the transmission cog..."))
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != COVER_COG_REMOVED)
						return TRUE
					d_state = TRANSMISSION_COGS_REMOVED
					update_appearance()
					to_chat(user, span_notice("You unscrew the transmission cogs."))
				return TRUE

			else if(W.tool_behaviour == TOOL_WIRECUTTER)
				to_chat(user, span_notice("You begin to put the cog back in place..."))
				W.play_tool_sound(src, 100)
				d_state = GEARS_UNWOUND
				update_appearance()
				to_chat(user, span_notice("You put the cog back in place."))
				return TRUE

		if(TRANSMISSION_COGS_REMOVED)
			if(W.tool_behaviour == TOOL_WRENCH)
				to_chat(user, span_notice("You begin unbolting the main gears..."))
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != TRANSMISSION_COGS_REMOVED)
						return TRUE
					d_state = GEARS_UNBOLTED
					update_appearance()
					to_chat(user, span_notice("You unbolt the main gears."))
				return TRUE

			else if(W.tool_behaviour == TOOL_SCREWDRIVER)
				to_chat(user, span_notice("You begin to tighten the transmission cogs..."))
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != TRANSMISSION_COGS_REMOVED)
						return TRUE
					d_state = COVER_COG_REMOVED
					update_appearance()
					to_chat(user, span_notice("You tighten the transmission cogs."))
				return TRUE

		if(GEARS_UNBOLTED)
			if(W.tool_behaviour == TOOL_WELDER)
				if(!W.tool_start_check(user, amount=2, heat_required = HIGH_TEMPERATURE_REQUIRED))
					return
				to_chat(user, span_notice("You start to weld the support beam loose..."))
				if(W.use_tool(src, user, 60, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != GEARS_UNBOLTED)
						return TRUE
					d_state = INNER_PANEL_REMOVED
					update_appearance()
					to_chat(user, span_notice("You weld the support beam loose."))
				return TRUE

			else if(W.tool_behaviour == TOOL_WRENCH)
				to_chat(user, span_notice("You begin to re-attach the main gears..."))
				if(W.use_tool(src, user, 40, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != GEARS_UNBOLTED)
						return TRUE
					d_state = TRANSMISSION_COGS_REMOVED
					update_appearance()
					to_chat(user, span_notice("You re-attach the main gears."))
				return TRUE

		if(INNER_PANEL_REMOVED)
			if(W.tool_behaviour == TOOL_CROWBAR)
				to_chat(user, span_notice("You struggle to pry off the outer panelling..."))
				if(W.use_tool(src, user, 100, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != INNER_PANEL_REMOVED)
						return TRUE
					to_chat(user, span_notice("You pry off the outer panelling."))
					dismantle_wall()
				return TRUE

			else if(W.tool_behaviour == TOOL_WELDER)
				if(!W.tool_start_check(user, amount=2, heat_required = HIGH_TEMPERATURE_REQUIRED))
					return
				to_chat(user, span_notice("You start to weld the support beams back into place..."))
				if(W.use_tool(src, user, 60, volume=100))
					if(!istype(src, /turf/closed/wall/clockwork) || d_state != INNER_PANEL_REMOVED)
						return TRUE
					d_state = GEARS_UNBOLTED
					update_appearance()
					to_chat(user, span_notice("You weld the support beam back into place."))
				return TRUE
	return FALSE

/turf/closed/wall/clockwork/rust_heretic_act()
	visible_message(span_warning("\The [src] glows for a second, but is uneffected by the magic!"))
	return

/turf/closed/wall/clockwork/reebe //for mapping on reebe
	baseturfs = /turf/open/indestructible/reebe_flooring

/obj/structure/lattice/clockwork
	name = "cog lattice"
	desc = "A lightweight support lattice. These hold the Justicar's station together."
	icon = 'modular_zzplurt/icons/obj/clock_cult/lattice_clockwork.dmi'
	icon_state = "lattice_clockwork-0"
	base_icon_state = "lattice_clockwork"
	smoothing_groups = SMOOTH_GROUP_LATTICE
	canSmoothWith = SMOOTH_GROUP_LATTICE

/obj/structure/lattice/catwalk/clockwork
	name = "clockwork catwalk"
	icon = 'modular_zzplurt/icons/obj/clock_cult/catwalk_clockwork.dmi'
	icon_state = "catwalk_clockwork-0"
	base_icon_state = "catwalk_clockwork"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_CATWALK + SMOOTH_GROUP_LATTICE + SMOOTH_GROUP_OPEN_FLOOR
	canSmoothWith = SMOOTH_GROUP_CATWALK
