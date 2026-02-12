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

/obj/item/radio/headset/syndicate/alt/empty
	keyslot = null
	keyslot2 = null

/obj/item/radio/headset/syndicate/alt/empty/leader
	name = "team leader headset"
	command = TRUE

/obj/item/ammo_casing/c9mm/spent
	projectile_type = null

/obj/item/ammo_casing/c46x30mm/spent
	projectile_type = null

/obj/machinery/suit_storage_unit/industrial/open
	state_open = TRUE
	density = FALSE

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

/datum/outfit/gorlexmarauders/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	var/obj/item/card/id/id_card = syndicate.wear_id
	if(istype(id_card))
		id_card.registered_name = syndicate.real_name
		id_card.update_label()
		id_card.update_icon()
	syndicate.apply_pref_name(/datum/preference/name/syndicate, syndicate.client)
	handlebank(syndicate)
	syndicate.faction |= ROLE_SYNDICATE
	return ..()

/datum/outfit/gorlexmarauders/crewman
	name = "Gorlex Marauder Crewman"
	gloves = /obj/item/clothing/gloves/color/black
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/crewman

/datum/outfit/gorlexmarauders/operative
	name = "Gorlex Marauder Operative"
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/operative

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
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/shuttlepilot

/datum/outfit/gorlexmarauders/wrecker
	name = "Gorlex Marauder Wrecker"
	head = /obj/item/clothing/head/hardhat/gorlex
	suit = /obj/item/clothing/suit/hazardvest/gorlex
	uniform = /obj/item/clothing/under/syndicate/gorlex/jumpsuit
	shoes = /obj/item/clothing/shoes/workboots
	accessory = /obj/item/clothing/accessory/armband/cargo
	l_pocket = /obj/item/knife/combat/survival
	r_pocket = /obj/item/storage/bag/ore
	back = /obj/item/storage/backpack/satchel/explorer
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/wrecker
	backpack_contents = list(
		/obj/item/flashlight/seclite,
		/obj/item/stack/marker_beacon/ten,
	)

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
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/mechanic

/datum/outfit/gorlexmarauders/medicaldoctor
	name = "Gorlex Marauder Medical Doctor"
	head = /obj/item/clothing/head/gorlex/surgical
	suit = /obj/item/clothing/suit/apron/surgical/gorlex
	gloves = /obj/item/clothing/gloves/latex/nitrile/ntrauma
	glasses = /obj/item/clothing/glasses/hud/health
	l_pocket = /obj/item/knife/combat/survival
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/medicaldoctor

/datum/outfit/gorlexmarauders/foreman
	name = "Gorlex Marauder Foreman"
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/hardhat/gorlex/foreman
	suit = /obj/item/clothing/suit/jacket/gorlex
	belt = /obj/item/storage/belt/utility/chief/full
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/knife/combat/survival
	ears = /obj/item/radio/headset/syndicate/alt/leader
	back = /obj/item/storage/backpack/satchel/eng
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/foreman
	backpack_contents = list(/obj/item/melee/baton/telescopic/silver = 1)


/datum/outfit/gorlexmarauders/ensign
	name = "Gorlex Marauder Ensign"
	uniform = /obj/item/clothing/under/syndicate/gorlex/officer
	head = /obj/item/clothing/head/gorlex/peaked
	suit = /obj/item/clothing/suit/armor/gorlex/lieutenant
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/knife/combat/survival
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/ensign
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
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/lieutenant
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
	id_trim = /datum/id_trim/syndicom/splurt/gorlex/captain
	backpack_contents = list(
		/obj/item/melee/baton/telescopic/gold,
		/obj/item/paper/fluff/ruins/forgottenship/password_remade,
	)

/datum/id_trim/syndicom/splurt/gorlex
	trim_state = "trim_unknown"
	department_color = COLOR_ASSEMBLY_BLACK
	subdepartment_color = COLOR_SYNDIE_RED

/datum/id_trim/syndicom/splurt/gorlex/crewman
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Crewman"
	trim_state = "trim_gmcrewman"
	sechud_icon_state = SECHUD_GORLEX_CREWMAN
	access = list(ACCESS_SYNDICATE)

/datum/id_trim/syndicom/splurt/gorlex/operative
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Operative"
	trim_state = "trim_gmoperative"
	sechud_icon_state = SECHUD_GORLEX_OPERATIVE
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)

