//Ancient cryogenic sleepers. Players become NT crewmen from a hundred year old space station, now on the verge of collapse.
/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation
	name = "old cryogenics pod"
	desc = "A humming cryo pod. You can barely recognise a uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an ancient crewman"
	icon = 'modular_skyrat/modules/cryosleep/icons/cryogenics.dmi'
	icon_state = "cryopod"
	you_are_text = "You are a crewman working for Nanotrasen, stationed onboard a state of the art research station."
	flavour_text = "You vaguely recall rushing into a cryogenics pod due to an oncoming radiation storm. \
	The last thing you remember is the station's Artificial Program telling you that you would only be asleep for eight hours. As you open \
	your eyes, everything seems rusted and broken, a dark feeling swells in your gut as you climb out of your pod."
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

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/lt
	desc = "A humming cryo pod. You can barely recognise a bridge officer uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a bridge officer"
	you_are_text = "You are a bridge officer working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/lt

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/sec
	desc = "A humming cryo pod. You can barely recognise a security uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a security officer"
	you_are_text = "You are a security officer working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/sec

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/sec_senior
	desc = "A humming cryo pod. You can barely recognise a senior security uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a senior security officer"
	you_are_text = "You are a senior security officer working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/sec/senior

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/sci
	desc = "A humming cryo pod. You can barely recognise a science uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a scientist"
	you_are_text = "You are a scientist working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/sci

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/robo
	desc = "A humming cryo pod. You can barely recognise a robotics uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "a roboticist"
	you_are_text = "You are a roboticist working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/robo

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/med
	desc = "A humming cryo pod. You can barely recognise an medical uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an medical doctor"
	you_are_text = "You are an medical doctor working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/med

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/chef
	desc = "A humming cryo pod. You can barely recognise an chef uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an chef"
	you_are_text = "You are an chef working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/chef

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/bot
	desc = "A humming cryo pod. You can barely recognise an botanist uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an botanist"
	you_are_text = "You are an botanist working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/bot

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/jani
	desc = "A humming cryo pod. You can barely recognise an janitor uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an janitor"
	you_are_text = "You are an janitor working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/jani

/obj/effect/mob_spawn/ghost_role/human/splurt/oldstation/mine
	desc = "A humming cryo pod. You can barely recognise an miner uniform underneath the built up ice. The machine is attempting to wake up its occupant."
	prompt_name = "an asteroid miner"
	you_are_text = "You are an asteroid miner working for Nanotrasen, stationed onboard a state of the art research station."
	outfit = /datum/outfit/oldstation/mine

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
	uniform = /obj/item/clothing/under/rank/captain
	head = /obj/item/clothing/head/hats/caphat
	suit = /obj/item/clothing/suit/armor/vest/old/oldstation
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/captain/old
	l_pocket = /obj/item/assembly/flash/handheld
	r_pocket = /obj/item/melee/baton/telescopic/gold

/datum/outfit/oldstation/lt
	name = "Ancient SS3 Bridge Officer"
	id = /obj/item/card/id/away/old/oldstation/lt
	uniform = /obj/item/clothing/under/rank/bridge_assistant/turtle
	head = /obj/item/clothing/head/beret/blueshield/bridgeofficer
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/oldstation/sec
	name = "Ancient SS3 Security Officer"
	id = /obj/item/card/id/away/old/oldstation/sec
	uniform = /obj/item/clothing/under/rank/security/nanotrasen
	shoes = /obj/item/clothing/shoes/combat/old
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/oldstation/sec/senior
	name = "Ancient SS3 Senior Security Officer"
	id = /obj/item/card/id/away/old/oldstation/sec/senior
	uniform = /obj/item/clothing/under/rank/security/nanotrasen/hr
	shoes = /obj/item/clothing/shoes/combat/old
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

/datum/outfit/oldstation/robo
	name = "Ancient SS3 Roboticist"
	id = /obj/item/card/id/away/old/oldstation/robo
	uniform = /obj/item/clothing/under/rank/rnd/roboticist
	suit = /obj/item/clothing/suit/toggle/labcoat/roboticist
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/borg_restart_board

/datum/outfit/oldstation/med
	name = "Ancient SS3 Medical Doctor"
	id = /obj/item/card/id/away/old/oldstation/med
	uniform = /obj/item/clothing/under/rank/medical/doctor
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/latex/nitrile
	l_pocket = /obj/item/stack/medical/bruise_pack
	r_pocket = /obj/item/stack/medical/ointment

