/obj/item/gun/energy/laser/retro
	name ="\improper Type 1 laser gun"
	desc = "The NT Type 1 Heat Delivery System, developed by Nanotrasen. A vintage laser gun that was one of the first mass-produced laser guns, at first \
		it was manufactured with small cells that made it unreliable in the face of combat or for security work, but now after Nanotrasen's efforts, the gun \
		now has a much better capacity charge on it, to make it more reliable on the field. However still has the downside of having to constantly recharge, \
		which some Nanotrasen security officers still relied on ballistic weapons despite this being in the armory. However, due to it's age nowadays it is \
		no longer used by Nanotrasen's private security or military forces. Nevertheless, it is still quite deadly and easy to maintain, making it a favorite \
		amongst pirates and other outlaws."
	icon = 'modular_zzplurt/icons/obj/weapons/guns/energy.dmi'

/obj/item/gun/energy/laser/retro/old
	desc = "The NT Type 1 Heat Delivery System, developed by Nanotrasen. One of their recent discoveries in technological advancements, this was one of the \
		first ever models manufactured, which explains the old, small cell in it that makes it nearly useless, it was security's least favorite weapon on \
		vintage stations alike, as they usually stayed with trusty police equipment like tasers and ballistic guns, but when ammo was low, they had no choice. \
		Now it's been abandoned for so long that it's got a ruined paint job, and dusty from years of neglect. It looks pretty sad now.."
	icon_state = "retro_old"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun/old)

/obj/item/gun/energy/laser/retro/old/upgraded
	desc = "The NT Type 1 Heat Delivery System, developed by Nanotrasen. One of their recent discoveries in technological advancements, this was one of the \
		first ever models manufactured, which explains the old, small cell in it that makes it nearly useless, it was security's least favorite weapon on \
		vintage stations alike, as they usually stayed with trusty police equipment like tasers and ballistic guns, this one has had a cell upgrade, making \
		it much more reliable! It was a design flaw that Nanotrasen was committed to fix as soon as possible for it's Type 1, but it was never mass-produced, \
		and it's clean as well! Just look at that shine, just like it's brand new."
	icon_state = "retro"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun)

/obj/item/gun/energy/e_gun/old
	name = "prototype energy gun"
	desc = "The K14-Multiphase Energy Gun, it was a recent prototype that has been manufactured, one of the first ever unique laser rifle that has multifaceted \
		energy lens allowing the gun to alter the form of projectile it fires on command, it was never fully flushed out by scientists. But the blueprints \
		were already sent out to Nanotrasen, who knows how far they've gone from this. It was unfortunately only halfway built, it hadn't had the chance to be \
		mass-produced like earlier models, considering it's still the bare bones of the energy gun.. It hasn't even had a outer frame put on it yet which make it \
		awkward to handle, cables sometimes get in the way, even the lights on the top of the gun indicating how charged it is aren't covered, which is why \
		it's sometimes too distracting to accurately aim with."
	icon = 'modular_zzplurt/icons/obj/weapons/guns/energy.dmi'

/obj/item/gun/energy/laser/retro/old/upgraded/add_deep_lore()
	return

/obj/item/gun/energy/laser/retro/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/energy/laser/retro/old/upgraded/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
