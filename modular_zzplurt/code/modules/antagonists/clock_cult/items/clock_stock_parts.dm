//power cell that gets its power from GLOB.clock_power
/obj/item/stock_parts/power_store/cell/bluespace/clock
	name = "brass power cell"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clockcell"

/obj/item/stock_parts/power_store/cell/bluespace/clock/Initialize(mapload, override_maxcharge)
	. = ..()
	AddElement(/datum/element/empprotection, EMP_PROTECT_SELF) //no EMP
	UnregisterSignal(src, COMSIG_ITEM_MAGICALLY_CHARGED) //just to be safe
	START_PROCESSING(SSfastprocess, src) //janky, but the only way I can think of to get this to work is with a refactor to clock power, which im not doing for the visuals of one thing

/obj/item/stock_parts/power_store/cell/bluespace/clock/Destroy(force)
	STOP_PROCESSING(SSfastprocess, src)
	return ..()

//technically this means these cant be rigged with plasma
/obj/item/stock_parts/power_store/cell/bluespace/clock/use(used, force)
	if(istype(loc, /obj/machinery/power/apc) || GLOB.clock_power < used)
		return FALSE
	SSblackbox.record_feedback("tally", "cell_used", 1, type)
	GLOB.clock_power = max(GLOB.clock_power - used, 0)
	return TRUE

/obj/item/stock_parts/power_store/cell/bluespace/clock/percent()
	return 100 * GLOB.clock_power / GLOB.max_clock_power

/obj/item/stock_parts/power_store/cell/bluespace/clock/give(amount) //no
	return FALSE

//these are just for flavor
/obj/item/stock_parts/scanning_module/triphasic/clock
	name = "brass scanning module"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clock_scan_module"

/datum/stock_part/scanning_module/clock
	tier = 4
	physical_object_type = /obj/item/stock_parts/scanning_module/triphasic/clock

/obj/item/stock_parts/capacitor/quadratic/clock
	name = "brass capacitor"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clock_capacitor"

/datum/stock_part/capacitor/clock
	tier = 4
	physical_object_type = /obj/item/stock_parts/capacitor/quadratic/clock

/obj/item/stock_parts/matter_bin/bluespace/clock
	name = "brass matter bin"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clock_matter_bin"

/datum/stock_part/matter_bin/clock
	tier = 4
	physical_object_type = /obj/item/stock_parts/matter_bin/bluespace/clock

/obj/item/stock_parts/servo/femto/clock
	name = "brass-servo"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clock_servo"

/datum/stock_part/servo/clock
	tier = 4
	physical_object_type = /obj/item/stock_parts/servo/femto/clock

/obj/item/stock_parts/micro_laser/quadultra/clock
	name = "brass micro-laser"
	icon = 'modular_zzplurt/icons/obj/machines/clock_stock_parts.dmi'
	icon_state = "clock_micro_laser"

/datum/stock_part/micro_laser/clock
	tier = 4
	physical_object_type = /obj/item/stock_parts/micro_laser/quadultra/clock
