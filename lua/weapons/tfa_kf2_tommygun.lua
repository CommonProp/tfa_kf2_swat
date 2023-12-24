if CLIENT then
    killicon.Add( "tfa_kf2_tommygun", "vgui/hud/tfa_kf2_tommygun", Color( 225, 46, 46, 255 ) )
end 

SWEP.Base				= "tfa_kf2_base"
SWEP.Author				= "Jade, CommonProp, Global" --Author Tooltip
SWEP.Category			= "TFA Killing Floor 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.SubCategory        = "SWAT" -- Spawnmenu subcategory.
SWEP.Description        = "Known as the Chicago Typewriter by some, it is a suitable gun to write your name out with."
SWEP.Type				= "Sub-machine Gun"
SWEP.Purpose			= "Choice of full-auto and semi-auto fire modes." --Purpose Tooltip
SWEP.PrintName			= "Tommy Gun"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.Spawnable			= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.

SWEP.MuzzleFlashEffect          = "kf2_muzzle_smg"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_KF2.Thompson.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.EchoFire = Sound("TFA_KF2.Thompson.EchoFire") -- This is the distant sound of the weapon, when you shoot. Yeah.
SWEP.Primary.PenetrationMultiplier = 10 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = (engine.ActiveGamemode() == "zombiesurvival" and 76) or 30 -- Damage, in standard damage points.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM = 720 -- This is in Rounds Per Minute / RPM

SWEP.Primary.Sound_DryFire = Sound("TFA_KF2.Thompson.DryFire") -- custom for tommy
SWEP.Primary.LoopSound          = Sound("TFA_KF2.Thompson.FireLoop") -- Looped fire sound, unsilenced
SWEP.Primary.LoopSoundTail      = Sound("TFA_KF2.Thompson.FireLoopEnd") -- Loop end/tail sound, unsilenced
SWEP.Primary.LoopSoundAutoOnly  = true

-- Selective Fire Stuff
SWEP.FireModes = {"Auto", "Semi"}
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?

--Ammo Related
SWEP.Primary.ClipSize = 50 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 8 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "smg1" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot

--Recoil Related
SWEP.Primary.KickUp = 0.27 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.2 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.2 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .5 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related
SWEP.Primary.Spread = .02 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = SWEP.Primary.Spread / 3 -- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 2.85 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.65 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4.9 --How much the spread recovers, per second. Example val: 3

--Bash
SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashEnd = 0.95
SWEP.Secondary.BashDamage = 26
SWEP.Secondary.BashDelay = 0.44

