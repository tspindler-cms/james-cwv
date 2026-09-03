-- USS Sacramento 91 by James J. Jackson

GT = {};
dofile(current_mod_path..'/Database/scripts/sac91_RunwaysAndRoutes.lua') -- the runways and taxiway lua file
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship) -- all ships have this

GT.visual = {}
GT.visual.shape = "sac91_dcs"  -- name of LODs lua
GT.visual.shape_dstr = "" -- if there is a destruction model it goes here

GT.life = 7300; -- hit points
GT.mass = 53000000; -- KGs
GT.max_velocity = 16.719 --M/S
GT.race_velocity = 12.1 --M/S
GT.economy_velocity = 7.7 --M/S 
GT.economy_distance = 13000 -- KM
GT.race_distance = 2.778e+006
GT.shipLength = 218.39 -- o.a in meters
GT.Width = 33 --meters
GT.Height = 42.136 --from sea level I think
GT.Length = 243.0 -- deck length I think
GT.DeckLevel = 9.2974 -- height of deck
GT.X_nose = 113.41 -- bow wave
GT.X_tail = -96 -- wake
GT.Tail_Width = 38 --wake width
GT.Gamma_max = 0.35 -- no idea
GT.Om = 0.05 --no idea
GT.speedup = 0.119249; --time it takes to accelerate
GT.R_min = 300; -- turn radius

GT.RCS = 1000000; -- new in 2.7 ----estimated RCS in square meters
GT.IR_emission_coeff = 0.9; -- new in 2.7 not sure the params

GT.TACAN = false;		--If it has TACAN say true if not say false or not have this entry
GT.ICLS = false; -- IF it has ICLS say true if not say false or not have this entry

GT.distFindObstacles = 130;

-- Aircraft complement
GT.numParking		= 1;
GT.Plane_Num_		= 0;
GT.Helicopter_Num_	= 1;
GT.Landing_Point = {-115.9,9.2974,0};

-- smoke density and position
GT.exhaust = {
	[1] = { size = 0.20, pos = {-54.086, 30.995, -1.1298}},
	[2] = { size = 0.20, pos = {-54.086, 30.995, 1.2358}},
	[3] = { size = 0.20, pos = {-56.324, 30.783, -1.1298}},
	[4] = { size = 0.20, pos = {-56.324, 30.783, 1.2358}}
};

GT.animation_arguments = {
	nav_lights = 0,
	radar1_rotation = 10,
	radar2_rotation = 11,
	radar3_rotation = 12,
	water_propeller = 13,
};
GT.radar1_period = 2.7; --speed
GT.radar2_period = 4;
GT.radar3_period = 2.2;

--Damage Model
GT.DM = {
	{ area_name = "Hull", area_arg = 70, area_life = 5000},
	{ area_name = "Bridge", area_arg = 71, area_life = 800},
	{ area_name = "Mast", area_arg = 72, area_life = 200},
	{ area_name = "Superstructure", area_arg = 73, area_life = 800},
	{ area_name = "Flightdeck", area_arg = 74, area_life = 500},
	{ area_name = "Deck", area_arg = 75, area_life = 800},
	{ area_name = "Funnel", area_arg = 76, area_life = 200},
	{ area_name = "Kingpost", area_arg = 77, area_life = 200},
	{ area_name = "T1", area_arg = 78, area_life = 50},
	{ area_name = "T2", area_arg = 79, area_life = 50},
	{ area_name = "T3", area_arg = 80, area_life = 50},
};

GT.airWeaponDist = 14630.0;  -- Max engagement range air threats (meters)
GT.airFindDist = 130000; -- Max detenction range air threats (meters)


--Radar info
GT.WS = {}
GT.WS.maxTargetDetectionRange = 56000;
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
--   SEA SPARROW  
-------------------------------------------------------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.seasparrow )
GT.WS[ws].area = 'T1'
GT.WS[ws].center = 'T1M'
GT.WS[ws].drawArgument1 = 1111
GT.WS[ws].drawArgument2 = 1112
GT.WS[ws].angles = {
					{math.rad(130), math.rad(-130), math.rad(0), math.rad(45)},
					};
