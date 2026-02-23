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
	icon_state = "cap"
	req_access = list(ACCESS_AWAY_COMMAND, ACCESS_ARMORY)

/obj/structure/closet/secure_closet/oldstation/captain/PopulateContents()
	..()
	new /obj/item/clothing/under/rank/captain(src)
	new /obj/item/clothing/under/rank/captain/skirt(src)
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/clothing/suit/jacket/capjacket(src)
	new /obj/item/clothing/head/hats/caphat(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/backpack/satchel/leather(src)
