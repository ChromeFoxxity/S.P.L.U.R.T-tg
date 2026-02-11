/datum/job/syndicate_gorlex
	title = ROLE_GORLEX_MARAUDERS
	policy_index = ROLE_GORLEX_MARAUDERS

/obj/machinery/computer/security/forgottenship
	name = "SBC Ironclad camera console"
	desc = "Used to access the various cameras on the SBC Ironclad."
	network = list("sbc44")
	icon_keyboard = "syndie_key"
	circuit = null

/obj/item/paper/fluff/ruins/forgottenship/password_remade
	name = "Mission Reminder"

/obj/item/paper/fluff/ruins/forgottenship/password_remade/Initialize(mapload)
	default_raw_text = "Greetings, Captain! To one of Gorlex Marauder's top class Destroyers, the SBC Ironclad!<br>This vessel has been fitted with heavy caliber turrets that will punish any attempts at boarding your vessel.<br>The ship is outfitted and built with pure comfort in mind, while also proving to be an excellent vessel for assault missions. Do be mindful, that there are no current missions for your team as of yet. Just focus for now on preparing for a mission!<br>There will be a survival pod nearby full of equipment that you can use in case of emergencies, do keep in mind that these are ONLY for emergencies.<br><br><b>It will be disguised as a Nanotrasen mining station, there's a vault in the back that will take this code, good luck out there Captain. - [GLOB.fscpassword]</b><br><br>Gorlex Marauders (C)."
	icon_state = "paper_words"
	inhand_icon_state = "paper"
	return ..()

/obj/item/paper/fluff/ruins/forgottenship/missionobj/remade
	name = "Mission Objectives"
	default_raw_text = "Greetings, operatives. You are assigned to Syndicate Battlecruiser Ironclad to be on stand-by for your next mission. Whilst on stand-by, you are to prepare for missions. The Captain may give temporary objectives for each operative, <b>you must</b> obey their orders.<br><br>Remember, disobeying high-ranking officer orders is a reason for termination."

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders
	name = "SBC Ironclad Crewman"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	prompt_name = "gorlex marauder crewman"
	you_are_text = "You are a Gorlex Marauder crewman, stuck in Nanotrasen space waiting for orders from Command."
	flavour_text = "Your vessel had docked to a survival pod nearby in Nanotrasen space. You are awaiting official orders from Syndicate Command on your next mission. You have no other orders other than defend and obey your commanding officer."
	important_text = "Obey orders given by your captain. DO NOT let the SBC Ironclad fall into enemy hands, you are NOT an antagonist, do not go to the station to cause havoc."
	outfit = /datum/outfit/gorlexmarauders/crewman
	spawner_job_path = /datum/job/syndicate_gorlex
	random_appearance = FALSE
	quirks_enabled = TRUE
	loadout_enabled = TRUE

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/special(mob/living/new_spawn, mob/mob_possessor, apply_prefs)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, source = LANGUAGE_SPAWNER)
	var/datum/job/spawn_job = SSjob.get_job_type(spawner_job_path)
	var/policy = get_policy(spawn_job.policy_index)
	if(policy)
		to_chat(new_spawn, span_bold("[policy]"))

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/operative
	name = "SBC Ironclad Operative"
	prompt_name = "gorlex marauder operative"
	you_are_text = "You are a Gorlex Marauder operative, stuck in Nanotrasen space waiting for orders from Command."
	outfit = /datum/outfit/gorlexmarauders/operative

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/wrecker
	name = "SBC Ironclad Wrecker"
	prompt_name = "gorlex marauder wrecker"
	you_are_text = "You are a Gorlex Marauder wrecker, stuck in Nanotrasen space waiting for orders from Command."
	outfit = /datum/outfit/gorlexmarauders/wrecker

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/mechanic
	name = "SBC Ironclad Mechanic"
	prompt_name = "gorlex marauder mechanic"
	you_are_text = "You are a Gorlex Marauder mechanic, stuck in Nanotrasen space waiting for orders from Command."
	outfit = /datum/outfit/gorlexmarauders/mechanic

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/medicaldoctor
	name = "SBC Ironclad Medical Doctor"
	prompt_name = "gorlex marauder medical doctor"
	you_are_text = "You are a Gorlex Marauder medical doctor, stuck in Nanotrasen space waiting for orders from Command."
	outfit = /datum/outfit/gorlexmarauders/medicaldoctor

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/pilot
	name = "SBC Ironclad Shuttle Pilot"
	prompt_name = "gorlex marauder shuttle pilot"
	you_are_text = "You are a Gorlex Marauder shuttle pilot, stuck in Nanotrasen space waiting for orders from Command."
	outfit = /datum/outfit/gorlexmarauders/pilot

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/ensign
	name = "SBC Ironclad Ensign"
	prompt_name = "gorlex marauder ensign"
	you_are_text = "You are a Gorlex Marauder ensign, stuck in Nanotrasen space waiting for orders from Command."
	flavour_text = "Your vessel had docked to a survival pod nearby in Nanotrasen space. You are awaiting official orders from Syndicate Command on your next mission. You have no other orders other than defend and obey your commanding officer, you are the lowest officer rank aboard."
	important_text = "Obey orders given by your captain, and give orders. DO NOT let the SBC Ironclad fall into enemy hands, you are NOT an antagonist, do not go to the station to cause havoc."
	outfit = /datum/outfit/gorlexmarauders/ensign

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/lieutenant
	name = "SBC Ironclad Lieutenant"
	prompt_name = "gorlex marauder lieutenant"
	you_are_text = "You are a Gorlex Marauder lieutenant, stuck in Nanotrasen space waiting for orders from Command."
	flavour_text = "Your vessel had docked to a survival pod nearby in Nanotrasen space. You are awaiting official orders from Syndicate Command on your next mission. You have no other orders other than defend and obey your commanding officer, you are the second officer rank aboard, and the field commander."
	important_text = "Obey orders given by your captain, and give orders. DO NOT let the SBC Ironclad fall into enemy hands, you are NOT an antagonist, do not go to the station to cause havoc."
	outfit = /datum/outfit/gorlexmarauders/lieutenant

