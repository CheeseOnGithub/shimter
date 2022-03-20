local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local window = library:CreateWindow("shimter hub") -- Creates the window
local Main = window:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)
local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
local Mods = window:CreateFolder("Mods")

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


Main:DestroyGui()


Mods:Label("Execute every respawn",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

Mods:Toggle("auto reload", function(bool)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.AutoReload = bool
    rifleMod.AutoReload = bool
end)

Mods:Toggle("no damage drop off", function(bool)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)


    weaponMod.DamageDropOffEnabled = bool
    rifleMod.DamageDropOffEnabled = bool
end)

Mods:Button("full-auto", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.Auto = true
    rifleMod.Auto = true
end)

Mods:Button("inf damage", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.BaseDamage = 9e9
    rifleMod.BaseDamage = 9e9
end)

Mods:Button("inf ammo", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.Ammo = 9e9
    weaponMod.MaxAmmo = 9e9
    weaponMod.AmmoPerMag = 9e9
    weaponMod.LimitedAmmoEnabled = false
    rifleMod.Ammo = 9e9
    rifleMod.MaxAmmo = 9e9
    rifleMod.AmmoPerMag = 9e9
    rifleMod.LimitedAmmoEnabled = false
end)

Mods:Button("inf range", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.Range = 9e9
    rifleMod.Range = 9e9
end)

Mods:Button("no recoil", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.Recoil = 0
    rifleMod.Recoil = 0
end)

Mods:Button("no spread", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.Spread = 0
    rifleMod.Spread = 0
end)

Mods:Button("no firing delay", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:WaitForChild("CombatRifle").Setting)

    weaponMod.DelayBeforeFiring = 0
    weaponMod.DelayAfterFiring = 0
    rifleMod.DelayBeforeFiring = 0
    rifleMod.DelayAfterFiring = 0
end)