--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/tfa_kf2/tommygun/c_kf2_tommygun.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 60		-- This controls how big the viewmodel looks.  Less is more.
SWEP.IronViewModelFOV	    = 60		-- This controls how big the viewmodel looks.  Less is more.
SWEP.VMPos = Vector(3.54, 1.97, -1.97) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CrouchPos = Vector(3.54, 1.97, -1.97) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.CrouchAng = Vector(0, 0, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point

SWEP.HolsterSound = Sound"TFA_KF2.Generic.RifleRattle"

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_kf2/tommygun/w_kf2_tommygun.mdl" --Wmodel path
SWEP.HoldType = "smg" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(3.54, 1.97, -1.97)
SWEP.RunSightsAng = Vector(0, 0, 0)
SWEP.SafetyPos = Vector(3.54, 1.97, -1.97)
SWEP.SafetyAng = Vector(-10.143, 10.809, 0)

--[[IRONSIGHTS]]--
SWEP.Secondary.IronFOV = 70 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(0, 1.97, 0)
SWEP.IronSightsAng = Vector(-0.2, 0, 0)

--[[INSPECTION]]--
SWEP.InspectPos = Vector(7.811, -0.977, -2.481)
SWEP.InspectAng = Vector(14.036, 32.743, 4.546)

--Shell eject override
SWEP.MagModel = Model("models/weapons/tfa_kf2/tommygun/tommygun_mag.mdl")
SWEP.ShellModel = "models/weapons/tfa_kf2/shared/tommygun_shell.mdl"
SWEP.ShellScale = 1.2

--[[ATTACHMENTS]]--
SWEP.Attachments = {
--	[1] = { atts = { "skill_swat_tacticalmovement" }, order = 1 },
	[2] = { atts = { "skill_shared_tacticalreload" }, order = 2 },
--	[3] = { atts = { "skill_swat_specialammunition" }, order = 3 },
--	[4] = { atts = { "skill_swat_cripple" }, order = 4 },
}

--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0.17, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
	},
	[ACT_VM_RELOAD] = {
		{time = 0.57, type = "sound", value = Sound("TFA_KF2.Thompson.DrumOut")},
		{time = 1.57, type = "sound", value = Sound("TFA_KF2.Thompson.DrumInShort")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 0.26, type = "sound", value = Sound("TFA_KF2.Thompson.Bolt")},
		{time = 1.4, type = "sound", value = Sound("TFA_KF2.Thompson.DrumOut")},
		{time = 1.5, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 2.36, type = "sound", value = Sound("TFA_KF2.Thompson.DrumInShort")},
	},
	["Bash"] = {
		{time = 0.3, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 0.4, type = "sound", value = Sound("TFA_KF2.Generic.Bash")},
	},
	["Bash_Empty"] = {
		{time = 0.3, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 0.4, type = "sound", value = Sound("TFA_KF2.Generic.Bash")},
	},
	["Reload_Half_Elite"] = {
		{time = 0.45, type = "sound", value = Sound("TFA_KF2.Thompson.DrumOut")},
		{time = 1.28, type = "sound", value = Sound("TFA_KF2.Thompson.DrumInShort")},
	},
	["Reload_Empty_Elite"] = {
		{time = 0.26, type = "sound", value = Sound("TFA_KF2.Thompson.Bolt")},
		{time = 0.83, type = "sound", value = Sound("TFA_KF2.Thompson.DrumOut")},
		{time = 0.95, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 1.91, type = "sound", value = Sound("TFA_KF2.Thompson.DrumInShort")},
	},
	["Guncheck_v1"] = {
		{time = 0.77, type = "sound", value = Sound("TFA_KF2.Thompson.DrumOut")},
		{time = 1.37, type = "sound", value = Sound("TFA_KF2.Thompson.DrumInShort")},
	},
	["Guncheck_v2"] = {
		{time = 0.18, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 2.1, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
	},
	["Guncheck_v3"] = {
		{time = 0.1, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 1.14, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
	},
	["Guncheck_v2_Empty"] = {
		{time = 0.18, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 2.1, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
	},
	["Guncheck_v3_Empty"] = {
		{time = 0.1, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
		{time = 1.14, type = "sound", value = Sound("TFA_KF2.Generic.RifleRattle")},
	},
}

SWEP.StatusLengthOverride = {
	["Reload_Half"] = 1.75,
	["Reload_Half_Elite"] = 1.5,
	["Reload_Empty"] = 2.52, 
	["Reload_Empty_Elite"] = 2.18, 
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW] = 0.6,
	[ACT_VM_DRAW_EMPTY] = 0.6,
	["Reload_Half"] = 2.31,
	["Reload_Half_Elite"] = 1.8,
	["Reload_Empty"] = 2.96,
	["Reload_Empty_Elite"] = 2.31,
}

SWEP.ShootAnimation = {
	["in"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "ShootLoop_Start", -- Number for act, String/Number for sequence
	 	["value_is"] = "ShootLoop_Iron_Start", -- Number for act, String/Number for sequence
	 	["transition"] = true
	 }, -- Looping Start, fallbacks to loop
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ShootLoop", -- Number for act, String/Number for sequence,
		["value_is"] = "ShootLoop_Iron", -- Number for act, String/Number for sequence,
		["is_idle"] = true,
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "ShootLoop_End", -- Number for act, String/Number for sequence
		["value_is"] = "ShootLoop_Iron_End", -- Number for act, String/Number for sequence
		["value_is_empty"] = "ShootLoop_Iron_End_Last", -- Number for act, String/Number for sequence
		["value_empty"] = "ShootLoop_End_Last",
		["transition"] = true
	}, -- Looping End
}

DEFINE_BASECLASS(SWEP.Base)