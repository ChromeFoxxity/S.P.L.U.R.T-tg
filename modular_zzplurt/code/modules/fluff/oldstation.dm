/obj/item/storage/photo_album/oldstation
	name = "photo album (Charlie Station)"
	persistence_id = "oldstation"

/obj/machinery/computer/shuttle/oldstation
	name = "Mining Freighter Console"
	desc = "Used to control the Mining Freighter."
	req_access = list(ACCESS_AWAY_GENERAL)
	circuit = /obj/item/circuitboard/computer/oldstation
	shuttleId = "oldstation_mining"
	possible_destinations = "whiteship_away;oldstation_home;whiteship_z4;whiteship_lavaland;whiteship_custom"

/obj/machinery/computer/camera_advanced/shuttle_docker/oldstation
	name = "Mining Freighter Navigation Computer"
	desc = "Used to designate a precise transit location for the Mining Freighter."
	shuttleId = "oldstation_mining"
	lock_override = NONE
	shuttlePortId = "oldstation_custom"
	jump_to_ports = list("whiteship_away" = 1, "oldstation_home" = 1, "whiteship_z4" = 1)
	view_range = 2.5
	x_offset = -1
	y_offset = -3

/obj/item/circuitboard/computer/oldstation
	name = "Mining Freighter"
	greyscale_colors = CIRCUIT_COLOR_SUPPLY
	build_path = /obj/machinery/computer/shuttle/oldstation

/obj/item/crowbar/large/doorforcer/old
	name = "large old prybar"
	desc = "A large, dusty and old sturdy crowbar painted blue, or at least it used to be, it's paint job is slightly scratched off. It used to be used for prying doors for emergency, but was phased out as soon as people started abusing it."
	icon = 'modular_skyrat/modules/colony_fabricator/icons/tools.dmi'
	icon_state = "prybar"
	toolspeed = 1.8
	w_class = WEIGHT_CLASS_HUGE

/obj/item/reagent_containers/cup/glass/bottle/wine/vintage
	name = "Solstice Reserve vintage wine"
	desc = "A extremely rare bottle of vintage wine that was made over 100 years ago, it is caked in dust, and the label is barely readable. Has it aged too long, or is this liquid gold?"
	icon = 'modular_zzplurt/icons/obj/drinks/drinks.dmi'
	icon_state = "vintage_wine"

/obj/item/tank/jetpack/void/empty/populate_gas()
	return

/obj/item/paper/fluff/ruins/oldstation/better/prototype_retrogun
	name = "Prototype Laser Gun Upgrades"
	default_raw_text = "A recent breakthrough in technology helped us develop these kits for security's laser guns, they're pretty heavily outdated, \
		and ever since we've manufactured the Aegis energy gun, we've decided to work on developing a way to increase the Pioneer's ammo charge without exploding \
		the gun. It is still under a bit of work, but we'll see where we get with this."

/obj/item/paper/fluff/ruins/oldstation/better/security_concern
	name = "Officer's note"
	default_raw_text = "March 13th, 2445. A note to self, make sure to contact headquarters about more equipment and officers. There's barely enough of us here, and with such a \
		small office, there's not much for all of us to be doing, due to such most of us are just patrolling the uneventful hallways, and hoping for a little \
		bit of action to keep our trigger fingers sharp, I honestly want to HOPE for action, but at the same time I don't want to jinx something that we can't \
		handle. Either way, we need more equipment incase any of science's experiments go awry, I can already FEEL them cooking something up that may cause issues."

/obj/item/paper/fluff/ruins/oldstation/better/comms
	name = "Engineer's memo"
	default_raw_text = "March 9th, 2445, do note this room still isn't being used as of yet. We are still trying to understand how to make a communications system that could \
		reach further distances, and be used in compact headsets. We'll be working on it in a few weeks, but for now it could be used for storage. Don't overdo it though."

