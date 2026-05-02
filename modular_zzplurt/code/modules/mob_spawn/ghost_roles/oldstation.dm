//Ancient cryogenic sleepers. Players become NT crewmen from a hundred year old space station, now on the verge of collapse.
/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation
	name = "occupied cryogenic freezer"
	desc = "A humming cryo pod. You can barely recognise a uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an ancient crewman"
	icon = 'modular_skyrat/modules/cryosleep/icons/cryogenics.dmi'
	icon_state = "cryopod"
	you_are_text = "You are a crewman working for Nanotrasen, stationed onboard a state of the art research station."
	flavour_text = "You were an employee for Nanotrasen working on one a station called Space Station 3. You vaguely recall rushing into a \
		cryogenics pod due to an oncoming radiation storm. The last thing you remember is the station's Artificial Program telling you that \
		you would only be asleep for eight hours. As you open your eyes, everything seems rusted and broken, a dark feeling swells in your \
		gut as you climb out of your pod."
	important_text = "Work as a team with your fellow survivors and do not abandon them."
	outfit = /datum/outfit/oldeng
	spawner_job_path = /datum/job/ancient_crew
	quirks_enabled = TRUE
	random_appearance = FALSE
	loadout_enabled = FALSE
	allow_custom_character = ALL

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/Destroy()
	new /obj/machinery/cryopod(drop_location())
	return ..()

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/cap
	desc = "A humming cryo pod. You can barely recognise a captain uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a captain"
	you_are_text = "You are a captain working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/cap

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/sec
	desc = "A humming cryo pod. You can barely recognise a security uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a security officer"
	you_are_text = "You are a security officer working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/sec

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/sci
	desc = "A humming cryo pod. You can barely recognise a science uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a scientist"
	you_are_text = "You are a scientist working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/sci

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/med
	desc = "A humming cryo pod. You can barely recognise an medical uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an medical doctor"
	you_are_text = "You are an medical doctor working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/med

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/srv
	desc = "A humming cryo pod. You can barely recognise a service uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an service worker"
	you_are_text = "You are an service worker working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/service

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/eng
	desc = "A humming cryo pod. You can barely recognise an engineer uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an station engineer"
	you_are_text = "You are an station engineer working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/eng

/datum/outfit/oldstation
	name = "Ancient Crew"
	id = /obj/item/card/id/away/old/oldstation
	uniform = /obj/item/clothing/under/color/grey/ancient
	shoes = /obj/item/clothing/shoes/sneakers/black

/datum/outfit/oldstation/post_equip(mob/living/carbon/human/oldstation, visualsOnly = FALSE)
	var/obj/item/card/id/id_card = oldstation.wear_id
	if(istype(id_card))
		id_card.registered_name = oldstation.real_name
		id_card.update_label()
		id_card.update_icon()

/datum/outfit/oldstation/cap
	name = "Ancient SS3 Captain"
	id = /obj/item/card/id/away/old/oldstation/cap
	uniform = /obj/item/clothing/under/rank/centcom/commander/old
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/captain/centcom/old
	r_pocket = /obj/item/melee/baton/telescopic

/datum/outfit/oldstation/sec
	name = "Ancient SS3 Security Officer"
	id = /obj/item/card/id/away/old/oldstation/sec
	uniform = /obj/item/clothing/under/rank/security/nanotrasen
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/oldstation/sci
	name = "Ancient SS3 Scientist"
	id = /obj/item/card/id/away/old/oldstation/sci
	uniform = /obj/item/clothing/under/rank/rnd/scientist
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/latex
	l_pocket = /obj/item/disk/design_disk/bepis

/datum/outfit/oldstation/med
	name = "Ancient SS3 Medical Doctor"
	id = /obj/item/card/id/away/old/oldstation/med
	uniform = /obj/item/clothing/under/rank/medical/doctor
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/latex/nitrile
	l_pocket = /obj/item/stack/medical/bruise_pack
	r_pocket = /obj/item/stack/medical/ointment

/datum/outfit/oldstation/service
	name = "Ancient SS3 Service Worker"
	id = /obj/item/card/id/away/old/oldstation/crew
	uniform = /obj/item/clothing/under/costume/buttondown/slacks
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/utility/chefhat
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black

/datum/outfit/oldstation/eng
	name = "Ancient SS3 Station Engineer"
	id = /obj/item/card/id/away/old/oldstation/eng
	uniform = /obj/item/clothing/under/rank/engineering/engineer
	suit = /obj/item/clothing/suit/hazardvest
	gloves = /obj/item/clothing/gloves/color/fyellow/old
	shoes = /obj/item/clothing/shoes/workboots
	l_pocket = /obj/item/tank/internals/emergency_oxygen

