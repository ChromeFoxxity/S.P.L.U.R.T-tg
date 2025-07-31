#define ROLE_COMPLEX "Complex Survivors"

/turf/open/chasm/icemoon/complex
	icon = 'icons/turf/floors/icechasms.dmi'
	initial_gas_mix = COLD_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/chasm/icemoon/complex
	light_power = 0

/turf/open/misc/asteroid/snow/complex
	initial_gas_mix = COLD_ATMOS
	baseturfs = /turf/open/misc/asteroid/snow/complex
	light_range = 1
	light_power = 0.075
	light_color = "#89959a"

/turf/open/misc/asteroid/snow/ice/complex
	initial_gas_mix = COLD_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/ice/complex
	initial_gas_mix = COLD_ATMOS
	planetary_atmos = TRUE

/turf/open/floor/plating/snowed/complex
	initial_gas_mix = COLD_ATMOS

/turf/open/floor/plating/snowed/smoothed/complex
	initial_gas_mix = COLD_ATMOS

/turf/open/floor/stone/complex
	initial_gas_mix = COLD_ATMOS

/turf/open/floor/plating/complex
	initial_gas_mix = COLD_ATMOS

/turf/closed/mineral/random/snow/high_chance/complex
	initial_gas_mix = COLD_ATMOS
	turf_type = /turf/open/misc/asteroid/snow/complex
	baseturfs = /turf/open/misc/asteroid/snow/complex

/turf/closed/mineral/plasma/ice/complex
	initial_gas_mix = COLD_ATMOS
	turf_type = /turf/open/misc/asteroid/snow/complex
	baseturfs = /turf/open/misc/asteroid/snow/complex

/turf/closed/mineral/snowmountain/cavern/complex
	initial_gas_mix = COLD_ATMOS
	baseturfs = /turf/open/misc/asteroid/snow/complex
	turf_type = /turf/open/misc/asteroid/snow/complex

/obj/structure/closet/supplypod/complexpod
	name = "Syndicate Assault Pod"
	desc = "A specialised, blood-red styled pod for delivering operatives into mission areas."
	specialised = TRUE
	style = /datum/pod_style/syndicate
	bluespace = TRUE
	explosionSize = list(0,0,1,2)
	delays = list(POD_TRANSIT = 25, POD_FALLING = 4, POD_OPENING = 30, POD_LEAVING = 30)
	stay_after_drop = TRUE

