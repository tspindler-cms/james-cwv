declare_plugin("jjj_Brooke_66",
{
dirName		  = current_mod_path,
displayName   = _("USS Brooke"),
shortName	  = "Brooke",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Brok"),
developerName = "James J Jackson",
info		  = _("USS Brooke, DEG-1, circa 1966"),

Skins =
{
	 {
	     name  = "DEG-1 1966",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/brok.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/brok_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/brok_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/brok_Tartar.lua")
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
