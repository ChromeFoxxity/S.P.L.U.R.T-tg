GLOBAL_VAR_INIT(bsrapassword, generate_password())

/obj/machinery/door/password/voice/blackspire
	name = "voice-activated vault door"
	desc = "A heavy duty blast door that opens via password, you can only assume it opens by a special Syndicate passcode."
	icon = 'modular_skyrat/modules/aesthetics/blast_door/icons/blast_door.dmi'

/obj/machinery/door/password/voice/blackspire/Initialize(mapload)
	. = ..()
	password = "[GLOB.bsrapassword]"

/obj/item/paper/fluff/blackspire/password/Initialize(mapload)
	name = "Vault Passcode"
	default_raw_text = "Welcome to the Blackspire Research Annex! One of the Syndicate's most renown forward operating bases!<br>This facility is built with your safety and luxurious living in mind.<br>This facility is also built with 3 sectors, the Crew Sector, where all of the living facilities are such as the kitchen, bar, hydroponics and so-on, the Research Sector, where we will be conducting all of our primary research and development, with a Cytology Lab, Genetics Lab, and RnD. Use it well, and lasty there's the Administrative Sector, where you will be staying.<br>We congratulate you for your promotion, and good luck Site Director.<br><br><b>In case of emergency, you must remember the passcode - [GLOB.bsrapassword]</b><br><br>BLACKSPIRE RESEARCH ANNEX - 2565."
	icon_state = "paper_words"
	inhand_icon_state = "paper"
	return ..()

/obj/machinery/door/puzzle/keycard/blackspire
	name = "External Airlock"
	desc = "A heavy external airlock with a keycard slot attached."
	icon = 'modular_zzplurt/code/modules/fluff/blackspire/external_puzzle.dmi'
	puzzle_id = "blackspire"
	open_message = "The door emits a green light, and clicks open. The hydraulics slide open the door."

/obj/machinery/door/puzzle/keycard/blackspire/animation_length(animation)
	switch(animation)
		if(DOOR_OPENING_ANIMATION)
			return 0.6 SECONDS

/obj/machinery/door/puzzle/keycard/blackspire/animation_segment_delay(animation)
	switch(animation)
		if(DOOR_OPENING_PASSABLE)
			return 0.5 SECONDS
		if(DOOR_OPENING_FINISHED)
			return 0.6 SECONDS

/obj/machinery/door/puzzle/keycard/blackspire/administrative
	name = "Administrative Sector"
	desc = "A heavy command airlock with a keycard slot attached."
	icon = 'modular_zzplurt/code/modules/fluff/blackspire/admin_puzzle.dmi'
	puzzle_id = "blackspire_admin"
	open_message = "The door emits a green light, and clicks open. The hydraulics slide open the door."

/obj/machinery/door/puzzle/keycard/blackspire/maintenance
	name = "maintenance hatch"
	desc = "A heavy maintenance airlock hatch with a keycard slot attached."
	icon = 'modular_zzplurt/code/modules/fluff/blackspire/maint_puzzle.dmi'
	puzzle_id = "blackspire_maint"
	open_message = "The door emits a green light, and clicks open. The hydraulics slide open the door."

/obj/machinery/door/puzzle/keycard/blackspire/dorms
	name = "Dorm 3"
	desc = "A heavy dorms airlock with a keycard slot attached."
	icon = 'modular_zzplurt/code/modules/fluff/blackspire/dorm_puzzle.dmi'
	puzzle_id = "blackspire_dorm"
	open_message = "The door emits a green light, and clicks open. The hydraulics slide open the door."

/obj/item/keycard/blackspire
	name = "Blackspire Research Annex keycard"
	desc = "A small keycard with syndicate insignia, it says something about 'Blackspire Research Annex' on it."
	icon = 'modular_zzplurt/icons/obj/fluff/puzzle_small.dmi'
	icon_state = "blackspire_keycard"
	color = null
	puzzle_id = "blackspire"

/obj/item/keycard/blackspire/administrative
	name = "Administrative Sector keycard"
	desc = "A small keycard with syndicate insignia, it says something about 'Administrative Sector' on it."
	icon_state = "blackspire_administrative"
	color = null
	puzzle_id = "blackspire_admin"

/obj/item/keycard/blackspire/maintenance
	name = "Maintenance keycard"
	desc = "A small keycard with syndicate insignia, it says something about 'Maintenance' on it."
	icon_state = "blackspire_maintenance"
	color = null
	puzzle_id = "blackspire_maint"

/obj/item/keycard/blackspire/dorms
	name = "Dorm 3 keycard"
	desc = "A small keycard with syndicate insignia, it says something about 'Dorm 3' on it."
	icon_state = "blackspire_commons"
	color = null
	puzzle_id = "blackspire_dorm"