GT.WS[ws].omegaY = math.rad(70);
GT.WS[ws].omegaZ = math.rad(70);
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].reference_angle_Z = math.rad(0);
GT.WS[ws].LN[1].launch_delay = 12;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8;
GT.WS[ws].LN[1].show_external_missile = false 
GT.WS[ws].LN[1].max_number_of_missiles_channels = 8;
GT.WS[ws].LN[1].BR = {
						{connector_name = 'SP_1', drawArgument = 1113},
						{connector_name = 'SP_2', drawArgument = 1114},
						{connector_name = 'SP_3', drawArgument = 1115},
						{connector_name = 'SP_4', drawArgument = 1116},
						{connector_name = 'SP_5', drawArgument = 1117},
						{connector_name = 'SP_6', drawArgument = 1118},
						{connector_name = 'SP_7', drawArgument = 1119},
						{connector_name = 'SP_8', drawArgument = 1120},
					};

-------------------------------------------------------- MK15 CIWS System -------------------------------------------

-- CIWS Phalanxs
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'T2'
GT.WS[ws].center = 'T2M'
GT.WS[ws].drawArgument1 = 1131
GT.WS[ws].drawArgument2 = 1132
GT.WS[ws].angles[1][1] = math.rad(-95);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].LN[1].fireAnimationArgument = 1133;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_CIWS_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'T3'
GT.WS[ws].center = 'T3M'
GT.WS[ws].drawArgument1 = 1141
GT.WS[ws].drawArgument2 = 1142
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(95);
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].LN[1].fireAnimationArgument = 1143;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_CIWS_2'

--------------------------- SAC91_radar ------------------------------------------
ws = GT_t.inc_ws()
local first_SAC91_tracker_id = ws
GT.WS[ws] = {
	area = 'Mast',
	center = 'RADAR1',
    omegaY = 2,
    omegaZ = 2,
    pidY = {p=100, i=0.05, d=12, inn = 50},
    pidZ = {p=100, i=0.05, d=12, inn = 50},
    angles = { {math.rad(180), math.rad(-180), math.rad(-90), math.rad(80)} },
    LN = {
        [1] = {
            type = 102,
            distanceMin = 1,
            distanceMax = 30000,
            reactionTime = 2.0,
            reflection_limit = 0.03,
			frequencyRange = {0.5e9, 0.58e9},
            ECM_K = 0.65,
            min_trg_alt = 5,
            max_trg_alt = 30480,
            max_number_of_missiles_channels = 2,
            beamWidth = math.rad(90),
        }
    }
}

local SAC91_TRACKERS = {{{'self', ws}}}

for i=2,13 do 
    ws = GT_t.inc_ws()
    GT.WS[ws] = {}
    set_recursive_metatable(GT.WS[ws], GT.WS[first_SAC91_tracker_id])
    table.insert(SAC91_TRACKERS, {{'self', ws}})
end
--------------------------- SAC_SPG49 tracker radar ------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].reference_angle_Z = math.rad(0)
GT.WS[ws].center = 'FCS1'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 1031
GT.WS[ws].drawArgument2 = 1032
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 400;
GT.WS[ws].LN[1].distanceMax = 300000;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 24400;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws1 = {{{"self", ws-1}}, {{"self", ws}}};
	

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].reference_angle_Z = math.rad(0)
GT.WS[ws].center = 'FCS2'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 1033
GT.WS[ws].drawArgument2 = 1034
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 400;
GT.WS[ws].LN[1].distanceMax = 300000;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 24400;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws2 = {{{"self", ws-1}}, {{"self", ws}}};			
-------------------------------------------------------------------------

GT.Name = "USS Sacramento 1991" -- folder name for Liveries
GT.DisplayName = _("[CWV] AOE-1 USS Sacramento 1991") -- name in game in ME and on the tape at the bottom
GT.DisplayNameShort = _("Sacramento class") -- Label name
GT.Rate = 53000.000000 

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR", "long-range air defence optics"}, --optics types
				RADAR = {"SAC91 air",
                    "SAC91 surface",}, --radar types
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
	{name = "HelicopterCarrier"}
};
				
-- categories in the mission editor 
GT.tags  =
{
	"Support",
};
