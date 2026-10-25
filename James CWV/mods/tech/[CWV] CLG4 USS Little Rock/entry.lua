declare_plugin("JJJ_Little_Rock_67",
{
dirName		  = current_mod_path,
displayName   = _("USS Little Rock"),
shortName	  = "Little Rock",
version		  = "0.0.7",
state		  = "installed",
fileMenuName  = _("JJJ_Little_Rock"),
developerName = "James J. Jackson",
info		  = _("USS Little Rock, CLG-4, circa 1967"),

Skins =
{
	 {
	     name  = "CLG-4 1967",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/LRK.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path .. "/Database/Sensors/LRK_sensors.lua")
dofile(current_mod_path .. "/Database/Weapons/LRK_Ammo.lua") -- any custom weapons the mod has
dofile(current_mod_path .. "/Database/Weapons/LRK_Talos.lua")

dofile(current_mod_path .. "/Database/db_ships.lua")


plugin_done()
