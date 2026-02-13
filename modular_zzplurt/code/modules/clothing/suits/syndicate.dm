/obj/item/clothing/suit/hooded/syndicate
	name = "blood-red hardsuit"
	desc = "A vintage hardsuit designed for special combat operations. Produced by the Gorlex Marauders, but was later replaced by MODsuits, it still feels incredibly clunky."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "syndicate_hardsuit"
	armor_type = /datum/armor/hardsuit_syndicate
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDESEXTOY|HIDETAIL|HIDETAUR
	slowdown = 0.5
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	strip_delay = 8 SECONDS
	equip_delay_other = 8 SECONDS
	hoodtype = /obj/item/clothing/head/hooded/syndicate
	resistance_flags = FIRE_PROOF|ACID_PROOF
	transparent_protection = HIDEJUMPSUIT
	allowed = list(
		/obj/item/gun,
		/obj/item/melee/baton,
		/obj/item/melee/energy/sword/saber,
		/obj/item/restraints/handcuffs,
		/obj/item/tank/internals,
		/obj/item/flashlight,
		/obj/item/tank/jetpack/captain,
	)

/obj/item/clothing/head/hooded/syndicate
	name = "blood-red hardsuit helmet"
	desc = "A vintage hardsuit helmet designed for special combat operations. Produced by the Gorlex Marauders, but was later replaced by MODsuits, it still feels incredibly clunky."
	icon = 'modular_zzplurt/icons/mob/clothing/hats.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/hats.dmi'
	icon_state = "syndicate_hardsuit_helm"
	armor_type = /datum/armor/hardsuit_syndicate
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL | SNUG_FIT | STACKABLE_HELMET_EXEMPT | HEADINTERNALS
	body_parts_covered = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	flash_protect = FLASH_PROTECTION_WELDER
	strip_delay = 5 SECONDS
	equip_delay_other = 5 SECONDS
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	resistance_flags = FIRE_PROOF|ACID_PROOF
	sound_vary = TRUE
	equip_sound = 'sound/vehicles/mecha/mechmove03.ogg'
	pickup_sound = 'sound/items/handling/helmet/helmet_pickup1.ogg'
	drop_sound = 'sound/items/handling/helmet/helmet_drop1.ogg'

/datum/armor/hardsuit_syndicate
	melee = 40
	bullet = 50
	laser = 30
	energy = 40
	bomb = 35
	bio = 100
	fire = 90
	acid = 90
	wound = 30

/obj/item/clothing/suit/hooded/syndicate/old
	name = "worn blood-red hardsuit"
	desc = "A vintage hardsuit that was once designed for special combat operations. So severely damaged, it is no longer spaceproof, and the aged plating makes it heavier. Produced by the Gorlex Marauders, but was later replaced by MODsuits, it still feels incredibly clunky."
	icon_state = "syndicate_hardsuit_damaged"
	armor_type = /datum/armor/hardsuit_syndicate_damaged
	clothing_flags = THICKMATERIAL | SNUG_FIT | STACKABLE_HELMET_EXEMPT
	slowdown = 1
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	flags_inv = null
	hoodtype = /obj/item/clothing/head/hooded/syndicate/old
	transparent_protection = null

/datum/armor/hardsuit_syndicate_damaged
	melee = 35
	bullet = 40
	laser = 20
	energy = 40
	bomb = 10
	bio = 80
	fire = 75
	acid = 75
	wound = 20

/obj/item/clothing/head/hooded/syndicate/old
	name = "worn blood-red hardsuit helmet"
	desc = "A vintage hardsuit helmet that was once designed for special combat operations. So severely damaged, it is no longer spaceproof, and the aged plating makes it heavier. Produced by the Gorlex Marauders, but was later replaced by MODsuits, it still feels incredibly clunky."
	icon_state = "syndicate_hardsuit_damaged_helm"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT

/obj/item/clothing/suit/armor/vest/alt/syndie
	name = "armored suspicious vest"
	desc = "A Type I armored vest that provides decent protection against most types of damage, this one has a blood red stripe on it."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "armor_syndi"

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate/officer
	name = "officer's overcoat"
	desc = "A hefty padded overcoat in a suspicious dusty dark red color, it's dawned with a belt, and silver buttons with the Syndicate logo engraved on them."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "syndi_officer"

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate/officer/senior
	name = "senior officer's greatcoat"
	desc = "A hefty padded greatcoat in a suspicious dusty dark red color, it's dawned with a Sam Browne belt with a golden belt buckle, golden epaulettes and aiguillettes, topped off with golden buttons with the Syndicate logo engraved on them, how regal."
	icon = 'modular_zzplurt/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzplurt/icons/mob/clothing/suit.dmi'
	icon_state = "syndi_captain"