/obj/effect/mob_spawn/ghost_role/human/gorlexmarauders/captain
	name = "SBC Ironclad Captain"
	prompt_name = "gorlex marauder captain"
	you_are_text = "You are a Gorlex Marauder captain, stuck in Nanotrasen space waiting for orders from Command."
	flavour_text = "Your vessel had docked to a survival pod nearby in Nanotrasen space. You are awaiting official orders from Syndicate Command on your next mission. You have no other orders other than to stay put, and guard the vessel, you are the highest rank officer aboard."
	important_text = "Give official orders, defend the secret documents. DO NOT let the SBC Ironclad fall into enemy hands, you are NOT an antagonist, do not go to the station to cause havoc."
	outfit = /datum/outfit/gorlexmarauders/captain

/datum/outfit/gorlexmarauders
	name = "Gorlex Marauder Base"
	id = /obj/item/card/id/advanced/black/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/gorlex
	back = /obj/item/storage/backpack/satchel/sec/redsec
	ears = /obj/item/radio/headset/syndicate/alt
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	back = /obj/item/storage/backpack/satchel/sec/redsec

	box = /obj/item/storage/box/survival/syndie

	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/gorlexmarauders/post_equip(mob/living/carbon/human/syndie_scum)
	syndie_scum.faction |= ROLE_SYNDICATE

/datum/outfit/gorlexmarauders/crewman
	name = "Gorlex Marauder Crewman"
	gloves = /obj/item/clothing/gloves/color/black

/datum/outfit/gorlexmarauders/operative
	name = "Gorlex Marauder Operative"
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/gorlexmarauders/operative/geared
	name = "Gorlex Marauder Operative - Geared"
	head = /obj/item/clothing/head/helmet/gorlex
	mask = /obj/item/clothing/mask/gas/syndicate
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/gorlex
	suit = /obj/item/clothing/suit/armor/gorlex
	belt = /obj/item/storage/belt/security/webbing/gorlex
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/gorlexmarauders/operative/geared/spacesuit
	name = "Gorlex Marauder Operative - Spacesuit Geared"
	head = /obj/item/clothing/head/helmet/space/syndicate/gorlex/armored
	mask = /obj/item/clothing/mask/gas/syndicate
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/gorlex
	suit = /obj/item/clothing/suit/space/syndicate/gorlex/armored
	suit_store = /obj/item/tank/internals/emergency_oxygen/double
	belt = /obj/item/storage/belt/security/webbing/gorlex
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

