/obj/server
	name = "Server"
	icon_state = "server"

/obj/server/left_click(adjacent, params)
	if (!adjacent)
		return

	world << "Someone pressed the power button..."
	for (var/client/C)
		animate(C, pixel_x = rand() * 64, pixel_y = rand() * 64, time = 1, loop = 10)
		animate(pixel_x = 0, pixel_y = 0, time = 1)
	spawn(12)
		world.Reboot()