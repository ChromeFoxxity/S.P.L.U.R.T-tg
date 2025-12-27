/datum/crafting_recipe/retro_gun
	name = "Type 1 laser gun upgrade"
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	result = /obj/item/gun/energy/laser/retro/old/upgraded
	reqs = list(/obj/item/gun/energy/laser/retro/old = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stock_parts/power_store/cell/super = 1,
				/obj/item/weaponcrafting/gunkit/retro = 1)
	time = 20 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/retro_gun/New()
	..()
	blacklist += subtypesof(/obj/item/gun/energy/laser/retro/old)
