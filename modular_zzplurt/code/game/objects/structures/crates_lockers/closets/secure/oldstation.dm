/obj/structure/closet/secure_closet/oldstation
	req_access = list(ACCESS_AWAY_GENERAL)

/obj/structure/closet/secure_closet/oldstation/security
	name = "security officer's locker"
	icon_state = "sec"
	req_access = list(ACCESS_AWAY_SEC)

/obj/structure/closet/secure_closet/oldstation/security/PopulateContents()
	..()
	new /obj/item/clothing/under/rank/security/officer/redsec(src)
	new /obj/item/clothing/under/rank/security/officer/skirt/redsec(src)
	new /obj/item/clothing/suit/hooded/wintercoat/security/redsec/oldstation(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/belt/security/redsec(src)
	new /obj/item/storage/backpack/satchel/sec/redsec(src)
	new /obj/item/storage/backpack/duffelbag/sec/redsec(src)
	new /obj/item/storage/backpack/messenger/sec/redsec(src)

/obj/structure/closet/secure_closet/oldstation/captain
	name = "captain's locker"
	icon = 'modular_skyrat/master_files/icons/obj/closet.dmi'
	icon_state = "cc"
	req_access = list(ACCESS_AWAY_COMMAND)

/obj/structure/closet/secure_closet/oldstation/captain/PopulateContents()
	..()
	new /obj/item/clothing/under/rank/centcom/commander/old(src)
	new /obj/item/clothing/under/rank/centcom/centcom_skirt/old(src)
	new /obj/item/clothing/suit/hooded/wintercoat/centcom/old(src)
	new /obj/item/clothing/head/hats/centhat/old(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/backpack/satchel/leather(src)
