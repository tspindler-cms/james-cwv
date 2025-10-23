-- Ship template by Joey45 edit as you see fit
-- USS New Jersey 84 by James J Jackson

GT = {};
dofile(current_mod_path..'/Database/scripts/new_jersey_1984_RunwaysAndRoutes.lua') -- the runways and taxiway lua file
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship) -- all ships have this

GT.visual = {}
GT.visual.shape = "new_jersey_1984_dcs"  -- name of LODs lua
GT.visual.shape_dstr = "" -- if there is a destruction model it goes here

GT.life = 12200; -- hit points
GT.mass = 61000000; -- KGs
GT.max_velocity = 17.7483 --M/S
GT.race_velocity = 12.1 --M/S
GT.economy_velocity = 7.7 --M/S 
GT.economy_distance = 13000 -- KM
GT.race_distance = 2.778e+006
GT.shipLength = 270.54 -- o.a in meters
GT.Width = 32.95 --meters
GT.Height = 54.2 --from sea level I think
GT.Length = 270.54 -- deck length I think
GT.DeckLevel = 6.13 -- height of deck
GT.X_nose = 130.2 -- bow wave
GT.X_tail = -75 -- wake
GT.Tail_Width = 25 --wake width
GT.Gamma_max = 0.35 -- no idea
GT.Om = 0.05 --no idea
GT.speedup = 0.119249; --time it takes to accelerate
GT.R_min = 300; -- turn radius

GT.RCS = 1000000; -- new in 2.7 ----estimated RCS in square meters
GT.IR_emission_coeff = 0.9; -- new in 2.7 not sure the params

GT.TACAN = true;		--If it has TACAN say true if not say false or not have this entry
GT.TACAN_position = {-6.97, 52.73, 0}
GT.ICLS = true; -- IF it has ICLS say true if not say false or not have this entry
GT.ICLS_Localizer_position =  {-131.55, 12, 29.947, 242.25}
GT.ICLS_Glideslope_position = {-88.99, 8.90, 0, 3.5}

GT.distFindObstacles = 148.7;

-- Aircraft complement
GT.numParking		= 1;
GT.Plane_Num_		= 0;
GT.Helicopter_Num_	= 1;
GT.Landing_Point = {-113.36,	6.2535, -4.6145, 242.25};

-- smoke density and position
GT.exhaust = {
	[1] = { size = 0.10, pos = {-3.22, 28.761, 0}},
	[2] = { size = 0.10, pos = {-28.765, 28.427, 0}}
};

GT.animation_arguments = {
	water_propeller = 12,
	radar1_rotation = 13,
	radar2_rotation = 14,
	nav_lights = 901,
};
GT.radar1_period = 4; --speed
GT.radar2_period = 5;

--Damage Model
GT.DM = {
	{ area_name = "FlightDeck", area_arg = 900, area_life = 50},
	{ area_name = "Turret_1", area_arg = 901, area_life = 500},
	{ area_name = "Turret_2", area_arg = 902, area_life = 500},
	{ area_name = "Turret_3", area_arg = 903, area_life = 500},
	{ area_name = "hull", area_arg = 904, area_life = 1000},
	{ area_name = "SuperStructure", area_arg = 906, area_life = 500},
	{ area_name = "Harpoon_deck_r", 	area_arg = 907,	area_life = 110, area_fire = { pos = {-25.411, -8.7, 16.853}, size = 0.5}},
	{ area_name = "Harpoon_deck_l", 	area_arg = 908,	area_life = 110, area_fire = { pos = {-25.411, 8.7, 16.853}, size = 0.5}},
	{ area_name = "TLAM_deck_r", 	area_arg = 907,	area_life = 110, area_fire = { pos = {-14.196, -8.7, 16.853}, size = 0.5}},
	{ area_name = "TLAM_deck_l", 	area_arg = 908,	area_life = 110, area_fire = { pos = {-14.196, 8.7, 16.853}, size = 0.5}},
	{ area_name = "TASM_deck_r", 	area_arg = 907,	area_life = 110, area_fire = { pos = {-40.065, -8.7, 16.853}, size = 0.5}},
	{ area_name = "TASM_deck_l", 	area_arg = 908,	area_life = 110, area_fire = { pos = {-40.065, 8.7, 16.853}, size = 0.5}},
	{ area_name = "5in_1", area_arg = 909, area_life = 50},
	{ area_name = "5in_2", area_arg = 910, area_life = 50},
	{ area_name = "5in_3", area_arg = 911, area_life = 50},
	{ area_name = "5in_4", area_arg = 912, area_life = 50},
	{ area_name = "5in_5", area_arg = 913, area_life = 50},
	{ area_name = "5in_6", area_arg = 914, area_life = 50},
	{ area_name = "ciws_1", area_arg = 915, area_life = 20},
	{ area_name = "ciws_2", area_arg = 916, area_life = 20},
	{ area_name = "ciws_3", area_arg = 917, area_life = 20},
	{ area_name = "ciws_4", area_arg = 918, area_life = 20},
};

