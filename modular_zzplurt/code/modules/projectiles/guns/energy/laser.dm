/obj/item/gun/energy/laser/carbine
	projectile_speed_multiplier = 1.15 // it'd be REALLY fast otherwise

/obj/item/gun/energy/laser/retro
	name ="\improper NT-L2 \"Sentinel\" Laser Gun"
	desc = "A laser gun that was Nanotrasen's first truly successful mass-produced laser weapon platform, designed as an improved successor to the \
		poorly developed NT-L1 Pioneer. Featuring a significantly expanded power cell and enhanced internal systems, the Sentinel addressed many of the \
		reliability issues that hindered earlier laser arms, becoming a dependable, if still somewhat power-hungry option for early corporate security \
		forces. Though its frequent recharge requirements left many officers preferring traditional ballistic weaponry, the Sentinel proved durable, \
		lethal, and remarkably easy to maintain. Its distinctive vintage construction now marks it as an aging relic of Nanotrasen's early \
		military-industrial expansion, but surviving units remain highly valued by collectors, frontier militias, pirates, and criminal organizations alike."
	icon = 'modular_zzplurt/icons/obj/weapons/guns/energy.dmi'

/obj/item/gun/energy/laser/retro/old
	name ="\improper NT-L1 \"Pioneer\" Laser Gun"
	desc = "One of Nanotrasen's earliest breakthroughs in directed-energy weaponry, the Pioneer represents the first generation of corporate laser arms. \
		Its primitive internal power cell offered severely limited charge capacity, leaving it with poor ammunition endurance and making it unpopular among \
		security personnel who favored more dependable ballistic and stun weaponry. While revolutionary for its time, the platform was quickly rendered \
		obsolete by advancing energy systems. Most surviving examples now sit abandoned in aging armories, their worn paint and dust-covered frames serving \
		as relics of Nanotrasen's first uncertain step into laser combat technology."
	icon_state = "retro_old"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun/old)

/obj/item/gun/energy/laser/retro/old/upgraded
	desc = "A restored version from Nanotrasen's earliest laser weapons program, this upgraded Pioneer has been retrofitted with a larger modernized power \
		cell and refinished with a pristine factory-grade paint job. Though its improved charge capacity addresses many of the shortcomings that plagued the \
		original design, the weapon still bears signs of its incomplete redevelopment, an ambitious modernization project that was ultimately abandoned before \
		reaching full production. As a result, it remains a rare transitional relic: part historical artifact, part experimental upgrade, representing a path \
		Nanotrasen considered but never fully pursued."
	icon_state = "retro"
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun)

/obj/item/gun/energy/e_gun/old
	name = "NT-XP3 \"Aegis\" Multiphase Prototype Rifle"
	desc = "The Aegis was one of Nanotrasen's earliest and most ambitious prototype energy weapons, representing a major leap beyond conventional \
		laser technology. Designed with an experimental multiphase lens array, the platform could dynamically alternate between lethal laser fire and \
		non-lethal stun discharges, an unprecedented advancement for its era and the conceptual foundation for later standardized energy guns. Despite its \
		groundbreaking versatility, the Aegis remained an incomplete developmental platform, rushed through early production stages before refinement could \
		be finalized. Exposed wiring, unfinished external housing, unstable ergonomics, and visible charge indicators left the rifle cumbersome and awkward \
		to wield in active combat. While never mass-produced, its blueprints and core technologies became instrumental in shaping Nanotrasen's future energy \
		weapon programs, cementing the Aegis as a rare but pivotal precursor to the corporation's more polished and reliable laser and energy weapon lines."
	icon = 'modular_zzplurt/icons/obj/weapons/guns/energy.dmi'

/obj/item/gun/energy/laser/retro/old/upgraded/add_deep_lore()
	return

/obj/item/gun/energy/laser/retro/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/energy/laser/retro/old/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/energy/laser/retro/old/upgraded/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/energy/e_gun/old/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
