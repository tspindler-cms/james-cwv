declare_plugin("JJJ_enterprise_90",
{
	dirName		  = current_mod_path,
	displayName   = _("CVN-65 Enterprise"),
	shortName	  =   "Big-E 1990",
	version		  =   "0.0.6",
	state		  =   "installed",
	fileMenuName = _("CWV Enterprise 90"),
	developerName =   "TeTeT, James J. Jackson, Riko, Woogey",
	info		  =    _("USS Enterprise, CVN-65, circa 1990, Wikipedia:  In 1958, she became the first nuclear-powered aircraft carrier in the United States Navy, and the world, as well as the eighth United States naval vessel to bear the name."),
	encyclopedia_path = current_mod_path .. '/Encyclopedia',

	Skins =
	{
		{
			name  = "CVN-65 1990",
			dir   = "Skins/1"
		},
	},

})

mount_vfs_liveries_path (current_mod_path .. "/Liveries")
mount_vfs_model_path    (current_mod_path .. "/Shapes")
mount_vfs_texture_path	(current_mod_path .. "/Textures/CVN_6590.zip")
-- sensors
dofile(current_mod_path.."/Database/Sensors/CVN6590_sensors.lua")
dofile(current_mod_path .. "/Database/db_ships.lua")

plugin_done()
