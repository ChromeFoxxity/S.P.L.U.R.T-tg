/obj/effect/mob_spawn/corpse/human/deckhand
	name = "Deckhand"
	outfit = /datum/outfit/deckhand
	icon_state = "corpsegreytider"

/datum/outfit/deckhand
	name = "Deckhand"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/deckhand
	uniform = /obj/item/clothing/under/rank/nanotrasen
	belt = /obj/item/modular_computer/pda/assistant
	ears = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/sneakers/black
	back = /obj/item/storage/backpack/satchel
	box = /obj/item/storage/box/survival

/datum/id_trim/away/deckhand
	assignment = "Deckhand"
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
	back = /obj/item/storage/backpack/satchel
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

/obj/effect/mob_spawn/corpse/human/nsl_salvager
	name = "N+S Salvage Technician"
	outfit = /datum/outfit/salvage_technician
	icon_state = "corpsecargotech"

/datum/outfit/salvage_technician
	name = "N+S Salvage Technician"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/salvage_technician
	uniform = /obj/item/clothing/under/rank/nanotrasen/supply/miner
	gloves = /obj/item/clothing/gloves/color/black
	suit = /obj/item/clothing/suit/hazardvest/nanotrasen
	head = /obj/item/clothing/head/utility/hardhat/nanotrasen
	belt = /obj/item/modular_computer/pda/shaftminer
	ears = /obj/item/radio/headset/headset_cargo/mining
	shoes = /obj/item/clothing/shoes/workboots/mining
	l_pocket = /obj/item/knife/combat/survival
	back = /obj/item/storage/backpack/satchel/explorer
	box = /obj/item/storage/box/survival/mining
	backpack_contents = list(
		/obj/item/mining_voucher = 1,
		/obj/item/reagent_containers/hypospray/medipen/survival = 1,
	)

/datum/id_trim/away/salvage_technician
	assignment = "N+S Salvage Technician"
	trim_state = "trim_shaftminer"
	department_color = COLOR_CARGO_BROWN
	subdepartment_color = COLOR_TAN_ORANGE
	sechud_icon_state = SECHUD_SHAFT_MINER
	access = list(
		ACCESS_CARGO,
		ACCESS_MINING,
		ACCESS_MINING_STATION,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MINING,
		ACCESS_MINERAL_STOREROOM,
		)

/obj/effect/mob_spawn/corpse/human/nsl_salvager/icemoon
	name = "N+S Winter Salvage Technician"
	outfit = /datum/outfit/salvage_technician/winter
	icon_state = "corpsecargotech"

/datum/outfit/salvage_technician/winter
	name = "N+S Salvage Technician - Icemoon"

	suit = /obj/item/clothing/suit/hooded/wintercoat/miner
	head = null
	mask = /obj/item/clothing/mask/gas/explorer
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots

/obj/effect/mob_spawn/corpse/human/nsl_quartermaster
	name = "N+S Supply Director"
	outfit = /datum/outfit/job/supply_director
	icon_state = "corpsecargotech"

/datum/outfit/job/supply_director
	name = "N+S Supply Director"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/away/supply_director
	uniform = /obj/item/clothing/under/rank/nanotrasen/supply/qm
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/soft
	belt = /obj/item/modular_computer/pda/heads/quartermaster
	ears = /obj/item/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	l_pocket = /obj/item/clipboard
	back = /obj/item/storage/backpack/satchel/leather
	box = /obj/item/storage/box/survival
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
	)

/obj/effect/mob_spawn/corpse/human/nsl_quartermaster/icemoon
	name = "N+S Winter Supply Director"
	outfit = /datum/outfit/job/supply_director/winter
	icon_state = "corpsecargotech"

/datum/outfit/job/supply_director/winter
	name = "N+S Supply Director - Icemoon"

	suit = /obj/item/clothing/suit/hooded/wintercoat/cargo/qm
	head = null
	mask = /obj/item/clothing/mask/gas/alt
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva

/datum/id_trim/away/supply_director
	assignment = "N+S Supply Director"
	trim_state = "trim_cargotechnician"
	department_color = COLOR_COMMAND_BLUE
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