GT.airWeaponDist = 14630.0;  -- Max engagement range air threats (meters)
GT.airFindDist = 130000; -- Max detenction range air threats (meters)


--Radar info
GT.WS = {}
GT.WS.maxTargetDetectionRange = 90000;
GT.WS.radar_type = 102 --optical in wstypes
GT.WS.searchRadarMaxElevation = math.rad(60);
GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}};
local ws;

-- weapon systems goes here
-- we will use the https://en.wikipedia.org/wiki/5-inch/38-caliber_gun as main armament
-- dcs-lua-datamine _G["db"]["Units"]["GT_t"]["LN_t"]["Mk12_5in38cal"]

-- Kudos to currenthill for allowing to use his code for the ship armament launchers
-- Original launcher are ModernUSNShips_Mark45_M4 and ModernUSNShips_Mark45_M4_AIR
-- Download currenthill's mod from https://currenthill.com/

local WSN_20 = {};
WSN_20.deviation_error_azimuth 		= 0.0002;
WSN_20.deviation_error_elevation 	= 0.0002;
WSN_20.deviation_error_speed_sensor	= 0.0002;
WSN_20.deviation_error_stability 	= 0.0002;
WSN_20.deviation_error_distance 	= 0.0002;

GT_t.WSN_t[20] = WSN_20;


-------------------------------------------------------------------------------------------------
--   Mk7 16inch Ammo 
-------------------------------------------------------------------------------------------------
GT_t.WS_t.ship_16inch_50 = {name = "16Inch 406/50"}
GT_t.WS_t.ship_16inch_50.angles = {
					{math.rad(140), math.rad(-140), math.rad(-2), math.rad(45)},
					};
GT_t.WS_t.ship_16inch_50.omegaY = 0.6
GT_t.WS_t.ship_16inch_50.omegaZ = 0.6
GT_t.WS_t.ship_16inch_50.reference_angle_Z = 0
GT_t.WS_t.ship_16inch_50.LN = {}
GT_t.WS_t.ship_16inch_50.LN[1] = {}
GT_t.WS_t.ship_16inch_50.LN[1].type = 6
GT_t.WS_t.ship_16inch_50.LN[1].distanceMin = 50
GT_t.WS_t.ship_16inch_50.LN[1].distanceMax = 38720;
GT_t.WS_t.ship_16inch_50.LN[1].max_trg_alt = 11535
GT_t.WS_t.ship_16inch_50.LN[1].reactionTime = 15
GT_t.WS_t.ship_16inch_50.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_16inch_50.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_16inch_50.LN[1].PL = {}
GT_t.WS_t.ship_16inch_50.LN[1].PL[1] = {}
GT_t.WS_t.ship_16inch_50.LN[1].PL[1].ammo_capacity = 402
GT_t.WS_t.ship_16inch_50.LN[1].PL[1].shell_name = {"cwv_nj_mk7_406mm_HC"};


GT_t.WS_t.ship_16inch_50.LN[1].PL[1].shot_delay = 26 
GT_t.WS_t.ship_16inch_50.LN[1].automaticLoader = false;
GT_t.WS_t.ship_16inch_50.LN[1].reload_time = 240 * 20
GT_t.WS_t.ship_16inch_50.LN[1].BR = { {pos = {8, 0, 0.1} }, {pos = {8, 0, 0.0} }, {pos = {8, 0, -0.1} } }

-------------------------------------------------------------------------------------------------
--   5inch  Ammo   
-------------------------------------------------------------------------------------------------

