declare_plugin("JJJ_Sacramento_91",
{
dirName		  = current_mod_path,
displayName   = _("USS Sacramento 1991"),
shortName	  = "Sacramento 91",
version		  = "0.0.5",
state		  = "installed",
fileMenuName  = _("JJJ_Sacramento_91"),
developerName = "James J. Jackson",
info		  = _("USS Sacramento, AOE-1, circa 1991"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "Sacramento 91",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Sacramento91.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/sac91_sensors.lua")
dofile(current_mod_path .."/Database/db_ships.lua")


plugin_done()
