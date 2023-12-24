if CLIENT then
    killicon.Add( "tfa_kf2_riotshield", "vgui/hud/tfa_kf2_riotshield", Color( 225, 46, 46, 255 ) )
end 

SWEP.Base				= "tfa_kf2_base"
SWEP.Author				= "Jade, CommonProp, Global" --Author Tooltip
SWEP.Category			= "TFA Killing Floor 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.SubCategory        = "SWAT" -- Spawnmenu subcategory.
SWEP.Description        = "Iron sight brings up shield to reduce 60% frontal damage from most attacks."
SWEP.Type				= "Machine Pistol"
SWEP.Purpose			= "Choice of full-auto and semi-auto fire modes." --Purpose Tooltip
SWEP.PrintName			= "Riot Shield & Glock 18"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.Spawnable			= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.

SWEP.MuzzleFlashEffect          = "kf2_muzzle_pistol"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_KF2.G18.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.EchoFire = Sound("TFA_KF2.9MM.EchoFire") -- This is the distant sound of the weapon, when you shoot. Yeah.
SWEP.Primary.PenetrationMultiplier = 10 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = (engine.ActiveGamemode() == "zombiesurvival" and 62) or 28 -- Damage, in standard damage points.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM = 1100 -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi = 342

SWEP.Primary.LoopSound          = Sound("TFA_KF2.G18.FireLoop") -- Looped fire sound, unsilenced
SWEP.Primary.LoopSoundTail      = Sound("TFA_KF2.G18.FireLoopEnd") -- Loop end/tail sound, unsilenced
SWEP.Primary.LoopSoundAutoOnly  = true

SWEP.RiotShield = true
SWEP.RiotShieldCone = 65 -- Think of the player's view direction as being the middle of a sector, with the sector's angle being this
SWEP.RiotShieldMaximum = (engine.ActiveGamemode() == "zombiesurvival" and 0.1) or 0.4 --Multiply damage by this for a maximumly effective block
SWEP.RiotShieldImpact = Sound("TFA_KF2.Generic.ImpactShieldHit") -- Impact sound
SWEP.RiotShieldDamageTypes = {
	DMG_SLASH,DMG_CLUB,DMG_BULLET,DMG_BLAST -- Damage types that can be blocked
}

-- Selective Fire Stuff
SWEP.FireModes = {"Auto", "Semi"}
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?

--Ammo Related
SWEP.Primary.ClipSize = 33 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 8 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot

--Recoil Related
SWEP.Primary.KickUp = 0.45 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.1 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.24 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .4 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related
SWEP.Primary.Spread = .028 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = SWEP.Primary.Spread / 3 -- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.65 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4.9 --How much the spread recovers, per second. Example val: 3

--Bash
SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashEnd = 0.97
SWEP.Secondary.BashDamage = 60
SWEP.Secondary.BashDelay = 0.57

