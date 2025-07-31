GLOBAL_DATUM(clock_ark, /obj/structure/destructible/clockwork/the_ark) //set to be equal to the ark on creation if none
GLOBAL_VAR_INIT(ratvar_risen, FALSE)

/obj/structure/destructible/clockwork/the_ark
	name = "\improper Ark of the Clockwork Justiciar"
	desc = "A massive, hulking amalgamation of parts. It seems to be maintaining a very unstable bluespace anomaly."
	clockwork_desc = "Nezbere's magnum opus: a hulking clockwork machine capable of combining bluespace and steam power to summon Ratvar. Once activated, \
	its instability will cause one-way bluespace rifts to open across the station to the City of Cogs, so be prepared to defend it at all costs."
	max_integrity = 1000
	icon = 'icons/effects/96x96.dmi'
	icon_state = "clockwork_gateway_components"
	pixel_x = -32
	pixel_y = -32
	immune_to_servant_attacks = TRUE
	layer = BELOW_MOB_LAYER
	can_rotate = FALSE
	break_message = null
	break_sound = null
	debris = null
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF | FREEZE_PROOF

/obj/structure/destructible/clockwork/the_ark/Initialize(mapload)
	. = ..()
	if(!GLOB.clock_ark)
		GLOB.clock_ark = src
	SSpoints_of_interest.make_point_of_interest(src)