GT_t.WS_t.ship_mk12_2x127mm = {name = "Mk12 5inch 38cal Twin"};
GT_t.WS_t.ship_mk12_2x127mm.angles = {
					{math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},
					};
GT_t.WS_t.ship_mk12_2x127mm.omegaY = math.rad(10); -- Block 1B
GT_t.WS_t.ship_mk12_2x127mm.omegaZ = math.rad(10); -- Block 1B
GT_t.WS_t.ship_mk12_2x127mm.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_mk12_2x127mm.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_mk12_2x127mm.reference_angle_Z = 0;


GT_t.LN_t.ship_mk12_127mm_AIR = {};
GT_t.LN_t.ship_mk12_127mm_AIR.type = 11;
GT_t.LN_t.ship_mk12_127mm_AIR.distanceMin = 20;
GT_t.LN_t.ship_mk12_127mm_AIR.distanceMax = 9144;
GT_t.LN_t.ship_mk12_127mm_AIR.max_trg_alt = 11339;
GT_t.LN_t.ship_mk12_127mm_AIR.reactionTime = 2;
GT_t.LN_t.ship_mk12_127mm_AIR.sensor = {};
-- set_recursive_metatable(GT_t.LN_t.ship_mk12_127mm_AIR.sensor, GT_t.WSN_t[1])
set_recursive_metatable(GT_t.LN_t.ship_mk12_127mm_AIR.sensor, GT_t.WSN_t[20]);
GT_t.LN_t.ship_mk12_127mm_AIR.PL = {};
GT_t.LN_t.ship_mk12_127mm_AIR.PL[1] = {
	shell_name = {"cwv_nj_mk12_127mm_AIR"},
	automaticLoader = false,
	shot_delay = 3,
	ammo_capacity = 352,
};

GT_t.LN_t.ship_mk12_127mm = {}
GT_t.LN_t.ship_mk12_127mm.type = 6
GT_t.LN_t.ship_mk12_127mm.distanceMin = 20
GT_t.LN_t.ship_mk12_127mm.distanceMax = 16642
GT_t.LN_t.ship_mk12_127mm.max_trg_alt = 5410
GT_t.LN_t.ship_mk12_127mm.reactionTime = 12
GT_t.LN_t.ship_mk12_127mm.sensor = {}
set_recursive_metatable(GT_t.LN_t.ship_mk12_127mm.sensor, GT_t.WSN_t[10])
GT_t.LN_t.ship_mk12_127mm.PL = {}
GT_t.LN_t.ship_mk12_127mm.PL[1] = {
	-- unclear why the 127_Mk49 shells not work
	shell_name = {"MK45_127"}, --shell_name = { "127_Mk49_HC_1", "127_Mk49_HC_2" },
	automaticLoader = false,
	shot_delay = 3,
	ammo_capacity = 352,
};

-------------------------------------------------------------------------------------------------
--   Phalanx  Ammo   
-------------------------------------------------------------------------------------------------

GT_t.LN_t.Iowa_Phalanx_CIWS = {name = "Iowa Phalanx CIWS", display_name = _("Iowa Phalanx CIWS")}; 
GT_t.LN_t.Iowa_Phalanx_CIWS.type = 3;
GT_t.LN_t.Iowa_Phalanx_CIWS.distanceMin = 0
GT_t.LN_t.Iowa_Phalanx_CIWS.distanceMax = 3600
GT_t.LN_t.Iowa_Phalanx_CIWS.max_trg_alt = 3600
GT_t.LN_t.Iowa_Phalanx_CIWS.reactionTime = 0.5
GT_t.LN_t.Iowa_Phalanx_CIWS.reflection_limit = 0.02;
GT_t.LN_t.Iowa_Phalanx_CIWS.beamWidth = math.rad(90);
GT_t.LN_t.Iowa_Phalanx_CIWS.sensor = {}
set_recursive_metatable(GT_t.LN_t.Iowa_Phalanx_CIWS.sensor, GT_t.WSN_t[5]) 
GT_t.LN_t.Iowa_Phalanx_CIWS.PL = {}
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1] = {}
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1].ammo_capacity = 155
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1].switch_on_delay = 1.0;
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1].shell_name = {"cwv_nj_Phalanx_CIWS_MK244_APDS"};
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1].shot_delay = 60/4500; 
GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1].reload_time = 1.0;
GT_t.LN_t.Iowa_Phalanx_CIWS.BR = { {pos = {2, 0, 0} } }
for i=2,10 do
    GT_t.LN_t.Iowa_Phalanx_CIWS.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.Iowa_Phalanx_CIWS.PL[i], GT_t.LN_t.Iowa_Phalanx_CIWS.PL[1]);
