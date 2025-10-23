
declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "cwv_nj_mk7_406mm_HC",
	user_name 				= _("406 mm HC"),
	model_name				= "iowa_hc",
	projectile	  		= "HE",
	payloadEffect   		= "Fragmentation",
	payloadMaterial 		= "RDX",
	v0						= 797, -- 2615.0 fps,
	Dv0						= 0.003, -- 0.001,
	Da0						= 0.0012, -- 0.0002,
	Da1						= 0.0000, -- 0.0001,
	mass	  				= 862.0,
	explosive	 			= 471.3, -- about 69.67kg,
	life_time	 			= 300,
	caliber	 			= 406.0,
	s		 				= 0.0,
	j		 				= 0.0,
	l		 				= 0.0,
	charTime				= 0,
	cx						= {0.0,0.52,0.67,0.14,1.76},
	k1						= 9.6e-10,
	tracer_off				= 1.7,
        tracer_on       = tracer_on_time,
        smoke_tail_life_time = 1.7,
	scale_tracer  			= 1,
	scale_smoke			= barrel_smoke_level,
	smoke_opacity  			= barrel_smoke_opacity,
	smoke_particle  		= 1,
	cartridge 				= 0,

	aiming_table			=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 810.0 } -- intentionally not 792 to get less accurate
	}

});



declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "cwv_nj_mk12_127mm_AIR",
	user_name 				= _("127 mm AA"),
	model_name				= "pula",
	projectile	  		= "HE",
	payloadEffect   		= "Fragmentation",
	payloadMaterial 		= "RDX",
	v0						= 762, -- 2500.0 fps,
	Dv0						= 0.001, -- 0.0002,
	Da0						= 0.0002, -- 0.00001,
	Da1						= 0.0001, -- 0.0,
	mass	  				= 25.0,
	explosive	 			= 22.3235, -- about 3.3kg,
	life_time	 			= 100,
	caliber	 			= 127.0,
	s		 				= 0.0,
	j		 				= 0.0,
	l		 				= 0.0,
	charTime				= 0,
	cx						= {0.0,0.52,0.67,0.14,1.76},
	k1						= 7.6e-10,
	tracer_off				= 100,
	scale_tracer  			= 1,
	scale_smoke				= 12.0,
	smoke_opacity  			= 0.5,
	cartridge 				= 1,

	aiming_table			=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 835.0 } -- intentionally not 792 to get less accurate
	}

});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "cwv_nj_Phalanx_CIWS_MK244_APDS", 
	user_name 				= _("20 mm APDS ELC"),
	model_name    			= "tracer_bullet_red",
	v0    					= 1100.0,
	Dv0   					= 0.0080,
	Da0     				= 0.0008,
	Da1            			= 0.0,
	mass           			= 0.98,
	round_mass     			= 0.300,
	cartridge_mass 			= 0.150,		
	explosive      			= 0.0,			
	AP_cap_caliber 			= 20.0,
	subcalibre     			= true,
	piercing_mass 			= 0.150,
	life_time      			= 10,
	caliber        			= 20.0,
	s              			= 0.0,
	j              			= 0.0,
	l              			= 0.0,
	charTime       			= 0,
	cx             			= {0.5,1.27,0.70,0.200,2.30},
	k1             			= 2.0e-08,
	tracer_on      = 0,
	tracer_off     = 4,
	scale_tracer   = 1,
	cartridge 				= 0,	
});