/obj/item/paper/fluff/ruins/listeningstation/briefing/complex
	name = "mission briefing"
	default_raw_text = {"<b>Mission Details</b>:
	<br>
	<br>You have been assigned to a newly constructed listening post constructed right next to a AGR Nanotrasen Facility to monitor their xenoarcheology operations.
	<br>Accurate intel is crucial to the success of our operatives, do not fail us.
	<br>
	<br>You may view intelligence reports from your predecessors in the filing cabinet in your office.
	"}

/obj/item/ammo_casing/c10mm/spent
	projectile_type = null

/obj/machinery/camera/autoname/complex
	network = list("Complex")

/obj/machinery/computer/security/complex
	name = "facility monitoring console"
	desc = "A camera console used to monitor the various substations of the A.G.R. Complex."
	network = list("Complex")
	circuit = null

/obj/effect/mob_spawn/corpse/human/geneticist/complex
	name = "Mutation Researcher"
	outfit = /datum/outfit/job/geneticist/complex

/datum/id_trim/job/geneticist/complex
	assignment = "Mutation Researcher"
	department_color = COLOR_SCIENCE_PINK
	subdepartment_color = COLOR_CARGO_BROWN

/datum/outfit/job/geneticist/complex
	name = "Mutation Researcher"
	id_trim = /datum/id_trim/job/geneticist/complex
	suit = /obj/item/clothing/suit/hooded/wintercoat/science/genetics
	uniform = /obj/item/clothing/under/rank/rnd/geneticist/tg
	mask = /obj/item/clothing/mask/gas
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/winterboots
	belt = null

/obj/effect/mob_spawn/corpse/human/doctor/complex
	name = "Medical Officer"
	outfit = /datum/outfit/job/doctor/complex

/datum/id_trim/job/medical_doctor/complex
	assignment = "Medical Officer"
	department_color = COLOR_MEDICAL_BLUE
	subdepartment_color = COLOR_CARGO_BROWN

/datum/outfit/job/doctor/complex
	name = "Complex Medical Officer"
	id_trim = /datum/id_trim/job/medical_doctor/complex
	suit = /obj/item/clothing/suit/hooded/wintercoat/medical
	mask = /obj/item/clothing/mask/gas
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/winterboots
	belt = null

/obj/effect/mob_spawn/corpse/human/scientist/complex
	name = "Research Officer"
	outfit = /datum/outfit/job/scientist/complex

/datum/id_trim/job/scientist/complex
	assignment = "Research Officer"
	department_color = COLOR_SCIENCE_PINK
	subdepartment_color = COLOR_CARGO_BROWN

/datum/outfit/job/scientist/complex
	name = "Complex Research Officer"
	id_trim = /datum/id_trim/job/scientist/complex
	suit = /obj/item/clothing/suit/hooded/wintercoat/science
	uniform = /obj/item/clothing/under/rank/rnd/scientist/tg
	mask = /obj/item/clothing/mask/gas
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/winterboots
	belt = null

/obj/effect/mob_spawn/corpse/human/syndicatecomplex
	name = "Complex Syndicate"
	outfit = /datum/outfit/syndicatecomplexcorpse

/datum/id_trim/syndicate/complex
	assignment = "Syndicate Assault Operative"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_SYNDIE_RED_HEAD
	sechud_icon_state = SECHUD_SYNDICATE

/datum/outfit/syndicatecomplexcorpse
	name = "Complex Syndicate Operative Corpse"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	suit = /obj/item/clothing/suit/hooded/wintercoat/skyrat/syndicate
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	neck = /obj/item/clothing/neck/large_scarf/syndie
	glasses = /obj/item/clothing/glasses/cold
	gloves = /obj/item/clothing/gloves/combat
	ears =  /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/gas/syndicate
	back = /obj/item/storage/backpack/satchel/sec/redsec
	belt = /obj/item/storage/belt/military
	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/syndicate/complex

/obj/effect/mob_spawn/corpse/human/syndicatecomplex/captain
	name = "Complex Syndicate Captain"
	outfit = /datum/outfit/syndicatecomplexcaptaincorpse

/datum/id_trim/syndicate/complex/captain
	assignment = "Syndicate Assault Captain"
	trim_state = "trim_captain"
	department_color = COLOR_SYNDIE_RED_HEAD
	subdepartment_color = COLOR_SYNDIE_RED_HEAD
	sechud_icon_state = SECHUD_SYNDICATE

/datum/outfit/syndicatecomplexcaptaincorpse
	name = "Complex Syndicate Captain Corpse"
	uniform = /obj/item/clothing/under/syndicate/skyrat/tactical
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate/winter
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	neck = /obj/item/clothing/neck/large_scarf/syndie
	glasses = /obj/item/clothing/glasses/cold
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate/alt/leader
	mask = /obj/item/clothing/mask/gas/syndicate
	head = /obj/item/clothing/head/hats/hos/cap/syndicate
	back = /obj/item/storage/backpack/satchel/sec/redsec
	id = /obj/item/card/id/advanced/chameleon/elite/black
	id_trim = /datum/id_trim/syndicate/complex/captain

/obj/effect/mob_spawn/corpse/human/syndicatecomplex/comms
	name = "Complex Syndicate Comms"
	outfit = /datum/outfit/syndicatecomplexcommscorpse

/datum/id_trim/syndicate/complex/comms
	assignment = "Syndicate Communications Agent"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_SOFT_RED
	sechud_icon_state = SECHUD_SYNDICATE

/datum/outfit/syndicatecomplexcommscorpse
	name = "Complex Syndicate Comms Agent Corpse"
	uniform = /obj/item/clothing/under/syndicate/coldres
	suit = /obj/item/clothing/suit/armor/vest/alt
	shoes = /obj/item/clothing/shoes/combat/coldres
	neck = /obj/item/clothing/neck/large_scarf/syndie
	glasses = /obj/item/clothing/glasses/cold
	gloves = /obj/item/clothing/gloves/combat
	ears =  /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/swat
	back = /obj/item/storage/backpack/satchel/sec/redsec
	belt = /obj/item/storage/belt/utility/syndicate
	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/syndicate/complex/comms

/// Syndicate winter troopers
/mob/living/basic/trooper/syndicate/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex

/mob/living/basic/trooper/syndicate/melee/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/knife/combat/survival)

/mob/living/basic/trooper/syndicate/melee/sword/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/melee/energy/sword/saber/red)

/mob/living/basic/trooper/syndicate/ranged/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/gun/ballistic/automatic/pistol/clandestine)
	casingtype = /obj/item/ammo_casing/c10mm

/mob/living/basic/trooper/syndicate/ranged/complex/comms
	name = "Syndicate Comms Agent"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/gun/ballistic/automatic/pistol/clandestine)
	r_hand = /obj/item/gun/ballistic/revolver/badass
	casingtype = /obj/item/ammo_casing/c357

/mob/living/basic/trooper/syndicate/ranged/smg/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/gun/ballistic/automatic/c20r/unrestricted)
	projectilesound = 'sound/items/weapons/gun/smg/shot.ogg'

/mob/living/basic/trooper/syndicate/ranged/shotgun/complex
	name = "Syndicate Winter Operative"
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex
	loot = list(/obj/item/gun/ballistic/shotgun/bulldog)
	projectilesound = 'sound/items/weapons/gun/shotgun/shot_alt.ogg'

/mob/living/basic/trooper/syndicate/ranged/captain
	name = "Syndicate Captain"

	casingtype = /obj/item/ammo_casing/a223
	burst_shots = 4
	ranged_cooldown = 3 SECONDS
	projectilesound = 'sound/items/weapons/gun/smg/shot.ogg'
	r_hand = /obj/item/gun/ballistic/automatic/ar
	corpse = /obj/effect/mob_spawn/corpse/human/syndicatecomplex/captain
	mob_spawner = /obj/effect/mob_spawn/corpse/human/syndicatecomplex/captain

/obj/item/clothing/under/rank/rnd/scientist/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "science"

/obj/item/clothing/under/rank/rnd/scientist/skirt/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "science_skirt"

/obj/item/clothing/under/rank/rnd/roboticist/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "robotics"

/obj/item/clothing/under/rank/rnd/roboticist/skirt/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "robotics_skirt"

/obj/item/clothing/under/rank/rnd/geneticist/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "genetics"

/obj/item/clothing/under/rank/rnd/geneticist/skirt/tg // Putting these here because fuck Skyrat's icons.
	icon = 'icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'icons/mob/clothing/under/rnd.dmi'
	icon_state = "genetics_skirt"
