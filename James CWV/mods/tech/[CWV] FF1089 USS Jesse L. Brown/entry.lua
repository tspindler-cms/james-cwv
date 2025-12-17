declare_plugin("jjj_JLB_89",
{
dirName		  = current_mod_path,
displayName   = _("USS Jesse L. Brown"),
shortName	  = "Jesse L. Brown",
version		  = "0.0.3",
state		  = "installed",
fileMenuName  = _("CWV_JLB"),
developerName = "James J Jackson",
info		  = _("USS Jesse L. Brown, FF-1089, circa 1989"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "JLB",
		 dir   = "Skins/1"
	 },
},

})
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/JLB.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/JLB_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
