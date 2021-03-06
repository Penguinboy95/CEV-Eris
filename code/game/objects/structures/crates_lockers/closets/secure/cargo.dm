/obj/structure/closet/secure_closet/cargotech
	name = "guild technician's locker"
	req_access = list(access_cargo)
	icon_state = "securecargo1"
	icon_closed = "securecargo"
	icon_locked = "securecargo1"
	icon_opened = "securecargoopen"
	icon_broken = "securecargobroken"
	icon_off = "securecargooff"

	New()
		..()
		new /obj/item/clothing/under/rank/cargotech(src)
		new /obj/item/clothing/shoes/black(src)
		new /obj/item/device/radio/headset/headset_cargo(src)
		new /obj/item/clothing/gloves/thick(src)
		new /obj/item/clothing/head/soft(src)
		return

/obj/structure/closet/secure_closet/quartermaster
	name = "guild merchant's locker"
	req_access = list(access_merchant)
	icon_state = "secureqm1"
	icon_closed = "secureqm"
	icon_locked = "secureqm1"
	icon_opened = "secureqmopen"
	icon_broken = "secureqmbroken"
	icon_off = "secureqmoff"

	New()
		..()
		new /obj/item/clothing/under/rank/cargotech(src)
		new /obj/item/clothing/shoes/color/brown(src)
		new /obj/item/device/radio/headset/headset_cargo(src)
		new /obj/item/clothing/gloves/thick(src)
		new /obj/item/clothing/suit/fire/firefighter(src)
		new /obj/item/weapon/tank/emergency_oxygen(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/clothing/glasses/meson(src)
		new /obj/item/clothing/head/soft(src)
		new /obj/item/weapon/gun/projectile/shotgun/pump(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		new /obj/item/ammo_casing/shotgun/beanbag(src)
		return
