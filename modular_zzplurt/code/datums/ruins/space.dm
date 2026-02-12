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

// Re-adding this, fuck you Bubberstation
/datum/map_template/ruin/space/forgottenship
	id = "forgottenship"
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/" // TG Map Edit
	suffix = "forgottenship.dmm"
	name = "Space-Ruin Syndicate Battlecruiser Ironclad"
	description = "One of Gorlex Marauder's top tier Battlecruisers is in nearby Nanotrasen space, not here for them however. They're on stand-by for missions from Command."
	never_spawn_with = list(/datum/map_template/ruin/space/forgottenship_wrecked)

/datum/map_template/ruin/space/forgottenship_wrecked
	id = "forgottenship_wrecked"
	prefix = "_maps/RandomRuins/SpaceRuins/splurt/"
	suffix = "forgottenship_wrecked.dmm"
	name = "Space-Ruin Destryoed Syndicate Battlecruiser Ironclad"
	description = "One of Gorlex Marauder's top tier Battlecruisers is in nearby Nanotrasen space, it's been raided by Nanotrasen Private Security forces, and had been snuffed out entirely."
	never_spawn_with = list(/datum/map_template/ruin/space/forgottenship)
