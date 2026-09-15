dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds1.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

USS_Little_Rock_weapons = weapons:new()

USS_Little_Rock_weapons:addTurret(1, "GndTech/TurretRotation")
USS_Little_Rock_weapons:addLauncher(1, 1, ship_USN_152mm)

USS_Little_Rock_weapons:addTurret(2, "GndTech/TurretRotation")
USS_Little_Rock_weapons:addLauncher(2, 1, ship_USN_125mm)
USS_Little_Rock_weapons:addLauncher(2, 2, ship_USN_125mm)

USS_Little_Rock_weapons:addTurret(3, "GndTech/TurretRotation")
USS_Little_Rock_weapons:addLauncher(3, 1, ship_USN_125mm)
USS_Little_Rock_weapons:addLauncher(3, 2, ship_USN_125mm)

USS_Little_Rock_weapons:addTurret(14, "GndTech/TurretRotation")
USS_Little_Rock_weapons:addLauncher(14, 1, HARPOON)






