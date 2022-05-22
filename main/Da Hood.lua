-- Team check disabler

local AimingIgnored = Aiming.Ignored
AimingIgnored.TeamCheck(false)

local AimingSettings = Aiming.Settings
AimingSettings.Ignored.IgnoreLocalTeam = false

-- check if down
local AimingChecks = Aiming.Checks
local AimingUtilities = Aiming.Utilities
function AimingChecks.Custom(Player)
  
local Character = AimingUtilities.Character(Player)
local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
  
  
 -- check 2
   if (KOd or Grabbed) then
        return false
    end
    return true
end

-- return
return Aiming
