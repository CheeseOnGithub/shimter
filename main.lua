local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local window = library:CreateWindow("shimter hub") -- Creates the window
local Mods = window:CreateFolder("Pistol Mods")
local rifle = window:CreateFolder("Rifle Mods")
local ESPFolder = window:CreateFolder("ESP")
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local Humanoid = game.Players.LocalPlayer.Character.Humanoid


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

Mods:Toggle("auto reload", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.AutoReload = v
end)

Mods:Toggle("no damage drop off", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)


    weaponMod.DamageDropOffEnabled = v
end)

Mods:Toggle("full-auto", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Auto = v
end)

Mods:Slider("damage", 
    {
        min = 0,
        max = 9e9,
        precise = false
    },
    function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.BaseDamage = v
end)

Mods:Toggle("inf ammo", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    if v then
        weaponMod.Ammo = 9e9
        weaponMod.MaxAmmo = 9e9
        weaponMod.AmmoPerMag = 9e9
        weaponMod.LimitedAmmoEnabled = false
    else
        weaponMod.Ammo = 0
        weaponMod.MaxAmmo = 48
        weaponMod.AmmoPerMag = 13
        weaponMod.LimitedAmmoEnabled = true
    end
end)

Mods:Slider("range", 
    {
        min = 0,
        max = 9e9,
        precise = false
    },
    function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    weaponMod.Range = v
end)

Mods:Toggle("no recoil", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    if v then
        weaponMod.Recoil = 0
    else
        weaponMod.Recoil = 1
    end
end)

Mods:Toggle("no spread", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    if v then
        weaponMod.Spread = 0
    else
        weaponMod.Spread = 1
    end
end)

Mods:Toggle("no firing delay", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)
    
    if v then
        weaponMod.DelayBeforeFiring = 0
        weaponMod.DelayAfterFiring = 0
    else
        weaponMod.DelayBeforeFiring = 1
        weaponMod.DelayAfterFiring = 1
    end
        
end)

Mods:Toggle("wallbang", function(v)
    local weaponMod = require(game:GetService("Players").LocalPlayer.Backpack.HandGun.Setting)

    if v then
        weaponMod.PenetrationDepth = 9e9
        weaponMod.PenetrationAmount = 9e9
    else
        weaponMod.PenetrationDepth = 0
        weaponMod.PenetrationAmount = 0
    end
end)

-- [ RIFLE MODS ] --
rifle:Toggle("inf ammo", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    if v then
        rifleMod.Ammo = 9e9
        rifleMod.MaxAmmo = 9e9
        rifleMod.AmmoPerMag = 9e9
        rifleMod.LimitedAmmoEnabled = false
    else
        rifleMod.Ammo = 0
        rifleMod.MaxAmmo = 48
        rifleMod.AmmoPerMag = 13
        rifleMod.LimitedAmmoEnabled = true
    end
    
end)

rifle:Toggle("no recoil", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)
    if v then
        rifleMod.Recoil = 0
    else
        rifleMod.Recoil = 20
    end

end)

rifle:Toggle("no spread", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    if v then
        rifleMod.Spread = 0
    else
        rifleMod.Spread = 1
    end

end)

rifle:Toggle("no firing delay", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    if v then
        rifleMod.DelayBeforeFiring = 0
        rifleMod.DelayAfterFiring = 0
    else
        rifleMod.DelayBeforeFiring = 1
        rifleMod.DelayAfterFiring = 1
    end
end)

rifle:Toggle("full-auto", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Auto = v
end)

rifle:Toggle("no damage drop off", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.DamageDropOffEnabled = v

end)

rifle:Toggle("auto reload", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.AutoReload = v
end)

rifle:Toggle("wallbang", function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    if v then
        rifleMod.PenetrationDepth = 9e9
        rifleMod.PenetrationAmount = 9e9
    else
        rifleMod.PenetrationDepth = 0.3
        rifleMod.PenetrationAmount = 0
    end

end)


rifle:Slider("damage", 
    {
        min = 0,
        max = 9e9,
        precise = false
    },
    function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.BaseDamage = v
end)

rifle:Slider("range", 
    {
        min = 0,
        max = 9e9,
        precise = false
    },
    function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.Range = v
end)

rifle:Slider("bullet speed", {
    min = 0,
    max = 9e9,
    precise = false
}, function(v)
    local rifleMod = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("CombatRifle").Setting)

    rifleMod.BulletSpeed = v
end) 