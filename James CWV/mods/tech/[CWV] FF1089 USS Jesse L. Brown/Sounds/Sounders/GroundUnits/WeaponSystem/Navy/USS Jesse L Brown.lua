dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

USS_Jesse_L_Brown_weapons = weapons:new()

USS_Jesse_L_Brown_weapons:addTurret(1)
USS_Jesse_L_Brown_weapons:addLauncher(1, 1, ship_USN_125mm)
USS_Jesse_L_Brown_weapons:addLauncher(1, 2, ship_USN_125mm)

USS_Jesse_L_Brown_weapons:addTurret(2)
USS_Jesse_L_Brown_weapons:addLauncher(2, 1, phalanx)

USS_Jesse_L_Brown_weapons:addTurret(3)
USS_Jesse_L_Brown_weapons:addLauncher(3, 1, HARPOON)



