dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds1.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

USS_Sacramento_1991_weapons = weapons:new()

USS_Sacramento_1991_weapons:addTurret(1)
USS_Sacramento_1991_weapons:addLauncher(1, 1, _9M311)


USS_Sacramento_1991_weapons:addTurret(2)
USS_Sacramento_1991_weapons:addLauncher(2, 1, phalanx)


USS_Sacramento_1991_weapons:addTurret(3)
USS_Sacramento_1991_weapons:addLauncher(3, 1, phalanx)





