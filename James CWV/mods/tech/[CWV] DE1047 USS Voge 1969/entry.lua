declare_plugin("jjj_Voge_69",
{
dirName		  = current_mod_path,
displayName   = _("USS Voge"),
shortName	  = "Voge",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Voge"),
developerName = "James J Jackson",
info		  = _("USS Voge, DE-1047, circa 1969"),

Skins =
{
	 {
	     name  = "DE-1047 1969",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Voge.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/Voge_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/Voge_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
