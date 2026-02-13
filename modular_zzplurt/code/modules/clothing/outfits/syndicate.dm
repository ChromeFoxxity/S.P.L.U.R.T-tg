/obj/effect/mob_spawn/corpse/human/syndicate_new
	name = "Syndicate Operative"
	outfit = /datum/outfit/syndicate_new

/datum/id_trim/syndicom/agent
	assignment = "Syndicate Agent"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)
	pointer_color = COLOR_SYNDIE_RED
	big_pointer = TRUE

/datum/outfit/syndicate_new
	name = "Syndicate Agent - Base"

	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/syndicom/agent
	uniform = /obj/item/clothing/under/rank/syndicate
	mask = /obj/item/clothing/mask/gas/syndicate
	ears = /obj/item/radio/headset/syndicateciv
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	back = /obj/item/storage/backpack/satchel/sec/syndicate
	box = /obj/item/storage/box/survival/syndie

/datum/id_trim/syndicom/agent/operative
	assignment = "Syndicate Field Operative"

/datum/outfit/syndicate_new/operative
	name = "Syndicate Agent - Field Operative"

	uniform = /obj/item/clothing/under/rank/syndicate/operative
	suit = /obj/item/clothing/suit/armor/vest/alt/syndie
	head = /obj/item/clothing/head/helmet/swat/syndicate
	belt = /obj/item/storage/belt/military/syndicate

/datum/outfit/syndicate_new/operative/hardsuit
	name = "Syndicate Agent - Space Field Operative"

	uniform = /obj/item/clothing/under/rank/syndicate/operative/tactical
	suit = /obj/item/clothing/suit/hooded/syndicate
	head = null
	belt = /obj/item/storage/belt/military/syndicate
	suit_store = /obj/item/tank/internals/emergency_oxygen/double
