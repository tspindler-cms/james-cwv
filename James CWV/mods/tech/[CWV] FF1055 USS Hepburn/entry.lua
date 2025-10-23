declare_plugin("jjj_Hepburn_91",
{
dirName		  = current_mod_path,
displayName   = _("USS Hepburn"),
shortName	  = "Hepburn",
version		  = "1.0.0",
state		  = "installed",
fileMenuName  = _("vwv Hepburn"),
developerName = "James J Jackson",
info		  = _("USS Hepburn, FF-1055, circa 1991"),
encyclopedia_path = current_mod_path .. '/Encyclopedia',

Skins =
{
	 {
	     name  = "Hepburn",
		 dir   = "Skins/1"
	 },
},

})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures/hepburn.zip") -- I use unique names to cut down on any errors and combatibility clashes with other mods

dofile(current_mod_path..'/Weapons/Hepburn_Ammo.lua') -- any custom weapons the mod has
dofile(current_mod_path .."/Database/db_ships.lua")

plugin_done()
