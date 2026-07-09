/obj/item/pen/attack(mob/living/M, mob/living/user, params)
	. = ..()

	if(!. || !istype(M) || !istype(user) || force || user.combat_mode)
		return

	INVOKE_ASYNC(src, PROC_REF(write_on_bodypart), M, user, params) // Necessary because signals??????

/obj/item/pen/proc/write_on_bodypart(mob/living/M, mob/living/user, params)
	var/obj/item/bodypart/selected_bodypart = null

	var/list/obj/item/organ/genital/possible_genitals = list()
	for(var/genital_slot in GLOB.possible_genitals)
		var/obj/item/organ/genital/ORG = M.get_organ_slot(genital_slot)
		if(ORG?.bodypart_overlay.sprite_datum.is_hidden(M))
			continue
		possible_genitals += ORG

	if(length(possible_genitals))
		selected_bodypart = tgui_input_list(user, "Select a genital to write on (or none to write on [user == M ? "your" : "[M]'s"] [user.zone_selected])", "Bodywriting", possible_genitals)

	if(!selected_bodypart)
		var/obj/item/bodypart/BP = M.get_bodypart(user.zone_selected)
		if(!BP)
			return
		selected_bodypart = M.is_body_part_exposed(BP.body_part) ? BP : null

	if(!selected_bodypart)
		return

	var/writing = tgui_input_text(user, "Add writing, doesn't replace current text", "Writing on [selected_bodypart.name]")
	if(!writing)
		return
	to_chat(user, span_notice("You write [writing] on [user == M ? "your" : "[M]'s"] [selected_bodypart.name]."))
	selected_bodypart.written_text += writing

/obj/item/pen/fountain/syndicate
	name = "suspicious fountain pen"
	desc = "It's a suspiciously blood red fountain pen. The nib is quite sharp."
	icon = 'modular_zzplurt/icons/obj/service/bureaucracy.dmi'
	icon_state = "pen-fountain-syndie"
	force = 5
	throwforce = 5
	throw_speed = 4
	sharpness = SHARP_EDGED
	resistance_flags = FIRE_PROOF
	embed_type = /datum/embedding/pen/syndicate

/datum/embedding/pen/syndicate
	embed_chance = 50

/obj/item/pen/fountain/syndicate/gold
	name = "suspicious gold fountain pen"
	desc = "It's a suspiciously expensive blood red fountain pen made with pure gold, and a very smooth metal. The nib is extremely paper-sharp, you feel \
		like it'd be terrible to write with, but oddly enough it writes really smoothly."
	icon = 'modular_zzplurt/icons/obj/service/bureaucracy.dmi'
	icon_state = "pen-fountain-syndie_gold"
	force = 10
	throwforce = 10
	throw_speed = 6
	custom_materials = list(/datum/material/gold = SMALL_MATERIAL_AMOUNT*7.5)
	embed_type = /datum/embedding/pen/syndicate_sharper

/obj/item/pen/fountain/syndicate/silver
	name = "suspicious silver fountain pen"
	desc = "It's a suspiciously expensive blood red fountain pen made with pure silver, and a very smooth metal. The nib is pretty paper-sharp, you feel \
		like it'd be terrible to write with, but oddly enough it writes really smoothly."
	icon = 'modular_zzplurt/icons/obj/service/bureaucracy.dmi'
	icon_state = "pen-fountain-syndie_silver"
	force = 8
	throwforce = 8
	throw_speed = 5
	custom_materials = list(/datum/material/silver = SMALL_MATERIAL_AMOUNT*7.5)
	embed_type = /datum/embedding/pen/syndicate_sharper

/datum/embedding/pen/syndicate_sharper
	embed_chance = 75
