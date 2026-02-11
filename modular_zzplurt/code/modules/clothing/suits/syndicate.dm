////////////////////
//Unarmored suits//
///////////////////

/obj/item/clothing/suit/jacket/gorlex
	name = "foreman's jacket"
	desc = "A beige high-visibility jacket worn by the Foreman of the Gorlex Marauders."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "gm_foreman"

	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/jacket/gorlex/Initialize(mapload)
	. = ..()
	allowed += list(
		/obj/item/stamp,
		/obj/item/storage/bag/mail,
		/obj/item/universal_scanner,
		/obj/item/melee/baton/telescopic,
	)

/obj/item/clothing/suit/apron/surgical/gorlex
	name = "blood red smock"
	desc = "A blood-red surgical smock typically worn by field medics of the Gorlex Marauders. It hides red blood really well!"
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "gm_apron"

/obj/item/clothing/suit/hazardvest/gorlex
	name = "blood-red hazard vest"
	desc = "A blood-red high-visibility vest typically used in work zones by the Gorlex Marauders."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "gm_hazard"

/obj/item/clothing/suit/hooded/wintercoat/security/gorlex
	name = "Gorlex winter coat"
	desc = "A sleek beige winter coat used by the Gorlex Marauders, the zipper tab proudly displays the official emblem of the GM."
	icon_state = "coatgm"
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	hoodtype = /obj/item/clothing/head/hooded/winterhood/security/gorlex

/obj/item/clothing/head/hooded/winterhood/security/gorlex
	icon_state = "hood_gm"
	icon = 'modular_zzplurt/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hats.dmi'

//////////////////
//Armored suits//
/////////////////

/obj/item/clothing/suit/armor/gorlex
	name = "Gorlex armor vest"
	desc = "A slim Type I armored vest, utilized by the Gorlex Marauders that provides decent protection against most types of damage."
	icon_state = "gm_vest"
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	armor = list("melee" = 35, "bullet" = 40, "laser" = 35, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10) // 5. additional. bullet armor.

/obj/item/clothing/suit/armor/gorlex/lieutenant
	name = "\improper Gorlex overcoat"
	desc = "An armored overcoat worn by the lieutenants of the Gorlex Marauders."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	icon_state = "gm_lieutenant"
	blood_overlay_type = "coat"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10)

/obj/item/clothing/suit/armor/gorlex/captain
	name = "\improper Gorlex greatcoat"
	desc = "An armored coat worn by captains the Gorlex Marauders."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	icon_state = "gm_captain"
	blood_overlay_type = "coat"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10)

///////////////
//Spacesuits//
//////////////

/obj/item/clothing/head/helmet/space/syndicate/gorlex/armored

	name = "armored biege-red space helmet"
	icon_state = "syndicate-helm-gm"
	desc = "An advanced, lightweight space helmet made of durable composites. Almost matches integrated hardsuit helmets for protection. Almost."
	armor = list("melee" = 30, "bullet" = 35, "laser" = 30, "energy" = 40, "bomb" = 20, "bio" = 100, "rad" = 30, "fire" = 75, "acid" = 75, "wound" = 15)

/obj/item/clothing/suit/space/syndicate/gorlex/armored

	name = "armored beige-red space suit"
	icon_state = "syndicate-gm-armored"
	desc = "A space suit made of high-grade ballistic fabric with integrated armor plates. More compact than a normal space suit while almost matching powered hardsuits for protection. Almost."
	w_class = WEIGHT_CLASS_NORMAL
	slowdown = 0.5
	armor = list("melee" = 40, "bullet" = 60, "laser" = 30, "energy" = 40, "bomb" = 20, "bio" = 100, "rad" = 30, "fire" = 75, "acid" = 75, "wound" = 15)
	helmet_type = /obj/item/clothing/head/helmet/space/syndicate/gorlex/armored

/obj/item/clothing/head/helmet/space/syndicate/gorlex

	name = "surplus biege-red space helmet"
	icon_state = "syndicate-helm-gm"
	icon = 'modular_zzplurt/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hats.dmi'
	desc = "A space helmet made of durable composites, basically the minimum for vaccum survival."

/obj/item/clothing/suit/space/syndicate/gorlex

	name = "surplus beige-red space suit"
	icon_state = "syndicate-gm"
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	desc = "A space suit made of durable fabric. This is one of the versions that isn't armored, all it's really good for is vaccum survival."
	armor = /datum/armor/suit_space
	helmet_type = /obj/item/clothing/head/helmet/space/syndicate/gorlex
