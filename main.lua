local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local window = library:CreateWindow("shimter hub") -- Creates the window
local Main = window:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)
local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)


Main:Button("Anti-cheat bypass",function()
    local oldNamecall = nil

    oldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
        local Args = {...}
        local method = getnamecallmethod()

        if not checkcaller() and method == "Kick" then
            return wait(9e9)
        end

        return oldNamecall(Self, ...)
    end)
end)



Main:Button("Make your pistol op ", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Auto = true
    weaponMod.BaseDamage = 10000
    weaponMod.Ammo = 9e9
    weaponMod.MaxAmmo = 9e9
    weaponMod.AmmoPerMag = 9e9
    weaponMod.Range = 9e9
    weaponMod.ReloadTime = 2
    weaponMod.FireRate = 0.12
    weaponMod.Recoil = 0
    weaponMod.LimitedAmmoEnabled = false
    weaponMod.Spread = 0
    weaponMod.AutoReload = true
    weaponMod.DelayBeforeFiring = 0
    weaponMod.DelayAfterFiring = 0
    weaponMod.DamageDropOffEnabled = false
end)

Main:Label("^^^ Execute every respawn",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

Main:Toggle("Toggle",function(bool)
    shared.toggle = bool
    while shared.toggle do
        local ohTable1 = {
            ["Pitch"] = 1.2000000476837158,
            ["MaxDistance"] = 9999,
            ["Volume"] = 5,
            ["Silenced"] = false,
            ["SoundId"] = "rbxassetid://6667082259",
            ["EmitterSize"] = 70,
            ["Echo"] = true,
            ["Muzzle"] = game:GetService("Players").LocalPlayer.Backpack.HandGun.Handle.GunMuzzlePoint
        }
        local ohTable2 = {
            ["Enabled"] = false,
            ["EmitterSize"] = 10,
            ["CurrentAmmo"] = 8999999903,
            ["Muzzle"] = game:GetService("Players").LocalPlayer.Backpack.HandGun.Handle.GunMuzzlePoint,
            ["AmmoPerMag"] = 9000000000,
            ["Volume"] = 1,
            ["SoundId"] = "rbxassetid://3032849569",
            ["MaxDistance"] = 10000,
            ["Pitch"] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.PlayAudio:FireServer(ohTable1, ohTable2)
        wait(0.1)
    end
end)


Main:DestroyGui()

