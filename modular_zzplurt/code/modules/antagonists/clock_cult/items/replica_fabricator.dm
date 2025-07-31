#define BRASS_POWER_COST 10
#define REGULAR_POWER_COST (BRASS_POWER_COST / 2)
//how much to add to the creation_delay while the cult lacks a charged anchoring crystal
#define SLOWDOWN_FROM_NO_ANCHOR_CRYSTAL 0.2

/obj/item/clockwork/replica_fabricator
	name = "replica fabricator"
	desc = "A strange, brass device with many twisting cogs and vents."
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_objects.dmi'
	lefthand_file = 'modular_zzplurt/icons/mob/clock_cult/clockwork_lefthand.dmi'
	righthand_file = 'modular_zzplurt/icons/mob/clock_cult/clockwork_righthand.dmi'
	icon_state = "replica_fabricator"

/obj/item/clockwork/replica_fabricator/examine(mob/user)
	. = ..()
	if(IS_CLOCK(user))
		. += span_brass("Current power: [display_power(GLOB.clock_power)]")
		. += span_brass("Use on brass to convert it into power.")
		. += span_brass("Use on other materials to convert them into power, but less efficiently.")
		. += span_brass("<b>Use</b> in-hand to select what to fabricate.")
		. += span_brass("<b>Right Click</b> in-hand to fabricate bronze sheets.")
		. += span_brass("Walls and windows will be built slower while on reebe.")

/obj/item/clockwork/replica_fabricator/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if(!IS_CLOCK(user))
		return

	attempt_convert_materials(attacking_item, user)


/obj/item/clockwork/replica_fabricator/attack_self_secondary(mob/user, modifiers)
	. = ..()
	if(!IS_CLOCK(user))
		return

	if(GLOB.clock_power < BRASS_POWER_COST)
		to_chat(user, span_clockyellow("You need at least [BRASS_POWER_COST]W of power to fabricate bronze."))
		return

	var/sheets = tgui_input_number(user, "How many sheets do you want to fabricate?", "Sheet Fabrication", 0, round(GLOB.clock_power / BRASS_POWER_COST), 0)
	if(!sheets)
		return

	GLOB.clock_power -= sheets * BRASS_POWER_COST

	var/obj/item/stack/sheet/bronze/sheet_stack = new(null, sheets)
	user.put_in_hands(sheet_stack)
	playsound(src, 'sound/machines/click.ogg', 50, 1)
	to_chat(user, span_clockyellow("You fabricate [sheets] bronze."))


/obj/item/clockwork/replica_fabricator/attack_self(mob/user, modifiers)
	. = ..()
	var/choice = show_radial_menu(user, src, crafting_possibilities, radius = 36, custom_check = PROC_REF(check_menu), require_near = TRUE)

	if(!choice)
		return

	selected_output = fabrication_datums[choice]

#undef BRASS_POWER_COST
#undef REGULAR_POWER_COST
#undef SLOWDOWN_FROM_NO_ANCHOR_CRYSTAL
