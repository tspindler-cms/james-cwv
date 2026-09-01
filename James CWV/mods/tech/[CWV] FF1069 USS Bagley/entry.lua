declare_plugin("jjj_Bagley_87",
{
dirName		  = current_mod_path,
displayName   = _("USS Bagley"),
shortName	  = "Bagley",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("CWV_Bagley"),
developerName = "James J Jackson",
info		  = _("USS Bagley, FF-1069, circa 1987"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "FF-1069 1987",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Bagley.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/Bagley_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
