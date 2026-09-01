declare_plugin("jjj_Badger_82",
{
dirName		  = current_mod_path,
displayName   = _("USS Badger"),
shortName	  = "Badger",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Badger"),
developerName = "James J Jackson",
info		  = _("USS Badger, FF-1071, circa 1982"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "FF-1071 1982",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Badger.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods
dofile(current_mod_path.."/Database/Sensors/Badger_sensors.lua")
dofile(current_mod_path..'/Weapons/Badger_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
