/obj/item/clothing/gloves/latexsleeves
	name = "latex sleeves"
	desc = "A pair of shiny latex sleeves that covers ones arms."
	icon_state = "latex"
	icon = 'modular_zzplurt/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/gloves.dmi'

/obj/item/clothing/gloves/clussy_gloves
	name = "Clussy gloves"
	desc = "Why honking horns when you can honk someone's balls?"
	icon = 'modular_zzplurt/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hands.dmi'
	icon_state = "clussy_gloves"

/obj/item/clothing/gloves/evening/black
	name = "Midnight gloves"
	desc = "Thin, pretty gloves intended for use in sexy feminine attire. A tag on the hem claims they pair great with black stockings."
	icon = 'modular_zzplurt/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hands.dmi'
	icon_state = "eveningblack"

/obj/item/clothing/gloves/polymaid
	name = "polychromic maid gloves"
	desc = "Colourable maid gloves!"
	icon = 'icons/map_icons/clothing/_clothing.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hands.dmi'
	icon_state = "/obj/item/clothing/gloves/polymaid"
	post_init_icon_state = "maid_arms"
	flags_1 = IS_PLAYER_COLORABLE_1
	greyscale_config = /datum/greyscale_config/maid_arms
	greyscale_config_worn = /datum/greyscale_config/maid_arms/worn
	greyscale_colors = "#333333#FFFFFF"

/datum/greyscale_config/maid_arms
	name = "Maid Arms"
	icon_file = 'modular_zzplurt/icons/obj/clothing/gloves.dmi'
	json_config = 'modular_zzplurt/code/datums/greyscale/json_configs/maid_arms.json'

/datum/greyscale_config/maid_arms/worn
	name = "Maid Arms (Worn)"
	icon_file = 'modular_zzplurt/icons/mob/clothing/hands.dmi'
	json_config = 'modular_zzplurt/code/datums/greyscale/json_configs/maid_arms.json'

/obj/item/clothing/gloves/captain/old
	name = "old captain's gloves"
	desc = "Regal blue gloves, with a nice gold trim.. These pair seem to lack most of what modern captain gloves would have.. Still swanky."
	armor_type = null
	siemens_coefficient = 0.5
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	clothing_traits = null
