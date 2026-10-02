declare_plugin("jjj_Garcia_69",
{
dirName		  = current_mod_path,
displayName   = _("USS Garcia"),
shortName	  = "Garcia",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Grca"),
developerName = "James J Jackson",
info		  = _("USS Garcia, DE-1040, circa 1969"),

Skins =
{
	 {
	     name  = "DE-1040 1969",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Grca.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/Grca_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/Grca_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
