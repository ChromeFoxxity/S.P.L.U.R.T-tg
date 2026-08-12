#define ROLE_AGRCULT "Abandoned Cultist"

/datum/id_trim/away/freightmine
	assignment = "AGR Intern"
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_ENGINEERING, ACCESS_MINING, ACCESS_ROBOTICS, ACCESS_WEAPONS)

/obj/effect/mob_spawn/ghost_role/human/abandoned_cultist
	name = "Abandoned cultist"
	desc = "Brass pulses with faint energy, barely sustaining life. Seems like there's somebody inside, peacefully sleeping."
	icon = 'modular_zzplurt/icons/obj/machines/sleepers.dmi'
	icon_state = "sleeper_clockwork"
	prompt_name = "an abandoned clockwork cultist"
	you_are_text = "You are an abandoned cult member attempting to survive the ruins of an AGR facility on an unknown frozen planet."
	flavour_text = "You remember signing up for an internship for an ice planet based AGR mining complex... you can tell cryo lasted far longer than intended, and the contraption in your hand may be your only chance at survival."
	important_text = "You are not an antagonist. Your objective is survival."
	quirks_enabled = TRUE
	random_appearance = FALSE
	loadout_enabled = TRUE
	outfit = /datum/outfit/abandoned_cultist

/datum/outfit/abandoned_cultist
	name = "AGR Intern Cultist"
	uniform = /obj/item/clothing/under/occult
	shoes = /obj/item/clothing/shoes/clockwork
	gloves = /obj/item/clothing/gloves/fingerless
	l_pocket = /obj/item/modular_computer/pda
	r_pocket = /obj/item/antag_granter/clock_cultist
	back = /obj/item/storage/backpack/satchel