end;

-------------------------------------------------------------------------------------------------
--   16inch turret 1  
-------------------------------------------------------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_16inch_50)
GT.WS[ws].area = 'Turret_1'
GT.WS[ws].center = 'CENTER_TURRET_01'
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].angles = {
					{math.rad(139), math.rad(-139), math.rad(-2), math.rad(45)},
					};
GT.WS[ws].omegaY = math.rad(4);
GT.WS[ws].omegaZ = math.rad(12);
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].reference_angle_Z = math.rad(5);	
GT.WS[ws].LN[1].distanceMin = 500
GT.WS[ws].LN[1].distanceMax = 38720
GT.WS[ws].LN[1].BR[1].recoilTime = 0.2;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_GUN_16inch_1_1',
		recoilArgument = 1111,
	},
	{
		connector_name = 'POINT_GUN_16inch_1_2',
		recoilArgument = 1112,
	},
	{
		connector_name = 'POINT_GUN_16inch_1_3',
		recoilArgument = 1113,
	}
}

-------------------------------------------------------------------------------------------------
--   16inch turret 2  
-------------------------------------------------------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_16inch_50)
GT.WS[ws].area = 'Turret_2'
GT.WS[ws].center = 'CENTER_TURRET_02'
GT.WS[ws].drawArgument1 = 4
GT.WS[ws].drawArgument2 = 5
GT.WS[ws].angles = {
					{math.rad(126), math.rad(-126), math.rad(0), math.rad(45)},
					};
GT.WS[ws].omegaY = math.rad(4);
GT.WS[ws].omegaZ = math.rad(12);
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].reference_angle_Z = math.rad(5);	
GT.WS[ws].LN[1].distanceMin = 500
GT.WS[ws].LN[1].distanceMax = 38720
GT.WS[ws].LN[1].BR[1].recoilTime = 0.2;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_GUN_16inch_2_1',
		recoilArgument = 1121,
	},
	{
		connector_name = 'POINT_GUN_16inch_2_2',
		recoilArgument = 1122,
	},
	{
		connector_name = 'POINT_GUN_16inch_2_3',
		recoilArgument = 1123,
	}
}

-------------------------------------------------------------------------------------------------
--   16inch turret 3  
-------------------------------------------------------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_16inch_50)
GT.WS[ws].area = 'Turret_3'
GT.WS[ws].center = 'CENTER_TURRET_03'
GT.WS[ws].drawArgument1 = 8
GT.WS[ws].drawArgument2 = 9
GT.WS[ws].angles = {
					{math.rad(-52), math.rad(52), math.rad(-2), math.rad(45)},
					};
GT.WS[ws].omegaY = math.rad(4);
GT.WS[ws].omegaZ = math.rad(12);
GT.WS[ws].reference_angle_Y = math.rad(-180);
GT.WS[ws].reference_angle_Z = math.rad(5);	
GT.WS[ws].LN[1].distanceMin = 500
GT.WS[ws].LN[1].distanceMax = 38720
GT.WS[ws].LN[1].BR[1].recoilTime = 0.2;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_GUN_16inch_3_1',
		recoilArgument = 1131,
	},
	{
		connector_name = 'POINT_GUN_16inch_3_2',
		recoilArgument = 1132,
	},
	{
		connector_name = 'POINT_GUN_16inch_3_3',
		recoilArgument = 1133,
	}
}

