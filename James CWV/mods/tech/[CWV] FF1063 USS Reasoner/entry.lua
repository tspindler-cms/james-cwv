declare_plugin("jjj_Reasoner_82",
{
dirName		  = current_mod_path,
displayName   = _("USS Reasoner"),
shortName	  = "Reasoner",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Reasoner"),
developerName = "James J Jackson",
info		  = _("USS Reasoner, FF-1063, circa 1982"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "FF-1063 1982",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Reasoner.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods
dofile(current_mod_path.."/Database/Sensors/Reasoner_sensors.lua")
dofile(current_mod_path..'/Weapons/Reasoner_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
