//////////
//Neck//
/////////

/obj/item/clothing/neck/shemagh/gorlex
	name = "shemagh"
	desc = "An oversized shemagh, in a tacticool blood-red for use in the Gorlex Marauders."
	icon_state = "gm_shemagh"
	icon = 'modular_zzplurt/icons/obj/clothing/neck.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/neck.dmi'

/obj/item/clothing/neck/shemagh/gorlex/AltClick(mob/user)
	. = ..()
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		if((C.get_item_by_slot(ITEM_SLOT_NECK) == src))
			to_chat(user, span_warning("You can't tie [src] while wearing it!"))
			return
		if(user.is_holding(src))
			var/obj/item/clothing/neck/shemagh/gorlex/nk = new(src)
			nk.name = "[name] mask"
			nk.icon_state = "[icon_state]_over"
			nk.source_shemagh_type = src.type
			var/current_hand_index = user.get_held_index_of_item(src)
			user.transferItemToLoc(src, null)
			user.put_in_hand(nk, current_hand_index)
			to_chat(user, span_notice("You tie [src] up like a facemask."))
			qdel(src)
		else
			to_chat(user, span_warning("You must be holding [src] in order to tie it!"))
