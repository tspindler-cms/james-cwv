declare_plugin("jjj_Talbot_84",
{
dirName		  = current_mod_path,
displayName   = _("USS Talbot 1984"),
shortName	  = "Talbot",
version		  = "0.0.8",
state		  = "installed",
fileMenuName  = _("CWV_TlbtF"),
developerName = "James J Jackson",
info		  = _("USS Talbot, FFG-4, circa 1984"),

Skins =
{
	 {
	     name  = "FFG-4 1984",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/TlbtF.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/TlbtF_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/TlbtF_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/TlbtF_SM1.lua")
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
