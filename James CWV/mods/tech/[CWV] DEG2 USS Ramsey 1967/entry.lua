declare_plugin("jjj_Ramsey_67",
{
dirName		  = current_mod_path,
displayName   = _("USS Ramsey"),
shortName	  = "Ramsey",
version		  = "0.0.7",
state		  = "installed",
fileMenuName  = _("CWV_Rmsy"),
developerName = "James J Jackson",
info		  = _("USS Ramsey, DEG-2, circa 1967"),

Skins =
{
	 {
	     name  = "DEG-2 1967",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Rmsy.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/Rmsy_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/Rmsy_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/Rmsy_Tartar.lua")
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
