local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local window = library:CreateWindow("shimter hub") -- Creates the window
local Mods = window:CreateFolder("Pistol Mods")
local rifle = window:CreateFolder("Rifle Mods")
local ESPFolder = window:CreateFolder("ESP")
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()


game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "running anticheat bypass",
	Text = "wait a sec lol",
    Duration = 2,
})

local oldNamecall = nil
oldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local method = getnamecallmethod()

    if not checkcaller() and method == "Kick" then
        return wait(9e9)
    end

    return oldNamecall(Self, ...)
end)
task.wait(2)

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "done",
	Text = "have fun making kids cry",
	Duration = 3,
})
-- test
ESPFolder:Toggle("ESP", function(v)
    ESP:Toggle(v)
    ESP.Names = shared.namesEnabled
    ESP.Tracers = shared.tracersEnabled
end)

ESPFolder:ColorPicker("colour",Color3.fromRGB(255, 255, 255),function(v) --Default color
    ESP.Color = v
end)

ESPFolder:Toggle("names",function(v)
    ESP.Names = v
    shared.namesEnabled = v
end)

ESPFolder:Toggle("tracers",function(v)
    ESP.Tracers = v
    shared.tracersEnabled = v
end)

-- [ PISTOL MODS ] --

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

Mods:Button("wallbang", function()
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.PenetrationDepth = 9e9
    weaponMod.PenetrationAmount = 9e9
end)

-- [ RIFLE MODS ] --
rifle:Button("inf damage", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.BaseDamage = 9e9
end)

rifle:Button("inf ammo", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Ammo = 9e9
    rifleMod.MaxAmmo = 9e9
    rifleMod.AmmoPerMag = 9e9
    rifleMod.LimitedAmmoEnabled = false
end)

rifle:Button("inf range", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Range = 9e9
end)

rifle:Button("no recoil", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Recoil = 0
end)

rifle:Button("no spread", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Spread = 0
end)

rifle:Button("no firing delay", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.DelayBeforeFiring = 0
    rifleMod.DelayAfterFiring = 0
end)

rifle:Button("full-auto", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Auto = true
end)

rifle:Toggle("no damage drop off", function(bool)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.DamageDropOffEnabled = bool
end)

rifle:Toggle("auto reload", function(bool)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.AutoReload = bool
end)

rifle:Button("wallbang", function()
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.PenetrationDepth = 9e9
    rifleMod.PenetrationAmount = 9e9
end)
