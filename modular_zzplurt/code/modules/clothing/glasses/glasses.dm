/obj/item/clothing/glasses/contact
	name = "contact lenses"
	desc = "Prescription contact lenses, a miracle of science."
	icon = 'modular_zzplurt/icons/obj/clothing/glasses.dmi'
	worn_icon = 'modular_zzplurt/icons/obj/clothing/glasses.dmi'
	worn_icon_state = "nothing"
	icon_state = "contact_lenses"
	clothing_traits = list(TRAIT_NEARSIGHTED_CORRECTED)

/obj/item/clothing/glasses/hud/security/sunglasses/gorlex
	name = "Gorlex modified mesons"
	desc = "A modified version of widely-used optical meson scanners, with a flash-proof tint and integrated security HUD. Unfortunately, the opaque visor disables the meson functionality."
	icon_state = "gm_goggles"
	icon = 'modular_zzplurt/icons/obj/clothing/glasses.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/eyes.dmi'
	glass_colour_type = /datum/client_colour/glass_colour/green
	flags_cover = GLASSESCOVERSEYES | PEPPERPROOF
