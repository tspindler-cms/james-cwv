dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds1.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

USS_Ramsey_1967_weapons = weapons:new()

USS_Ramsey_1967_weapons:addTurret(1)
USS_Ramsey_1967_weapons:addLauncher(1, 1, ship_USN_125mm)
USS_Ramsey_1967_weapons:addLauncher(1, 2, ship_USN_125mm)

USS_Ramsey_1967_weapons:addTurret(12)
USS_Ramsey_1967_weapons:addLauncher(12, 1, ship_MK41_SM2)

USS_Ramsey_1967_weapons:addTurret(13)
USS_Ramsey_1967_weapons:addLauncher(13, 1, HARPOON)

-- _9A33, _9M120, _9M311, M26, ship_MK41_SM2, HARPOON, 