/datum/outfit/oldstation/chef
	name = "Ancient SS3 Chef"
	id = /obj/item/card/id/away/old/oldstation/chef
	uniform = /obj/item/clothing/under/costume/buttondown/slacks/service
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/utility/chefhat
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black

/datum/outfit/oldstation/bot
	name = "Ancient SS3 Botanist"
	id = /obj/item/card/id/away/old/oldstation/bot
	uniform = /obj/item/clothing/under/rank/civilian/hydroponics
	suit = /obj/item/clothing/suit/apron/overalls
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/botanic_leather
	l_pocket = /obj/item/seeds/cannabis

/datum/outfit/oldstation/jani
	name = "Ancient SS3 Janitor"
	id = /obj/item/card/id/away/old/oldstation/jani
	uniform = /obj/item/clothing/under/rank/civilian/janitor
	suit = /obj/item/clothing/suit/hooded/wintercoat/janitor
	shoes = /obj/item/clothing/shoes/sneakers/black
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/soap/nanotrasen

/datum/outfit/oldstation/mine
	name = "Ancient SS3 Asteroid Miner"
	id = /obj/item/card/id/away/old/oldstation/mine
	uniform = /obj/item/clothing/under/rank/cargo/miner
	suit = /obj/item/clothing/suit/hooded/wintercoat/miner
	shoes = /obj/item/clothing/shoes/jackboots
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

/obj/item/card/id/away/old/oldstation/lt
	name = "Space Station 3 Bridge Officer's ID card"
	trim = /datum/id_trim/away/old/lt
	icon_state = "retro_lt"

/obj/item/card/id/away/old/oldstation/sec
	name = "Space Station 3 Security Officer's ID card"
	trim = /datum/id_trim/away/old/sec
	icon_state = "retro_sec"

/obj/item/card/id/away/old/oldstation/sec/senior
	name = "Space Station 3 Senior Security Officer's ID card"
	trim = /datum/id_trim/away/old/sec/senior
	icon_state = "retro_senior_sec"

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

/obj/item/card/id/away/old/oldstation/chef
	name = "Space Station 3 Chef's ID card"
	trim = /datum/id_trim/away/old/chef
	icon_state = "retro_chef"

/obj/item/card/id/away/old/oldstation/bot
	name = "Space Station 3 Botanist's ID card"
	trim = /datum/id_trim/away/old/bot
	icon_state = "retro_bot"

/obj/item/card/id/away/old/oldstation/jani
	name = "Space Station 3 Janitor's ID card"
	trim = /datum/id_trim/away/old/jani
	icon_state = "retro_jani"

/obj/item/card/id/away/old/oldstation/mine
	name = "Space Station 3 Asteroid Miner's ID card"
	trim = /datum/id_trim/away/old/mine
	icon_state = "retro_miner"

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

/datum/id_trim/away/old/lt
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_SEC, ACCESS_AWAY_COMMAND, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_WEAPONS)
	assignment = "Bridge Officer"
	sechud_icon_state = "hudretroofficer"

/datum/id_trim/away/old/sec
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_SEC, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_BRIG, ACCESS_WEAPONS)
	assignment = "Security Officer"
	sechud_icon_state = "hudretrosecurity"

/datum/id_trim/away/old/sec/senior
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_SEC, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_WEAPONS)
	assignment = "Senior Security Officer"
	sechud_icon_state = "hudretrosecuritysenior"

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

/datum/id_trim/away/old/chef
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN)
	assignment = "Chef"
	sechud_icon_state = "hudretrocook"

/datum/id_trim/away/old/bot
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_HYDROPONICS)
	assignment = "Botanist"
	sechud_icon_state = "hudretrobotanist"

/datum/id_trim/away/old/jani
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_JANITOR)
	assignment = "Janitor"
	sechud_icon_state = "hudretrojanitor"

/datum/id_trim/away/old/mine
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SUPPLY, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO, ACCESS_MINING)
	assignment = "Asteroid Miner"
	sechud_icon_state = "hudretrominer"

/datum/id_trim/away/old/eng
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_SCIENCE, ACCESS_AWAY_ENGINEERING, ACCESS_AWAY_MAINTENANCE, ACCESS_MINERAL_STOREROOM, ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP)
	assignment = "Station Engineer"
	sechud_icon_state = "hudretroengineer"

/datum/id_trim/away/old/equipment
	access = list(ACCESS_AWAY_ENGINEERING, ACCESS_ENGINEERING, ACCESS_ENGINE_EQUIP)
	assignment = "Engine Equipment Access"