/obj/item/paper/fluff/ruins/oldstation/better/report
	name = "Artificial Program's Event Report"
	default_raw_text = "Artificial Program's report to remaining crewmembers.<br><br> \
		Significant Events: \
		<ol> \
		<li>Crew were placed into cryostasis on March 10th, 2445.</li> \
		<li>The primary radiation detectors were taken offline after 120 years due to power failure, secondary radiation detectors showed no residual \
		radiation on station. Deduction, primarily detector was malfunctioning and was producing a radiation signal when there was none.</li> \
		<li>An unknown force has occupied Delta Station. Additionally, a school of common space carp have \
		taken refuge in the space surrounding all remaining stations, primarily Beta Station.</li> \
		</ol>"

/obj/item/paper/fluff/ruins/oldstation/better/protogun
	name = "NT-XP3 Aegis Prototype Report"
	default_raw_text = "<b>NT-XP3 \"Aegis\" Multiphase Prototype Rifle</b><br><br>The NT-XP3 Aegis represents Nanotrasen's most advanced achievement in \
		early directed-energy weapon development to date. This prototype platform is the first successful energy rifle capable of sustaining both lethal \
		laser fire and non-lethal stun discharges through its revolutionary multiphase lens array, allowing operators to dynamically alter projectile output \
		on command.<br><br>Initial field trials confirm the platform's superior versatility compared to previous laser models, though several developmental \
		limitations remain. While its upgraded power cell provides improved charge retention over prior weapons, the stun setting places extreme strain on \
		the internal systems and rapidly depletes available reserves. Additionally, exposed internal components, unfinished chassis construction, and unstable \
		handling characteristics make the current prototype unsuitable for widespread security deployment.<br><br>Despite these shortcomings, NT Strategic \
		Weapons Development considers the Aegis platform a foundational breakthrough in multifunction energy weaponry. Pending further refinement, ergonomic \
		improvements, and charge efficiency revisions, the XP3 project is expected to directly influence future standardized security and military energy \
		weapons. Early projections suggest subsequent iterations may streamline projectile settings and improve operational reliability for broader corporate adoption."

/obj/item/paper/fluff/ruins/oldstation/better/damagereport
	name = "Damage Report"
	default_raw_text = "<h2>WARNING</h2> \
		<ul> \
		<li>Space Carp invasion imminent.</li> \
		<li>Unknown force has overtaken AI satellite and occupying Delta Station. Intent unknown. Species unknown. Numbers unknown.</li> \
		</ul> \
		<h2>Status</h2> \
		<ol> \
		<li><b>Alpha Station</b> - ERROR.</li> \
		<li><b>Beta Station</b> - Catastrophic Damage. Medical, damaged. Atmospherics and Engine Core, partially destroyed.</li> \
		<li><b>Charlie Station</b> - Multiple asteroid impacts, no loss in air pressure.</li> \
		<li><b>Delta Station</b> - Intact, minor breach.</li> \
		</ol> \
		<h2>Recommended Actions</h2> \
		<ol> \
		<li>Locate security members at Charlie Station Security.</li> \
		<li>Move at a sufficient distance from the windows to avoid encounters with Space Carp.</li> \
		<li>Reestablish station powernet via Charlie Station Engineering solar array.</li> \
		<li>Restore life support systems: atmospherics, artificial gravity, hydroponics.</li> \
		<li>Avoid Delta Station until arrival of Nanotrasen Special Response Team.</li> \
		</ol>"

/obj/item/paper/fluff/ruins/oldstation/better/survivor_note
	name = "To those who find this"
	default_raw_text = "I was on a mission of an exploration drone reclamation, when I lost the signal. I've had just enough pressure to make it back to the station.... But this is really bad... <br><br> \
	Beta looks like a smashed tin can, and Alpha is gone completely. I didn't manage to find anyone except those sleeping beauties and something I don't even know how to explain. The blood and gore is everywhere, those things took out the entire R&D. \
	They're hissing and crawling behind the maintenance hatch that I welded off to not let them in.<br><br> \
	I had a proximity sensor with me, so I donated my left cybernetic arm to make this little fella. One of janitor's bucket served as a perfect casing for him. <br><br> \
	Here I thought that I'll die of malnutrition, when I started feeling the symptoms of hypercapnia. I will turn you off to save the battery. It's time for both us to sleep, little guy.<br><br> \
	If you're reading this, I'm probably dead. I've opened Ramboo's maintenance pannel with my ID. Treat him well.."
