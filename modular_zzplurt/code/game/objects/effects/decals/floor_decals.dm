/obj/effect/turf_decal/nanotrasen
	icon = 'modular_zzplurt/icons/turf/decals.dmi'
	icon_state = "NS-2x2"

/obj/effect/turf_decal/nanotrasen/ns
	icon_state = "NS-2x2"

/obj/effect/turf_decal/nanotrasen/ns/top_left
	icon_state = "NS-top-left"

/obj/effect/turf_decal/nanotrasen/ns/top
	icon_state = "NS-top-center"

/obj/effect/turf_decal/nanotrasen/ns/top_right
	icon_state = "NS-top-right"

/obj/effect/turf_decal/nanotrasen/ns/center_left
	icon_state = "NS-center-left"

/obj/effect/turf_decal/nanotrasen/ns/center
	icon_state = "NS-center"

/obj/effect/turf_decal/nanotrasen/ns/center_right
	icon_state = "NS-center-right"

/obj/effect/turf_decal/nanotrasen/ns/bottom_left
	icon_state = "NS-bottom-left"

/obj/effect/turf_decal/nanotrasen/ns/bottom
	icon_state = "NS-bottom-center"

/obj/effect/turf_decal/nanotrasen/ns/bottom_right
	icon_state = "NS-bottom-right"

/obj/effect/turf_decal/ntspaceworks_small
	name = "small ntspaceworks logo"
	icon = 'modular_zzplurt/icons/turf/decals.dmi'
	icon_state = "ntspaceworks-center"

/obj/effect/turf_decal/ntspaceworks_small/left
	icon_state = "ntspaceworks-left"

/obj/effect/turf_decal/ntspaceworks_small/right
	icon_state = "ntspaceworks-right"


/obj/effect/turf_decal/ntspaceworks_big
	name = "big ntspaceworks logo"
	icon = 'modular_zzplurt/icons/turf/decals.dmi'

/obj/effect/turf_decal/ntspaceworks_big/one
	icon_state = "ntspaceworks_big-1"

/obj/effect/turf_decal/ntspaceworks_big/two
	icon_state = "ntspaceworks_big-2"

/obj/effect/turf_decal/ntspaceworks_big/two
	icon_state = "ntspaceworks_big-2"

/obj/effect/turf_decal/ntspaceworks_big/three
	icon_state = "ntspaceworks_big-3"

/obj/effect/turf_decal/ntspaceworks_big/four
	icon_state = "ntspaceworks_big-4"

/obj/effect/turf_decal/ntspaceworks_big/five
	icon_state = "ntspaceworks_big-5"

/obj/effect/turf_decal/ntspaceworks_big/six
	icon_state = "ntspaceworks_big-6"

/obj/effect/turf_decal/ntspaceworks_big/seven
	icon_state = "ntspaceworks_big-7"

/obj/effect/turf_decal/ntspaceworks_big/eight
	icon_state = "ntspaceworks_big-8"

#define TILE_DECAL_SUBTYPE_HELPER(path)\
##path/opposingcorners {\
	icon_state = "tile_opposing_corners";\
}\
##path/half {\
	icon_state = "tile_half";\
}\
##path/half/contrasted {\
	icon_state = "tile_half_contrasted";\
}\
##path/anticorner {\
	icon_state = "tile_anticorner";\
}\
##path/anticorner/contrasted {\
	icon_state = "tile_anticorner_contrasted";\
}\
##path/fourcorners {\
	icon_state = "tile_fourcorners";\
}\
##path/full {\
	icon_state = "tile_full";\
}\
##path/diagonal_centre {\
	icon_state = "diagonal_centre";\
}\
##path/diagonal_edge {\
	icon_state = "diagonal_edge";\
}\
##path/tram {\
	icon_state = "tile_tram";\
}

#define TRIMLINE_SUBTYPE_HELPER(path)\
##path/line {\
	icon_state = "trimline";\
}\
##path/corner {\
	icon_state = "trimline_corner";\
}\
##path/end {\
	icon_state = "trimline_end";\
}\
##path/arrow_cw {\
	icon_state = "trimline_arrow_cw";\
}\
##path/arrow_ccw {\
	icon_state = "trimline_arrow_ccw";\
}\
##path/warning {\
	icon_state = "trimline_warn";\
}\
##path/tram {\
	icon_state = "trimline_tram";\
}\
##path/mid_joiner {\
	icon_state = "trimline_mid";\
}\
##path/filled {\
	icon_state = "trimline_box_fill";\
}\
##path/filled/line {\
	icon_state = "trimline_fill";\
}\
##path/filled/corner {\
	icon_state = "trimline_corner_fill";\
}\
##path/filled/end {\
	icon_state = "trimline_end_fill";\
}\
##path/filled/arrow_cw {\
	icon_state = "trimline_arrow_cw_fill";\
}\
##path/filled/arrow_ccw {\
	icon_state = "trimline_arrow_ccw_fill";\
}\
##path/filled/warning {\
	icon_state = "trimline_warn_fill";\
}\
##path/filled/warning/corner {\
	icon_state = "trimline_corner_warn_fill";\
}\
##path/filled/mid_joiner {\
	icon_state = "trimline_mid_fill";\
}\
##path/filled/shrink_cw {\
	icon_state = "trimline_shrink_cw";\
}\
##path/filled/shrink_ccw {\
	icon_state = "trimline_shrink_ccw";\
}

/obj/effect/turf_decal/tile/nslogistics
	name = "N+S Logistics tile decal"
	color = "#FF6600"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/nslogistics)

/obj/effect/turf_decal/trimline/nslogistics
	name = "N+S Logistics trimline decal"
	color = "#FF6600"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/nslogistics)

#undef TRIMLINE_SUBTYPE_HELPER
