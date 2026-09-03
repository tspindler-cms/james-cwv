declare_plugin("JJJ_A_Burke",
----- USS Arleigh Burke DDG-51 = Arleigh Burke Class Guide Missile Destroyer
{
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("JJJ A_Burke"),
version		 = "0.0.6",
state		 = "installed",
info		 = _("USS Arleigh Burke (DDG-51)"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',
-- https://en.wikipedia.org/wiki/USS_Arleigh_Burke_(DDG-51)
Skins =
	{
		{
			name  = "DDG-51 1991",
			dir   = "Skins/1"
		},
	},

})

----------------------------------------------------------------------------------------
---General
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/A_Burke.zip")

-- sensors
dofile(current_mod_path.."/Database/Sensors/A_Burke_sensors.lua")

-- weapons
dofile(current_mod_path..'/Database/Weapons/A_Burke_weapons.lua')

--Ship
dofile(current_mod_path..'/Database/Navy/A_Burke.lua')
plugin_done()

