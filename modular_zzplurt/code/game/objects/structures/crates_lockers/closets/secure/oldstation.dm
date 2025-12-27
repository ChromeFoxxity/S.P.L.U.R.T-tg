/obj/structure/closet/secure_closet/oldstation
	req_access = list(ACCESS_AWAY_GENERAL)

/obj/structure/closet/secure_closet/oldstation/security
	name = "security officer's locker"
	icon_state = "sec"
	req_access = list(ACCESS_AWAY_SEC)

/obj/structure/closet/secure_closet/oldstation/security/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/security/redsec/oldstation(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/belt/security/redsec(src)

/obj/structure/closet/secure_closet/oldstation/bridge
	name = "bridge officer's locker"
	icon_state = "hop"
	req_access = list(ACCESS_AWAY_COMMAND)

/obj/structure/closet/secure_closet/oldstation/bridge/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/clothing/suit/jacket/capjacket(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/belt/sheath/sabre/cargo(src)

/obj/structure/closet/secure_closet/oldstation/captain
	name = "captain's locker"
	icon_state = "cap"
	req_access = list(ACCESS_AWAY_COMMAND, ACCESS_ARMORY)

/obj/structure/closet/secure_closet/oldstation/captain/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/wintercoat/captain(src)
	new /obj/item/clothing/suit/jacket/capjacket(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/belt/sheath/sabre/cargo(src)
