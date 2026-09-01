declare_plugin("JJJ_Iowa_84",
{
dirName		  = current_mod_path,
displayName   = _("USS Iowa"),
shortName	  = "The Big Stick",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("cwv_Iowa"),
developerName = "James J Jackson",
info		  = _("USS Iowa, BB-61, circa 1984"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "BB-61 1984",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/Iowa_1984.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/Iowa_1984_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")


plugin_done()
