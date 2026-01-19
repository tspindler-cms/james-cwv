declare_plugin("JJJ_new_jersey_84",
{
dirName		  = current_mod_path,
displayName   = _("USS New Jersey"),
shortName	  = "Big J",
version		  = "0.0.4",
state		  = "installed",
fileMenuName  = _("cwv_New_Jersey"),
developerName = "James J Jackson",
info		  = _("USS New Jersey, BB-62, circa 1984"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "New_Jersey_1984",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/new_jersey_1984.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/New_Jersey_1984_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")


plugin_done()
