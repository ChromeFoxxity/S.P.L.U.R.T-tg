/obj/machinery/computer/security/forgottenship
	name = "SBC Ironclad camera console"
	desc = "Used to access the various cameras on the SBC Ironclad."
	network = list("sbc44","sbc44")
	circuit = null

/obj/item/paper/fluff/ruins/forgottenship/password/remade
	name = "Mission Reminder"

/obj/item/paper/fluff/ruins/forgottenship/password/remade/Initialize(mapload)
	default_raw_text = "Greetings, Captain! To one of Gorlex Marauder's top class Destroyers, the SBC Ironclad!<br>This vessel has been fitted with heavy caliber turrets that will punish any attempts at boarding your vessel.<br>The ship is outfitted and built with pure comfort in mind, while also proving to be an excellent vessel for assault missions. Do be mindful, that there are no current missions for your team as of yet. Just focus for now on preparing for a mission!<br>There will be a survival pod nearby full of equipment that you can use in case of emergencies, do keep in mind that these are ONLY for emergencies.<br><br><b>It will be disguised as a Nanotrasen mining station, there's a vault in the back that will take this code, good luck out there Captain. - [GLOB.fscpassword]</b><br><br>Gorlex Marauders (C)."
	icon_state = "paper_words"
	inhand_icon_state = "paper"
	return ..()

/obj/item/paper/fluff/ruins/forgottenship/missionobj/remade
	name = "Mission Objectives"
	default_raw_text = "Greetings, operatives. You are assigned to Syndicate Battlecruiser Ironclad to be on stand-by for your next mission. Whilst on stand-by, you are to prepare for missions. The Captain may give temporary objectives for each operative, <b>you must</b> obey their orders.<br><br>Remember, disobeying high-ranking officer orders is a reason for termination."
