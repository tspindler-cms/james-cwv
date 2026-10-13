declare_plugin("JJJ_Gyatt",
{
dirName		  = current_mod_path,
displayName   = _("USS Gyatt"),
shortName	  = "Gyatt",
version		  = "0.0.7",
state		  = "installed",
fileMenuName  = _("CWV_Gyatt"),
developerName = "James J. Jackson",
info		  = _("USS Gyatt, DDG-1, circa 1962"),

Skins =
{
	 {
	     name  = "DDG-1 1962",
		 dir   = "Skins/1"
	 },
},

})

--mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Gytt.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/Gytt_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/Gytt_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/Gytt_Terrier.lua")
dofile(current_mod_path.."/Database/db_ships.lua")


plugin_done()
