/obj/item/circuitboard/computer/cargo/express/nslogistics
	name = "outpost communications console"
	build_path = /obj/machinery/computer/cargo/express/nslogistics

/obj/machinery/computer/cargo/express/nslogistics
	name = "outpost communications console"
	desc = "This console allows the user to communicate with a nearby outpost to purchase supplies. Purchases will be delivered to your hangar's delivery zone."
	circuit = /obj/item/circuitboard/computer/cargo/express/nslogistics
	cargo_account = ACCOUNT_NSL
	var/allowed_categories = list(COMPANY_NAME_VITEZSTVI_AMMO,
	COMPANY_NAME_ALLSTAR_ENERGY,
	COMPANY_NAME_MICRON_CONTROL_SYSTEMS,
	COMPANY_NAME_SOL_DEFENSE_DEFENSE,
	COMPANY_NAME_FRONTIER_EQUIPMENT,
	COMPANY_NAME_KAHRAMAN_INDUSTRIES,
	COMPANY_NAME_DONK_CO,
	COMPANY_NAME_DEFOREST_MEDICAL,
	COMPANY_NAME_NRI_SURPLUS,
	COMPANY_NAME_BLACKSTEEL_FOUNDATION,
	)
	pod_type = /obj/structure/closet/supplypod/bluespacepod

/obj/machinery/computer/cargo/express/nslogistics/packin_up()
	. = ..()

	if(!meme_pack_data["Company Imports"])
		meme_pack_data["Company Imports"] = list(
			"name" = "Company Imports",
			"packs" = list()
		)

	for(var/armament_category in SSarmaments.entries)
		for(var/subcategory in SSarmaments.entries[armament_category][CATEGORY_ENTRY])
			if(armament_category in allowed_categories)
				for(var/datum/armament_entry/armament_entry as anything in SSarmaments.entries[armament_category][CATEGORY_ENTRY][subcategory])
					meme_pack_data["Company Imports"]["packs"] += list(list(
						"name" = "[armament_category]: [armament_entry.name]",
						"cost" = armament_entry.cost,
						"id" = REF(armament_entry),
						"description" = armament_entry.description,
					))

/obj/machinery/computer/cargo/express/nslogistics/ui_act(action, params, datum/tgui/ui)
	if(action == "add")
		if (!beacon || !using_beacon)
			say("Error! Destination is not whitelisted, aborting.")
			return
		var/id = params["id"]
		id = text2path(id) || id
		var/datum/supply_pack/is_supply_pack = SSshuttle.supply_packs[id]
		if(!is_supply_pack || !istype(is_supply_pack))//if we're ordering a company import pack, add a temp pack to the global supply packs list, and remove it
			var/datum/armament_entry/armament_order = locate(id)
			params["id"] = length(SSshuttle.supply_packs) + 1
			var/datum/supply_pack/armament/temp_pack = new
			temp_pack.name = initial(armament_order.item_type.name)
			temp_pack.cost = armament_order.cost
			temp_pack.contains = list(armament_order.item_type)
			SSshuttle.supply_packs += temp_pack
			. = ..()
			SSshuttle.supply_packs -= temp_pack
			return .
	return ..()
