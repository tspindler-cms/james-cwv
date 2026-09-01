declare_plugin("JJJ_new_jersey_89",
{
dirName		  = current_mod_path,
displayName   = _("USS New Jersey"),
shortName	  = "Big J",
version		  = "0.0.6",
state		  = "installed",
fileMenuName  = _("cwv_New_Jersey"),
developerName = "James J Jackson",
info		  = _("USS New Jersey, BB-62, circa 1989"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "BB-62 1989",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/new_jersey_1989.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/New_Jersey_1989_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")


plugin_done()
