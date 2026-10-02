declare_plugin("jjj_Talbot_69",
{
dirName		  = current_mod_path,
displayName   = _("USS Talbot"),
shortName	  = "Talbot",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Tlbt"),
developerName = "James J Jackson",
info		  = _("USS Talbot, DEG-4, circa 1969"),

Skins =
{
	 {
	     name  = "DEG-4 1969",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Tlbt.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path.."/Database/Sensors/Tlbt_sensors.lua")
dofile(current_mod_path.."/Database/Weapons/Tlbt_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path.."/Database/Weapons/Tlbt_Tartar.lua")
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
