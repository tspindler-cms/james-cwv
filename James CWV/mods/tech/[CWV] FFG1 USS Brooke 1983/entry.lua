declare_plugin("jjj_Brooke_83",
{
dirName		  = current_mod_path,
displayName   = _("USS Brooke 1983"),
shortName	  = "Brooke",
version		  = "0.0.8",
state		  = "installed",
fileMenuName  = _("CWV_BrokF"),
developerName = "James J Jackson",
info		  = _("USS Brooke, FFG-1, circa 1983"),

Skins =
{
	 {
	     name  = "FFG-1 1983",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/BrokF.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/BrokF_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/BrokF_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/BrokF_SM1.lua")
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
