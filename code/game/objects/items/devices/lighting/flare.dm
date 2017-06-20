/obj/item/device/lighting/glowstick/flare
	name = "flare"
	desc = "A red standard-issue flare. There are instructions on the side reading 'pull cord, make light'."
	brightness_on = 4 // Pretty bright.
	light_power = 2
	light_color = "#e58775"
	icon_state = "flare"
	max_fuel = 1000
	var/on_damage = 7
	var/produce_heat = 1500
	turn_on_sound = 'sound/effects/Custom_flare.ogg'

/obj/item/device/lighting/glowstick/flare/process()
	..()
	if(on)
		var/turf/pos = get_turf(src)
		if(pos)
			pos.hotspot_expose(produce_heat, 5)

/obj/item/device/lighting/glowstick/flare/burn_out()
	..()
	damtype = initial(damtype)

/obj/item/device/lighting/glowstick/flare/attack_self(mob/user)
	if(turn_on(user))
		user.visible_message(
			"<span class='notice'>\The [user] activates \the [src].</span>",
			"<span class='notice'>You pull the cord on the flare, activating it!</span>"
		)

/obj/item/device/lighting/glowstick/flare/turn_on(var/mob/user)
	if(on)
		return FALSE
	if(!fuel)
		if(user)
			user << "<span class='notice'>It's out of fuel.</span>"
		return FALSE
	on = TRUE
	force = on_damage
	damtype = "fire"
	processing_objects += src
	update_icon()
	return 1

