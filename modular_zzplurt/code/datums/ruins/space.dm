/datum/map_template/ruin/space/skyrat/cargodiselost
	unpickable = FALSE

/datum/map_template/ruin/space/splurt/serenity2_cargo
	suffix = "serenity2_cargo.dmm"

/datum/map_template/ruin/space/splurt/serenity2_dorm
	suffix = "serenity2_dorm.dmm"

/datum/map_template/ruin/space/bigderelict1
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/" // TG Map edit.

/datum/map_template/ruin/space/allamericandiner
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/" // TG Map edit.

/datum/map_template/ruin/space/interdyne
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/" // TG Map Edit

/datum/map_template/ruin/space/whiteshipdock
	never_spawn_with = list(/datum/map_template/ruin/space/new_whiteship_meta,/datum/map_template/ruin/space/new_whiteship_delta)

/datum/map_template/ruin/space/new_whiteship_meta
	id = "new_meta"
	suffix = "whiteship_meta.dmm"
	prefix = "_maps/shuttles/zzplurt/"
	name = "Space Ruin Meta-Class Freighter"
	description = "The Meta-class is the mainline freighter of N+S Logistics, boasting incredible cargo capacity, spacious crew areas, and law-abiding levels of speed. It has been through a substantial redesign compared to its previous namesake, aiming to reduce accidents and increase supply throughput to make up for defecits. The Meta-class frigate can most often be found in the frontier transporting cargo between outposts, delivering mail, and selling N+S goods and merchandise. N+S is not liable for any health issues, injuries or addictions that may occur while working aboard this vessel."
	never_spawn_with = list(/datum/map_template/ruin/space/whiteshipdock,/datum/map_template/ruin/space/new_whiteship_delta)

/datum/map_template/ruin/space/new_whiteship_delta
	id = "new_delta"
	suffix = "whiteship_delta.dmm"
	prefix = "_maps/shuttles/zzplurt/"
	name = "Space Ruin Delta-Class Frigate"
	description = "The Delta is a compact and advanced mining ship that supplements its comparatively small organic crew with a full suite of robotics facilities, including an AI and a host of mining and logistics drones and cyborgs. The Delta's low logistical footprint has thoroughly endeared it to N+S Logistics' upper management, but its cramped accomodations and lackluster defensive armament make it distinctly unpopular with the company's spacefaring employees."
	never_spawn_with = list(/datum/map_template/ruin/space/whiteshipdock,/datum/map_template/ruin/space/new_whiteship_meta)

/datum/map_template/ruin/space/skyrat/shuttle8532
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/" // Skyrat Map edit.
