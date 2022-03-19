local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local window = library:CreateWindow("shimter hub") -- Creates the window
local Main = window:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)
local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
local Mods = window:CreateFolder("Mods")

Main:Toggle("Annoy people lol",function(bool)
    shared.toggle = bool
end)

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


Main:DestroyGui()


Mods:Label("Execute every respawn",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

Mods:Toggle("auto reload", function(bool)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.AutoReload = bool
end)

Mods:Toggle("no damage drop off", function(bool)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.DamageDropOffEnabled = bool
end)

Mods:Button("full-auto", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Auto = true
end)

Mods:Button("inf damage", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.BaseDamage = 9e9
end)

Mods:Button("inf ammo", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Ammo = 9e9
    weaponMod.MaxAmmo = 9e9
    weaponMod.AmmoPerMag = 9e9
    weaponMod.LimitedAmmoEnabled = false
end)

Mods:Button("inf range", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Range = 9e9
end)

Mods:Button("no recoil", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Recoil = 0
end)

Mods:Button("no spread", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Spread = 0
end)

Mods:Button("no firing delay", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.DelayBeforeFiring = 0
    weaponMod.DelayAfterFiring = 0
end)

while shared.toggle do
    game:GetService("ReplicatedStorage").Remotes:WaitForChild("PlayAudio"):FireServer(ohTable1, ohTable2)
    task.wait(0.1)
end