/obj/item/card/id/away/old/oldstation
	name = "Space Station 3 ID card"
	desc = "A vintage Nanotrasen ID card issued to station staff back in older Nanotrasen stations. Basically a card without much of the advanced benefits."
	icon = 'modular_zzplurt/icons/obj/card.dmi'
	icon_state = "retro"

/obj/item/card/id/away/old/oldstation/cap
	name = "Space Station 3 Captain's ID card"
	trim = /datum/id_trim/away/old/cap
	icon_state = "retro_cap"

/obj/item/card/id/away/old/oldstation/sec
	name = "Space Station 3 Security Officer's ID card"
	trim = /datum/id_trim/away/old/sec
	icon_state = "retro_sec"

/obj/item/card/id/away/old/oldstation/sci
	name = "Space Station 3 Scientist's ID card"
	trim = /datum/id_trim/away/old/sci
	icon_state = "retro_sci"

/obj/item/card/id/away/old/oldstation/robo
	name = "Space Station 3 Roboticist's ID card"
	trim = /datum/id_trim/away/old/robo
	icon_state = "retro_robo"

/obj/item/card/id/away/old/oldstation/med
	name = "Space Station 3 Medical Doctors's ID card"
	trim = /datum/id_trim/away/old/med
	icon_state = "retro_med"

/obj/item/card/id/away/old/oldstation/crew
	name = "Space Station 3 Service Worker's ID card"
	trim = /datum/id_trim/away/old/crew
	icon_state = "retro_crew"

/obj/item/card/id/away/old/oldstation/eng
	name = "Space Station 3 Station Engineer's ID card"
	trim = /datum/id_trim/away/old/eng
	icon_state = "retro_eng"

/obj/item/card/id/away/old/oldstation/equipment
	name = "Engineering Equipment Access"
	desc = "A special, vintage ID card that allows access to engineering equipment without the need for a engineer.. Were they really that useless back then?"
	trim = /datum/id_trim/away/old/equipment
	icon_state = "retro_apc"

/// Trim for the oldstation ruin/Space Station 3
/datum/id_trim/away/old/cap
	access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_COMMAND,
		ACCESS_AWAY_SEC,
		ACCESS_AWAY_ENGINEERING,
		ACCESS_AWAY_SCIENCE,
		ACCESS_AWAY_SUPPLY,
		ACCESS_AWAY_MEDICAL,
		ACCESS_AWAY_MAINTENANCE,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_RESEARCH,
		ACCESS_MEDICAL,
		ACCESS_KITCHEN,
		ACCESS_HYDROPONICS,
		ACCESS_JANITOR,
		ACCESS_ORDNANCE,
		ACCESS_ROBOTICS,
		ACCESS_ENGINEERING,
		ACCESS_ENGINE_EQUIP,
		ACCESS_CARGO,
		ACCESS_MINING,
		ACCESS_BRIG,
		ACCESS_ARMORY,
		ACCESS_WEAPONS)
	assignment = "Captain"
	sechud_icon_state = "hudretrocaptain"

/datum/id_trim/away/old/sec
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_SEC, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_BRIG, ACCESS_WEAPONS)
	assignment = "Security Officer"
	sechud_icon_state = "hudretrosecurity"

/datum/id_trim/away/old/sci
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_SCIENCE, ACCESS_RESEARCH, ACCESS_ORDNANCE)
	assignment = "Scientist"
	sechud_icon_state = "hudretroscientist"

/datum/id_trim/away/old/robo
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_SCIENCE, ACCESS_RESEARCH, ACCESS_ROBOTICS)
	assignment = "Roboticist"
	sechud_icon_state = "hudretroroboticist"

/datum/id_trim/away/old/med
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MEDICAL, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_MEDICAL)
	assignment = "Medical Doctor"
	sechud_icon_state = "hudretrodoctor"

/datum/id_trim/away/old/crew
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_HYDROPONICS, ACCESS_JANITOR,)
	assignment = "Service Worker"
	sechud_icon_state = "hudretrocrew"

/datum/id_trim/away/old/eng
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_ENGINEERING, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP)
	assignment = "Station Engineer"
	sechud_icon_state = "hudretroengineer"

/datum/id_trim/away/old/equipment
	access = list(ACCESS_AWAY_ENGINEERING, ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP)
	assignment = "Engine Equipment Access"