-------------------------------------------------------------------------------------------------
--   5inch turret 1
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_1'
GT.WS[ws].center = 'CENTER_TURRET_04'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 15;
GT.WS[ws].drawArgument2 = 16;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(-0)
GT.WS[ws].angles = {
	{math.rad(-0), math.rad(-170), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_1_1',
			recoilArgument = 1211,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_1_2',
			recoilArgument = 1212,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_1'
GT.WS[ws].center = 'CENTER_TURRET_04'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(-0), math.rad(-170), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_1_2',
			recoilArgument = 1212,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_1_1',
			recoilArgument = 1211,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   5inch turret 2
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_2'
GT.WS[ws].center = 'CENTER_TURRET_05'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 17;
GT.WS[ws].drawArgument2 = 18;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].angles = {
	{math.rad(170), math.rad(0), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_2_1',
			recoilArgument = 1221,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_2_2',
			recoilArgument = 1222,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_2'
GT.WS[ws].center = 'CENTER_TURRET_05'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(170), math.rad(0), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_2_2',
			recoilArgument = 1222,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_2_1',
			recoilArgument = 1221,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   5inch turret 3
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_3'
GT.WS[ws].center = 'CENTER_TURRET_06'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 19;
GT.WS[ws].drawArgument2 = 20;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(-0)
GT.WS[ws].angles = {
	{math.rad(-0), math.rad(-170), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_3_1',
			recoilArgument = 1231,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_3_2',
			recoilArgument = 1232,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_3'
GT.WS[ws].center = 'CENTER_TURRET_06'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(-0), math.rad(-170), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_3_2',
			recoilArgument = 1232,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_3_1',
			recoilArgument = 1231,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   5inch turret 4
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_4'
GT.WS[ws].center = 'CENTER_TURRET_07'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 21;
GT.WS[ws].drawArgument2 = 22;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].angles = {
	{math.rad(170), math.rad(0), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_4_1',
			recoilArgument = 1241,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_4_2',
			recoilArgument = 1242,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_4'
GT.WS[ws].center = 'CENTER_TURRET_07'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(170), math.rad(0), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_4_2',
			recoilArgument = 1242,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_4_1',
			recoilArgument = 1241,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   5inch turret 5
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_5'
GT.WS[ws].center = 'CENTER_TURRET_08'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 23;
GT.WS[ws].drawArgument2 = 24;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(-180)
GT.WS[ws].angles = {
	{math.rad(-10), math.rad(-180), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_5_1',
			recoilArgument = 1251,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_5_2',
			recoilArgument = 1252,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_5'
GT.WS[ws].center = 'CENTER_TURRET_08'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(-10), math.rad(-180), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_5_2',
			recoilArgument = 1252,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_5_1',
			recoilArgument = 1251,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   5inch turret 6
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_6'
GT.WS[ws].center = 'CENTER_TURRET_09'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(180)
GT.WS[ws].angles = {
	{math.rad(180), math.rad(10), math.rad(-10), math.rad(85)},
};
-- first set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_6_1',
			recoilArgument = 1261,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_6_2',
			recoilArgument = 1262,
			recoilTime = 0.5 }};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = '5in_6'
GT.WS[ws].center = 'CENTER_TURRET_09'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
					{math.rad(180), math.rad(10), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].reference_angle_Z = math.rad(0);
-- second set of launchers
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk12_127mm);
__LN.BR = {{ connector_name = 'POINT_GUN_5inch_6_2',
			recoilArgument = 1262,
			recoilTime = 0.5 },
		   { connector_name = 'POINT_GUN_5inch_6_1',
			recoilArgument = 1261,
			recoilTime = 0.5 }};

-------------------------------------------------------------------------------------------------
--   CIWS turret 1
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'ciws_1'
GT.WS[ws].center = 'CENTER_TURRET_10'
GT.WS[ws].drawArgument1 = 27
GT.WS[ws].drawArgument2 = 28
GT.WS[ws].angles = {
                    {math.rad(5), math.rad(-170), math.rad(-25), math.rad(85)},
                    };
GT.WS[ws].omegaY = math.rad(115)
GT.WS[ws].omegaZ = math.rad(115)
GT.WS[ws].pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].stabilizer = true;
GT.WS[ws].reference_angle_Y = math.rad(-90);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Iowa_Phalanx_CIWS);
__LN.BR = {{ connector_name = 'POINT_GUN_CIWS_1', 
							fireAnimationArgument = 91,
							recoilArgument = 91,
							recoilTime = 0.1 }} 



-------------------------------------------------------------------------------------------------
--   CIWS turret 2
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'ciws_2'
GT.WS[ws].center = 'CENTER_TURRET_11'
GT.WS[ws].drawArgument1 = 29
GT.WS[ws].drawArgument2 = 30
GT.WS[ws].angles = {
                    {math.rad(170), math.rad(-5), math.rad(-25), math.rad(85)},
                    };
GT.WS[ws].omegaY = math.rad(115)
GT.WS[ws].omegaZ = math.rad(115)
GT.WS[ws].pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].stabilizer = true;
GT.WS[ws].reference_angle_Y = math.rad(90);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Iowa_Phalanx_CIWS);
__LN.BR = {{ connector_name = 'POINT_GUN_CIWS_2', 
							fireAnimationArgument = 92,
							recoilArgument = 92,
							recoilTime = 0.1 }} 

-------------------------------------------------------------------------------------------------
--   CIWS turret 3
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'ciws_3'
GT.WS[ws].center = 'CENTER_TURRET_12'
GT.WS[ws].drawArgument1 = 31
GT.WS[ws].drawArgument2 = 32
GT.WS[ws].angles = {
                    {math.rad(0), math.rad(-180), math.rad(-25), math.rad(85)},
                    };
GT.WS[ws].omegaY = math.rad(115)
GT.WS[ws].omegaZ = math.rad(115)
GT.WS[ws].pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].stabilizer = true;
GT.WS[ws].reference_angle_Y = math.rad(-90);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Iowa_Phalanx_CIWS);
__LN.BR = {{ connector_name = 'POINT_GUN_CIWS_3', 
							fireAnimationArgument = 93,
							recoilArgument = 93,
							recoilTime = 0.1 }} 

