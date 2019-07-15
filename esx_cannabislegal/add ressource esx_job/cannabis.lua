Config.Jobs.cannabis = {
        BlipInfos = {
		Sprite = 496,
		Color = 2
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "youga2",
			Trailer = "none",
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 1223.75, y = -3113.85, z = 4.5},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U("dd_dress_locker"),
			Type = "cloakroom",
			Hint = _U("cloak_change"),
			GPS = {x = 1223.75, y = -3113.85, z = 4.5}
		},

		Wool = {
			Pos = {x = 1218.08, y = -3189.41, z = 4.5},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U("ca_bouture"),
			Type = "work",
			Item = {
				{
					name = _U("ca_bouture"),
					db_name = "bouture",
					time = 3000,
					max = 40,
					add = 1,
					remove = 1,
					requires = "nothing",
					requires_name = "Nothing",
					drop = 100
				}
			},
			Hint = _U("ca_pickup"),
			GPS = {x = 1231.11, y = -3169.39, z = 4.5}
		},

		Fabric = {
			Pos = {x = 1231.11, y = -3169.39, z = 4.5},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("ca_fabric"),
			Type = "work",
			Item = {
				{
					name = _U("ca_fabric"),
					db_name = "cannabismouile",
					time = 5000,
					max = 80,
					add = 2,
					remove = 1,
					requires = "bouture",
					requires_name = _U("ca_bouture"),
					drop = 100
				}
			},
			Hint = _U("ca_makefabric"),
			GPS = {x = 1231.02, y = -3133.34, z = 4.5}
		},

		Clothe = {
			Pos = {x = 1231.02, y = -3133.34, z = 4.5},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("ca_clothing"),
			Type = "work",
			Item = {
				{
					name = _U("ca_clothing"),
					db_name = "cannabissec",
					time = 4000,
					max = 40,
					add = 1,
					remove = 2,
					requires = "cannabismouile",
					requires_name = _U("ca_fabric"),
					drop = 100
				}
			},
			Hint = _U("ca_makeclothing"),
			GPS = {x = -1169.27,y = -1573.04,z = 3.8},
		},

		VehicleSpawner = {
			Pos = {x = 740.80, y = -970.06, z = 23.46},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("spawn_veh"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("spawn_veh_button"),
			Caution = 0,
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		},

		VehicleSpawnPoint = {
			Pos = {x = 747.31, y = -966.23, z = 23.70},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 270.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 693.79, y = -963.01, z = 22.82},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("return_vh"),
			Type = "vehdelete",
			Hint = _U("return_vh_button"),
			Spawner = 1,
			Caution = 0,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = -1169.27,y = -1573.04,z = 3.8},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Marker = 1,
			Blip = true,
			Name = _U("delivery_point"),
			Type = "delivery",
			Spawner = 1,
			Item = {
				{
					name = _U("delivery"),
					time = 500,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 40,
					requires = "cannabissec",
					requires_name = _U("ca_clothing"),
					drop = 100
				}
			},
			Hint = _U("ca_deliver_clothes"),
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		}
	}
}