/datum/outfit/gorlexmarauders/pilot
	name = "Gorlex Marauder Shuttle Pilot"
	head = /obj/item/clothing/head/helmet/gorlex/pilot
	uniform = /obj/item/clothing/under/syndicate/gorlex/fatigues

/datum/outfit/gorlexmarauders/wrecker
	name = "Gorlex Marauder Wrecker"
	head = /obj/item/clothing/head/hardhat/gorlex
	suit = /obj/item/clothing/suit/hazardvest/gorlex
	uniform = /obj/item/clothing/under/syndicate/gorlex/jumpsuit
	shoes = /obj/item/clothing/shoes/workboots
	accessory = /obj/item/clothing/accessory/armband/cargo
	l_pocket = /obj/item/knife/combat/survival
	r_pocket = /obj/item/storage/bag/ore
	backpack_contents = list(
		/obj/item/flashlight/seclite,
		/obj/item/stack/marker_beacon/ten,
	)
	back = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/gorlexmarauders/mechanic
	name = "Gorlex Marauder Mechanic"
	head = /obj/item/clothing/head/hardhat/gorlex
	suit = /obj/item/clothing/suit/hazardvest/gorlex
	belt = /obj/item/storage/belt/utility/syndicate
	shoes = /obj/item/clothing/shoes/workboots
	accessory = /obj/item/clothing/accessory/armband/engine
	l_pocket = /obj/item/knife/combat/survival
	r_pocket = /obj/item/t_scanner
	back = /obj/item/storage/backpack/satchel/eng

/datum/outfit/gorlexmarauders/medicaldoctor
	name = "Gorlex Marauder Medical Doctor"
	head = /obj/item/clothing/head/gorlex/surgical
	suit = /obj/item/clothing/suit/apron/surgical/gorlex
	gloves = /obj/item/clothing/gloves/latex/nitrile/ntrauma
	glasses = /obj/item/clothing/glasses/hud/health
	l_pocket = /obj/item/knife/combat/survival

/datum/outfit/gorlexmarauders/foreman
	name = "Gorlex Marauder Foreman"
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/hardhat/gorlex/foreman
	suit = /obj/item/clothing/suit/jacket/gorlex
	belt = /obj/item/storage/belt/utility/chief/full
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/knife/combat/survival
	ears = /obj/item/radio/headset/syndicate/alt/leader
	backpack_contents = list(/obj/item/melee/baton/telescopic/silver = 1)
	back = /obj/item/storage/backpack/satchel/eng

/datum/outfit/gorlexmarauders/ensign
	name = "Gorlex Marauder Ensign"
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/gorlex/peaked
	suit = /obj/item/clothing/suit/armor/gorlex/lieutenant
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/knife/combat/survival
	backpack_contents = list(/obj/item/melee/baton/telescopic/bronze = 1)

/datum/outfit/gorlexmarauders/lieutenant
	name = "Gorlex Marauder Lieutenant"
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/gorlex
	suit = /obj/item/clothing/suit/armor/gorlex/lieutenant
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/redsec
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	l_pocket = /obj/item/knife/combat/survival
	ears = /obj/item/radio/headset/syndicate/alt/leader
	backpack_contents = list(/obj/item/melee/baton/telescopic/silver = 1)

/datum/outfit/gorlexmarauders/captain
	name = "Gorlex Marauder Captain"
	id = /obj/item/card/id/advanced/black/syndicate_command/captain_id
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/gorlex/peaked
	suit = /obj/item/clothing/suit/armor/gorlex/captain
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/redsec
	gloves = /obj/item/clothing/gloves/kaza_ruk/combatglovesplus
	l_pocket = /obj/item/knife/combat/survival
	ears = /obj/item/radio/headset/syndicate/alt/leader
	backpack_contents = list(
		/obj/item/melee/baton/telescopic/gold,
		/obj/item/paper/fluff/ruins/forgottenship/password_remade,
	)