--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/tfa_kf2/riotshield/c_kf2_riotshield.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 80			-- This controls how big the viewmodel looks.  Less is more.
SWEP.IronViewModelFOV	    = 85		-- This controls how big the viewmodel looks.  Less is more.
SWEP.VMPos = Vector(0, 3.94, -2.76) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CrouchPos = Vector(0, 3.94, -2.76) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.CrouchAng = Vector(0, 0, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point

SWEP.VElements = { --to anyone reading this wondering how the glass renders correctly on top of the hands, translucent = true is the answer to your problems
	["glass"] = { type = "Model", model = "models/weapons/tfa_kf2/riotshield/c_kf2_riotshield_glass.mdl", bone = "Root", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, translucent = true, active = true, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["valvebiped.bip01_l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(5.794, 7.228, -0.569), angle = Angle(-8.054, -43.413, 0) }
}

SWEP.HolsterSound = Sound("TFA_KF2.G18.Holster")

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_kf2/riotshield/w_kf2_riotshield.mdl" --Wmodel path
SWEP.IronSightHoldTypeOverride = "camera"
SWEP.HoldType = "duel" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(0, 3.94, -2.76)
SWEP.RunSightsAng = Vector(0, 0, 0)
SWEP.SafetyPos = Vector(0, 3.94, -2.76)
SWEP.SafetyAng = Vector(-15, 0, 0)

--[[IRONSIGHTS]]--
SWEP.Secondary.IronFOV = 64 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(0,0,0)
SWEP.IronSightsAng = Vector(0, 0, 0)

--[[INSPECTION]]--
SWEP.InspectPos = Vector(3.811, -3.977, -1.881)
SWEP.InspectAng = Vector(20.036, 45.743, 9.546)

--Shell eject override
SWEP.MagModel = Model("models/weapons/tfa_kf2/riotshield/glock18_mag.mdl")
SWEP.ShellModel = "models/weapons/tfa_kf2/shared/glock18_shell.mdl"

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
		{time = 0.28, type = "sound", value = Sound("TFA_KF2.G18.Deploy")},
	},
	[ACT_VM_RELOAD] = {
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.G18.MagOutHalf")},
		{time = 0.86, type = "sound", value = Sound("TFA_KF2.G18.MagInHalf")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.G18.MagOutEmpty")},
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.95, type = "sound", value = Sound("TFA_KF2.G18.MagInEmpty")},
		{time = 1.9, type = "sound", value = Sound("TFA_KF2.G18.SlideForward")},
	},
	["Bash"] = {
		{time = 0.37, type = "sound", value = Sound("TFA_KF2.G18.Bash")},
	},
	["Reload_Half_Elite"] = {
		{time = 0.24, type = "sound", value = Sound("TFA_KF2.G18.MagOutHalfElite")},
		{time = 0.94, type = "sound", value = Sound("TFA_KF2.G18.MagInHalfElite")},
	},
	["Reload_Empty_Elite"] = {
		{time = 0.4, type = "sound", value = Sound("TFA_KF2.G18.MagOutEmptyElite")},
		{time = 0.4, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 1, type = "sound", value = Sound("TFA_KF2.G18.MagInEmptyElite")},
		{time = 1.5, type = "sound", value = Sound("TFA_KF2.G18.SlideForwardElite")},
	},
	["Guncheck_v1"] = {
		{time = 0.23, type = "sound", value = Sound("TFA_KF2.G18.NadeThrow1")},
		{time = 0.32, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.92, type = "sound", value = Sound("TFA_KF2.G18.NadeThrow2")},
		{time = 1.01, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v2"] = {
		{time = 0.19, type = "sound", value = Sound("TFA_KF2.Generic.ClothMix")},
		{time = 0.19, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v1_Empty"] = {
		{time = 0.23, type = "sound", value = Sound("TFA_KF2.G18.NadeThrow1")},
		{time = 0.32, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.92, type = "sound", value = Sound("TFA_KF2.G18.NadeThrow2")},
		{time = 1.01, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v2_Empty"] = {
		{time = 0.19, type = "sound", value = Sound("TFA_KF2.Generic.ClothMix")},
		{time = 0.19, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
}

SWEP.StatusLengthOverride = {
	["Reload_Half"] = 1.4,
	["Reload_Half_Elite"] = 1.2,
	["Reload_Empty"] = 2,
	["Reload_Empty_Elite"] = 1.4,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW] = 0.5,
	[ACT_VM_DRAW_EMPTY] = 0.5,
	["Reload_Half"] = 1.96,
	["Reload_Half_Elite"] = 1.58,
	["Reload_Empty"] = 2.1,
	["Reload_Empty_Elite"] = 1.65,
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
		["value_is_empty"] = "Shoot_Iron_Last", -- Number for act, String/Number for sequence
		["value_empty"] = "Shoot_Last",
		["transition"] = true
	}, -- Looping End
}

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_In", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_In_Empty",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_Loop", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_Loop_Empty",
		["is_idle"] = true
	}, -- looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_Out", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_Out_Empty",
		["transition"] = true
	} -- Outward transition
}

SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Iron_Shield_Up", -- Number for act, String/Number for sequence
	    ["value_empty"] = "Iron_Shield_Up_Empty",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_Iron", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_Iron_Empty",
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Iron_Shield_Down", -- Number for act, String/Number for sequence
	    ["value_empty"] = "Iron_Shield_Down_Empty",
		["transition"] = true
	}, -- Outward transition
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
		["value"] = ACT_VM_PRIMARYATTACK_1, -- Number for act, String/Number for sequence
		["value_last"] = ACT_VM_PRIMARYATTACK_2,
	} -- What do you think
}

DEFINE_BASECLASS(SWEP.Base)