-------------------------------------------------------------------------------------------------
--   CIWS turret 4
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'ciws_4'
GT.WS[ws].center = 'CENTER_TURRET_13'
GT.WS[ws].drawArgument1 = 33
GT.WS[ws].drawArgument2 = 34
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-0), math.rad(-25), math.rad(85)},
                    };
GT.WS[ws].omegaY = math.rad(115)
GT.WS[ws].omegaZ = math.rad(115)
GT.WS[ws].pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].stabilizer = true;
GT.WS[ws].reference_angle_Y = math.rad(90);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Iowa_Phalanx_CIWS);
__LN.BR = {{ connector_name = 'POINT_GUN_CIWS_4', 
							fireAnimationArgument = 94,
							recoilArgument = 94,
							recoilTime = 0.1 }}  

-------------------------------------------------------------------------------------------------
--   Harpoon Missile
-------------------------------------------------------------------------------------------------

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].area = 'Harpoon_deck_r';
GT.WS[ws].center = 'Rocket_Point_3_1' 
GT.WS[ws].canSetTacticalDir = true 
GT.WS[ws].reference_angle_Y = math.rad(-90); 
GT.WS[ws].LN[1].distanceMin = 5000
GT.WS[ws].LN[1].distanceMax = 250000
GT.WS[ws].LN[1].reactionTime = 8;
GT.WS[ws].LN[1].launch_delay = 1;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8;
GT.WS[ws].LN[1].show_external_missile = false 
GT.WS[ws].LN[1].external_tracking_awacs = true
GT.WS[ws].LN[1].BR = {
						{connector_name = 'Rocket_Point_1_1', drawArgument = 301},
						{connector_name = 'Rocket_Point_1_2', drawArgument = 302},
						{connector_name = 'Rocket_Point_1_3', drawArgument = 303},
						{connector_name = 'Rocket_Point_1_4', drawArgument = 304},
						{connector_name = 'Rocket_Point_3_1', drawArgument = 309},
						{connector_name = 'Rocket_Point_3_2', drawArgument = 310},
						{connector_name = 'Rocket_Point_3_3', drawArgument = 311},
						{connector_name = 'Rocket_Point_3_4', drawArgument = 312},
					}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].area = 'Harpoon_deck_l';
