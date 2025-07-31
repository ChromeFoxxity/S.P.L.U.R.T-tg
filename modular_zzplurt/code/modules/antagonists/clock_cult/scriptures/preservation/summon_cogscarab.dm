/datum/scripture/cogscarab
	name = "Summon Cogscarab"
	desc = "Summon a Cogscarab shell, which will be possessed by fallen Rat'Varian soldiers. Takes longer the more cogscarabs are alive. Requires 30 vitality."
	tip = "Use Cogscarabs to fortify Reebe while the human servants convert and sabotage the crew."
	button_icon_state = "Cogscarab"
	power_cost = 500
	vitality_cost = 30
	invocation_time = 12 SECONDS
	invocation_text = list("My fallen brothers,", "Now is the time we rise", "Protect our lord", "Achieve greatness!")
	category = SPELLTYPE_PRESERVATION
	cogs_required = 5
	invokers_required = 2

/datum/scripture/cogscarab/begin_invoke(mob/living/invoking_mob, obj/item/clockwork/clockwork_slab/slab, bypass_unlock_checks)
	invocation_time = 12 SECONDS + (6 SECONDS * GLOB.cogscarabs.len)
	. = ..()

/datum/scripture/cogscarab/invoke_success()
	new /obj/effect/mob_spawn/ghost_role/drone/cogscarab(get_turf(invoker))
