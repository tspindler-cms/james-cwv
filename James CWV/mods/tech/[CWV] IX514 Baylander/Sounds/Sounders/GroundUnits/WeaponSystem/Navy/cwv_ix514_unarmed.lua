dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

cwv_IX514_unarmed_weapons = weapons:new()

cwv_IX514_unarmed_weapons:addTurret(1)
cwv_IX514_unarmed_weapons:addLauncher(1, 1, machinegun_12_7_M2)

cwv_IX514_unarmed_weapons:addTurret(2)
cwv_IX514_unarmed_weapons:addLauncher(2, 1, machinegun_12_7_M2)