GT.WS[ws].center = 'Rocket_Point_4_1' 
GT.WS[ws].canSetTacticalDir = true 
GT.WS[ws].reference_angle_Y = math.rad(90); 
GT.WS[ws].LN[1].distanceMin = 5000
GT.WS[ws].LN[1].distanceMax = 250000
GT.WS[ws].LN[1].reactionTime = 8;
GT.WS[ws].LN[1].launch_delay = 1;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8;
GT.WS[ws].LN[1].show_external_missile = false 
GT.WS[ws].LN[1].external_tracking_awacs = true
GT.WS[ws].LN[1].BR = {
						{connector_name = 'Rocket_Point_2_1', drawArgument = 305},
						{connector_name = 'Rocket_Point_2_2', drawArgument = 306},
						{connector_name = 'Rocket_Point_2_3', drawArgument = 307},
						{connector_name = 'Rocket_Point_2_4', drawArgument = 308},
						{connector_name = 'Rocket_Point_4_1', drawArgument = 313},
						{connector_name = 'Rocket_Point_4_2', drawArgument = 314},
						{connector_name = 'Rocket_Point_4_3', drawArgument = 315},
						{connector_name = 'Rocket_Point_4_4', drawArgument = 316},
					}

-------------------------------------------------------------------------------------------------
--   Tomhawk Missile TLAM Test 
-------------------------------------------------------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_TOMAHAWK )
GT.WS[ws].area = 'TLAM_deck_r'
GT.WS[ws].center = 'Rocket_Point_TLAM_3_4'
GT.WS[ws].reference_angle_Y = math.rad(90); 
GT.WS[ws].reference_angle_Z = math.rad(33.5); 
GT.WS[ws].LN[1].max_number_of_missiles_channels = 32;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 32;
GT.WS[ws].LN[1].BR = 
{
	{connector_name = 'Rocket_Point_TLAM_1_1', recoilArgument = 401, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_1_2', recoilArgument = 401, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_1_3', recoilArgument = 401, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_1_4', recoilArgument = 401, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_3_1', recoilArgument = 403, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_3_2', recoilArgument = 403, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_3_3', recoilArgument = 403, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_3_4', recoilArgument = 403, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_2_1', recoilArgument = 406, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_2_2', recoilArgument = 406, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_2_3', recoilArgument = 406, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_2_4', recoilArgument = 406, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_4_1', recoilArgument = 408, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_4_2', recoilArgument = 408, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_4_3', recoilArgument = 408, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_4_4', recoilArgument = 408, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},

	{connector_name = 'Rocket_Point_TLAM_2_1', recoilArgument = 402, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_2_2', recoilArgument = 402, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_2_3', recoilArgument = 402, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_2_4', recoilArgument = 402, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_4_1', recoilArgument = 404, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_4_2', recoilArgument = 404, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_4_3', recoilArgument = 404, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TLAM_4_4', recoilArgument = 404, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_1_1', recoilArgument = 405, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_1_2', recoilArgument = 405, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_1_3', recoilArgument = 405, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_1_4', recoilArgument = 405, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_3_1', recoilArgument = 407, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_3_2', recoilArgument = 407, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_3_3', recoilArgument = 407, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_TASM_3_4', recoilArgument = 407, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}
-------------------------------------------------------------------------

GT.Name = "USS New Jersey 1984" -- folder name for Liveries
GT.DisplayName = _("[CWV] BB-62 USS New Jersey 1984") -- name in game in ME and on the tape at the bottom
GT.DisplayNameShort = _("Big J 1984") -- Label name
GT.Rate = 61000.000000 

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR", "long-range air defence optics"}, --optics types
				RADAR = {"ticonderoga search radar"}, --radar types
			};
GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 15;
GT.sensor.max_range_finding_target = 500;
----------------------------------------------------
GT.DetectionRange  	= GT.airFindDist;
GT.ThreatRange 		= GT.airWeaponDist;
GT.Singleton		= "no";
GT.mapclasskey		= "P0091000066"; --map icon >>MissionEditor\data\NewMap\images
GT.attribute		= {wsType_Navy,wsType_Ship,wsType_ArmedShip,wsType_GenericLightArmoredShip,
						"Aircraft Carriers", 
						"AircraftCarrier",
						"Cruisers",
						"RADAR_BAND1_FOR_ARM",
						"DetectionByAWACS",
};
					--unfortunately the list with these have since been hidden by ED along with the ships lua files
GT.Categories		= {
	{name = "Armed Ship"}, -- has weapons
	{name = "AircraftCarrier"}
};
				
-- categories in the mission editor 
GT.tags  = 
{
	"Battleship",
};
