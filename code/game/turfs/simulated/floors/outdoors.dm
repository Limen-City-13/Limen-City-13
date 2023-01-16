/turf/simulated/floor/outdoors
	name = "generic ground"
	desc = "Rather boring."
	icon = 'icons/turf/outdoors.dmi'
	icon_state = null
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floor/outdoors/mud
	name = "mud"
	icon_state = "mud_dark"

/turf/simulated/floor/outdoors/rocks
	name = "rocks"
	desc = "Hard as a rock."
	icon_state = "rock"
	baseturfs = /turf/baseturf_bottom

// World Server road files for future map update.
// Short-term placement here, likely will move them to their own dm file soon.
/turf/simulated/floor/outdoors/road
	name = "road"
	icon = 'icons/turf/roads.dmi'
	edge_blending_priority = 1
	desc = "The road likely very traveled."
	icon_state = "roadempty"
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floor/outdoors/roadmarked
	name = "Divided Road"
	icon = 'icons/turf/roads.dmi'
	edge_blending_priority = 1
	desc = "The road likely very traveled."
	icon_state = "roadmarking"
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floor/outdoors/roadarrow
	name = "Divided Road"
	icon = 'icons/turf/roads.dmi'
	edge_blending_priority = 1
	desc = "The road likely very traveled."
	icon_state = "roadarrow"
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floor/outdoors/garage
	name = "Garage"
	icon = 'icons/turf/roads.dmi'
	edge_blending_priority = 1
	desc = "The road likely very traveled."
	icon_state = "garage"
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

//World Server pavement/sidewalk files for future map update.
// Short-term placement here, likely will move them to their own dm file soon.

/turf/simulated/floors/outdoors/paveempty
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pave_empty"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/pavement
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pavement"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/paveinvertcorner
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pave_invert_corner"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/pavecorner
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pave_corner"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/brickpaving
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "brick_paving"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/pavetiling
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pave_tiling"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

/turf/simulated/floors/outdoors/pavestairs
	name = "Pavement"
	icon = 'icons/turf/pavement.dmi'
	desc = "Don't put your teeth on the edge of this."
	icon_state = "pave_stairs"
	edge_blending_priority = 1
	outdoors = TRUE					// This variable is used for weather effects.
	can_dirty = FALSE				// Looks hideous with dirt on it.
	can_build_into_floor = TRUE
	baseturfs = /turf/simulated/floor/outdoors/rocks

//End WS road and pavement port

/turf/simulated/floor/outdoors/rocks/caves
	outdoors = FALSE

// Called by weather processes, and maybe technomancers in the future.
/turf/simulated/floor/proc/chill()
	return

/turf/simulated/floor/outdoors/chill()
	PlaceOnTop(/turf/simulated/floor/outdoors/snow, flags = CHANGETURF_PRESERVE_OUTDOORS|CHANGETURF_INHERIT_AIR)

/turf/simulated/floor/outdoors/snow/chill()
	return // Todo: Add heavy snow.

/turf/simulated/floor/outdoors/legacy_ex_act(severity)
	switch(severity)
		// Outdoor turfs are less explosion resistant
		if(1)
			ScrapeAway(flags = CHANGETURF_INHERIT_AIR|CHANGETURF_PRESERVE_OUTDOORS)
		if(2)
			if(prob(66))
				ScrapeAway(flags = CHANGETURF_INHERIT_AIR|CHANGETURF_PRESERVE_OUTDOORS)
		if(3)
			if(prob(15))
				ScrapeAway(flags = CHANGETURF_INHERIT_AIR|CHANGETURF_PRESERVE_OUTDOORS)





