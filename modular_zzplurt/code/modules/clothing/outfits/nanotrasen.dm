/obj/effect/mob_spawn/corpse/human/nsl_deckhand
	name = "N+S Deckhand"
	outfit = /datum/outfit/deckhand
	icon_state = "corpsegreytider"

/datum/outfit/deckhand
	name = "N+S Deckhand"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/deckhand
	uniform = /obj/item/clothing/under/rank/nanotrasen
	belt = /obj/item/modular_computer/pda/assistant
	ears = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/sneakers/black
	box = /obj/item/storage/box/survival

/datum/id_trim/away/deckhand
	assignment = "N+S Deckhand"
	trim_state = "trim_assistant"
	department_color = COLOR_ASSISTANT_GRAY
	subdepartment_color = COLOR_TAN_ORANGE
	sechud_icon_state = SECHUD_ASSISTANT

/obj/effect/mob_spawn/corpse/human/nsl_cargotech
	name = "N+S Cargo Handler"
	outfit = /datum/outfit/cargo_handler
	icon_state = "corpsecargotech"

/datum/outfit/cargo_handler
	name = "N+S Cargo Handler"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/cargo_handler
	uniform = /obj/item/clothing/under/rank/nanotrasen/supply
	head = /obj/item/clothing/head/soft
	belt = /obj/item/modular_computer/pda/cargo
	ears = /obj/item/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/sneakers/black
	l_pocket = /obj/item/universal_scanner
	box = /obj/item/storage/box/survival
	backpack_contents = list(
		/obj/item/boxcutter = 1,
	)

/datum/id_trim/away/cargo_handler
	assignment = "N+S Cargo Handler"
	trim_state = "trim_cargotechnician"
	department_color = COLOR_CARGO_BROWN
	subdepartment_color = COLOR_TAN_ORANGE
	sechud_icon_state = SECHUD_CARGO_TECHNICIAN
	access = list(
		ACCESS_CARGO,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MINING,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SHIPPING,
		)

/obj/effect/mob_spawn/corpse/human/nsl_quartermaster
	name = "N+S Supply Director"
	outfit = /datum/outfit/job/supply_director
	icon_state = "corpsecargotech"

/datum/outfit/job/supply_director
	name = "N+S Supply Director"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/supply_director
	uniform = /obj/item/clothing/under/rank/nanotrasen/supply/qm
	head = /obj/item/clothing/head/soft
	belt = /obj/item/modular_computer/pda/heads/quartermaster
	ears = /obj/item/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	l_pocket = /obj/item/clipboard
	box = /obj/item/storage/box/survival
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
	)

/datum/id_trim/away/supply_director
	assignment = "N+S Supply Director"
	trim_state = "trim_quartermaster"
	department_color = COLOR_CARGO_BROWN
	subdepartment_color = COLOR_TAN_ORANGE
	sechud_icon_state = SECHUD_QUARTERMASTER
	big_pointer = TRUE
	access = list(
		ACCESS_CARGO,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MINING,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SHIPPING,
		)
