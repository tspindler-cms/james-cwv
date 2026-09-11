-- Kudos to currenthill, original Shell name is ModernUSNShips_127_AA
-- Download from https://currenthill.com/
-- note that some characteristics have been changed by TeTeT, see the old value as comment
declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "cwv_JLB_mk42_127mm_AIR",
	user_name 				= _("127 mm AA"),
	model_name    			= "pula",
    projectile      		= "HE",
    payloadEffect   		= "Fragmentation",
    payloadMaterial 		= "RDX",
	v0						= 792, -- 1808.0,
	Dv0						= 0.001, -- 0.0002,
	Da0						= 0.0002, -- 0.00001,
	Da1						= 0.0001, -- 0.0,
	mass      				= 31.3,
	explosive     			= 31.3,
	life_time     			= 100,
	caliber     			= 127.0,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {0.0,0.52,0.67,0.14,1.76},
	k1        				= 7.6e-10,
	tracer_off    			= 100,
	scale_tracer  			= 1,
	scale_smoke    			= 12.0,
	smoke_opacity  			= 0.5,
	cartridge 				= 1,

	aiming_table			=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 792.0 } -- intentionally not 792 to get less accurate
	}

});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "JLB_Phalanx_CIWS_MK244_APDS", 
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