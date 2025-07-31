#define CLOAK_DODGE_CHANCE 20
/obj/item/clothing/suit/clockwork
	name = "bronze armor"
	desc = "A strong, bronze suit worn by the soldiers of the Ratvarian armies."
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_garb.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clock_cult/clockwork_garb_worn.dmi'
	icon_state = "clockwork_cuirass"
	armor_type = /datum/armor/suit_clockwork
	slowdown = 0.2
	resistance_flags = FIRE_PROOF | ACID_PROOF
	w_class = WEIGHT_CLASS_BULKY
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	allowed = list(
		/obj/item/clockwork,
		/obj/item/stack/tile/bronze,
		/obj/item/gun/ballistic/bow/clockwork,
	)
	///what is the value of our slowdown while empowered
	var/empowered_slowdown = 0
	///what armor type do we use while empowered
	var/datum/armor/empowered_armor = /datum/armor/suit_clockwork_empowered

/datum/armor/suit_clockwork
	melee = 25
	bullet = 30
	laser = 15
	energy = 30
	bomb = 80
	bio = 100
	fire = 100
	acid = 100

/datum/armor/suit_clockwork_empowered
	melee = 50
	bullet = 50
	laser = 40
	energy = 60
	bomb = 80
	bio = 100
	fire = 100
	acid = 100

/obj/item/clothing/suit/clockwork/speed
	name = "robes of divinity"
	desc = "A shiny suit, glowing with a vibrant energy. The wearer will be able to move quickly across battlefields, but will be able to withstand less damage before falling."
	icon_state = "clockwork_cuirass_speed"
	slowdown = -0.2
	armor_type = /datum/armor/clockwork_speed
	empowered_armor = /datum/armor/clockwork_speed_empowered
	empowered_slowdown = -0.6

/datum/armor/clockwork_speed
	melee = 20
	bullet = 0
	laser = 0
	energy = 0
	bomb = 60
	bio = 100
	fire = 100
	acid = 100

/datum/armor/clockwork_speed_empowered
	melee = 30
	bullet = 40
	laser = -20
	energy = -20
	bomb = 60
	bio = 100
	fire = 100
	acid = 100

/obj/item/clothing/suit/clockwork/cloak
	name = "shrouding cloak"
	desc = "A faltering cloak that bends light around it, distorting the user's appearance, making it hard to see them with the naked eye and be harder to hit. \
			However, it provides very little physical protection."
	icon_state = "clockwork_cloak"
	armor_type = /datum/armor/clockwork_cloak
	actions_types = list(/datum/action/item_action/toggle/clock)
	w_class = WEIGHT_CLASS_NORMAL
	empowered_armor = /datum/armor/clockwork_cloak
	empowered_slowdown = -0.1

/obj/item/clothing/glasses/clockwork/judicial_visor
	name = "judicial visor"
	desc = "A purple visor gilt with Ratvarian runes, allowing a user to see, unfettered by others. The cogs on the sides look pretty tight..."
	icon_state = "judicial_visor_0"
	base_icon_state = "judicial_visor"
	flash_protect = FLASH_PROTECTION_WELDER
	strip_delay = 10 SECONDS
	glass_colour_type = /datum/client_colour/glass_colour/purple
	actions_types = list(/datum/action/item_action/toggle/clock)
	clock_desc = "Grants large sight and informational benefits to servants while active."

/obj/item/clothing/head/helmet/clockwork
	name = "brass helmet"
	desc = "A strong, brass helmet worn by the soldiers of the Ratvarian armies. Includes an integrated light-dimmer for flash protection, \
			as well as occult-grade muffling for factory based environments."
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_garb.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clock_cult/clockwork_garb_worn.dmi'
	icon_state = "clockwork_helmet"
	armor_type = /datum/armor/helmet_clockwork
	resistance_flags = FIRE_PROOF | ACID_PROOF
	w_class = WEIGHT_CLASS_BULKY
	flash_protect = FLASH_PROTECTION_FLASH

/obj/item/clothing/shoes/clockwork
	name = "brass treads"
	desc = "A strong pair of brass boots worn by the soldiers of the Ratvarian armies."
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_garb.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clock_cult/clockwork_garb_worn.dmi'
	icon_state = "clockwork_treads"
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/gloves/clockwork
	name = "brass gauntlets"
	desc = "A strong pair of brass gloves worn by the soldiers of the Ratvarian armies."
	icon = 'modular_zzplurt/icons/obj/clock_cult/clockwork_garb.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clock_cult/clockwork_garb_worn.dmi'
	icon_state = "clockwork_gauntlets"
	siemens_coefficient = 0
	strip_delay = 8 SECONDS

	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor_type = /datum/armor/gloves_clockwork