/datum/id_trim/syndicom/splurt/gorlex/wrecker
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Wrecker"
	trim_state = "trim_gmwrecker"
	sechud_icon_state = SECHUD_GORLEX_WRECKER
	access = list(ACCESS_SYNDICATE, ACCESS_MINERAL_STOREROOM)

/datum/id_trim/syndicom/splurt/gorlex/mechanic
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Mechanic"
	trim_state = "trim_gmmechanic"
	sechud_icon_state = SECHUD_GORLEX_MECHANIC
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)

/datum/id_trim/syndicom/splurt/gorlex/medicaldoctor
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Medical Doctor"
	trim_state = "trim_gmmedicaldoctor"
	sechud_icon_state = SECHUD_GORLEX_MEDICALDOCTOR
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)

/datum/id_trim/syndicom/splurt/gorlex/shuttlepilot
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Shuttle Pilot"
	trim_state = "trim_gmshuttlepilot"
	sechud_icon_state = SECHUD_GORLEX_SHUTTLEPILOT
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)

/datum/id_trim/syndicom/splurt/gorlex/ensign
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Ensign"
	trim_state = "trim_gmensign"
	sechud_icon_state = SECHUD_GORLEX_ENSIGN
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SYNDICATE_LEADER)

/datum/id_trim/syndicom/splurt/gorlex/foreman
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Foreman"
	trim_state = "trim_gmforeman"
	sechud_icon_state = SECHUD_GORLEX_FOREMAN
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SYNDICATE_LEADER)

/datum/id_trim/syndicom/splurt/gorlex/lieutenant
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Lieutenant"
	trim_state = "trim_gmlieutenant"
	sechud_icon_state = SECHUD_GORLEX_LIEUTENANT
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SYNDICATE_LEADER)

/datum/id_trim/syndicom/splurt/gorlex/captain
	trim_icon = 'modular_zzplurt/icons/obj/card.dmi'
	assignment = "Captain"
	trim_state = "trim_gmcaptain"
	sechud_icon_state = SECHUD_GORLEX_CAPTAIN
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SYNDICATE_LEADER)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders
	name = "Crewman Corpse"
	outfit = /datum/outfit/gorlexmarauders/crewman

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/operative
	name = "Operative Corpse"
	outfit = /datum/outfit/gorlexmarauders/operative
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/operative/geared
	name = "Operative Corpse - Geared"
	outfit = /datum/outfit/gorlexmarauders/operative/geared
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/operative/geared_space
	name = "Operative Corpse - Spacesuit Geared"
	outfit = /datum/outfit/gorlexmarauders/operative/geared/spacesuit
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/wrecker
	name = "Wrecker Corspe"
	outfit = /datum/outfit/gorlexmarauders/wrecker
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/mechanic
	name = "Mechanic Corpse"
	outfit = /datum/outfit/gorlexmarauders/mechanic
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/medicaldoctor
	name = "Medical Doctor Corpse"
	outfit = /datum/outfit/gorlexmarauders/medicaldoctor
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/shuttlepilot
	name = "Shuttle Pilot Corpse"
	outfit = /datum/outfit/gorlexmarauders/pilot
	outfit_override = list(ears = /obj/item/radio/headset/syndicate/alt/empty)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/ensign
	name = "Ensign Corpse"
	outfit = /datum/outfit/gorlexmarauders/ensign
	outfit_override = list(
		ears = /obj/item/radio/headset/syndicate/alt/empty/leader,
		backpack_contents = list(/obj/item/melee/baton/telescopic = 1),
	)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/foreman
	name = "Foreman Corpse"
	outfit = /datum/outfit/gorlexmarauders/foreman
	outfit_override = list(
		ears = /obj/item/radio/headset/syndicate/alt/empty/leader,
		backpack_contents = list(/obj/item/melee/baton/telescopic = 1),
	)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/lieutenant
	name = "Lieutenant Corpse"
	outfit = /datum/outfit/gorlexmarauders/lieutenant
	outfit_override = list(
		ears = /obj/item/radio/headset/syndicate/alt/empty/leader,
		backpack_contents = list(/obj/item/melee/baton/telescopic = 1),
	)

/obj/effect/mob_spawn/corpse/human/gorlexmarauders/captain
	name = "Captain Corpse"
	outfit = /datum/outfit/gorlexmarauders/captain
	outfit_override = list(
		ears = /obj/item/radio/headset/syndicate/alt/empty/leader,
		backpack_contents = list(/obj/item/melee/baton/telescopic = 1),
	)
