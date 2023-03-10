// this code here enables people to dig up worms from certain tiles.

/turf/simulated/floor/outdoors/grass/attackby(obj/item/S as obj, mob/user as mob)
	if(istype(S, /obj/item/shovel))
		to_chat(user, "<span class='notice'>You begin to dig in \the [src] with your [S].</span>")
		if(do_after(user, 4 SECONDS * S.tool_speed))
			to_chat(user, "<span class='notice'>\The [src] has been dug up, a worm pops from the ground.</span>")
			new /obj/item/reagent_containers/food/snacks/worm(src)
		else
			to_chat(user, "<span class='notice'>You decide to not finish digging in \the [src].</span>")
	else
		..()
