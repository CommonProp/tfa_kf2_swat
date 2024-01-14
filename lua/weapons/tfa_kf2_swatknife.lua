if CLIENT then
    killicon.Add( "tfa_kf2_swatknife", "vgui/hud/tfa_kf2_swatknife", Color( 225, 46, 46, 255 ) )
end 

SWEP.Base				= "tfa_kf2_melee_base"
SWEP.Author				= "Jade, CommonProp, Global" --Author Tooltip
SWEP.Category			= "TFA Killing Floor 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.SubCategory        = "SWAT" -- Spawnmenu subcategory.
SWEP.Description        = "It's a knife. It cuts things. Tactical things."
SWEP.Type				= "Knife"
SWEP.Purpose			= "Primary - fast slash attack, Hold for combo attack. Secondary - heavy slash attack. Alt - block/stab (E + BASH)" --Purpose Tooltip
SWEP.PrintName			= "Tactical Knife"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.Spawnable			= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.


-- clean on top, mess on bottom :D



SWEP.ViewModel			= "models/weapons/tfa_kf2/swatknife/c_kf2_swatknife.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 70		-- This controls how big the viewmodel looks.  Less is more.
SWEP.IronViewModelFOV	    = 59		-- This controls how big the viewmodel looks.  Less is more.


SWEP.VMPos = Vector(3.94, 3.94, 0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CrouchPos = Vector(3.94, 3.94, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.CrouchAng = Vector(0, 0, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.RunSightsPos = Vector(3.94, 3.94, 0)
SWEP.RunSightsAng = Vector(0, 0, 0)
SWEP.InspectPos = Vector(3.94, 3.94, 0)
SWEP.InspectAng = Vector(0, 0, 0)

SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/tfa_kf2/w_crovel.mdl"
SWEP.HoldType = "melee2"
SWEP.Primary.Directional = true
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.DisableIdleAnimations = false

SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(100, 0, 0), -- Trace arc cast
		["dmg"] = 86 * 0.7, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.3, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.22,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "R", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(-75, 0, 0), -- Trace arc cast
		["dmg"] = 86 * 0.7, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.3, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "L", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, -70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.3, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "F", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_VM_PULLBACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.3, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "B", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_KNIFE, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CL", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_PRONE_SPADE, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CR", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_PRONE_KNIFE, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CFL", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_SPADE, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CFR", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_BAZOOKA, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CBL", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	},
	{
		["act"] = ACT_DOD_PRIMARYATTACK_PRONE_BAZOOKA, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, 70), -- Trace arc cast
		["dmg"] = 86, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.2, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.26,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 0.5, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "CBR", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld",
		["combotime"] = 0.1
	}
}

SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(100, 0, 0), -- Trace arc cast
		["dmg"] = 140 * 0.7, --Damage
		["dmgtype"] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.7, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.SwingHard", -- Sound ID
		["snd_delay"] = 0.5,
		["viewpunch"] = Angle(1, -5, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "R", --Swing dir,
		["hitflesh"] = "TFA_KF2_MACE.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld"
	},
	{
		["act"] = ACT_VM_MISSRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(-75, 0, 0), -- Trace arc cast
		["dmg"] = 140 * 0.7, --Damage
		["dmgtype"] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.6, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.SwingHard", -- Sound ID
		["snd_delay"] = 0.5,
		["viewpunch"] = Angle(1, 5, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "L", --Swing dir,
		["hitflesh"] = "TFA_KF2_MACE.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld"
	},
	{
		["act"] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, -70), -- Trace arc cast
		["dmg"] = 140, --Damage
		["dmgtype"] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.6, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.SwingHard", -- Sound ID
		["snd_delay"] = 0.5,
		["viewpunch"] = Angle(5, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "F", --Swing dir,
		["hitflesh"] = "TFA_KF2_MACE.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld"
	},
	{
		["act"] = ACT_VM_PULLBACK_HIGH, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 16 * 4.5, -- Trace distance
		["dir"] = Vector(0, 20, -70), -- Trace arc cast
		["dmg"] = 140, --Damage
		["dmgtype"] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		["delay"] = 0.7, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = "TFA_KF2_CROVEL.Swing", -- Sound ID
		["snd_delay"] = 0.5,
		["viewpunch"] = Angle(5, 0, 0), --viewpunch angle
		["end"] = 0.6, --time before next attack
		["hull"] = 16, --Hullsize
		["direction"] = "B", --Swing dir,
		["hitflesh"] = "TFA_KF2_CROVEL.HitFlesh",
		["hitworld"] = "TFA_KF2_CROVEL.HitWorld"
	}
}

SWEP.AllowSprintAttack = false

SWEP.CanBlock = true
SWEP.BlockAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_DEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	}, --Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_IDLE_DEPLOYED, --Number for act, String/Number for sequence
		["is_idle"] = true
	},--looping animation
	["hit"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD_DEPLOYED, --Number for act, String/Number for sequence
		["is_idle"] = true
	},--when you get hit and block it
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_UNDEPLOY, --Number for act, String/Number for sequence
		["transition"] = true
	} --Outward transition
}
SWEP.BlockCone = 100 --Think of the player's view direction as being the middle of a sector, with the sector's angle being this
SWEP.BlockDamageMaximum = 0.0 --Multiply damage by this for a maximumly effective block
SWEP.BlockDamageMinimum = 0.5 --Multiply damage by this for a minimumly effective block
SWEP.BlockTimeWindow = 0.5 --Time to absorb maximum damage
SWEP.BlockTimeFade = 0.5 --Time for blocking to do minimum damage.  Does not include block window
SWEP.BlockSound = "TFA_KF2_CROVEL.Block"
SWEP.BlockDamageCap = 80
SWEP.BlockDamageTypes = {
	DMG_SLASH,DMG_CLUB
}

SWEP.Secondary.CanBash = true
SWEP.Secondary.BashDamage = 60
SWEP.Secondary.BashDelay = 0.1
SWEP.Secondary.BashLength = 16 * 3

SWEP.SequenceLengthOverride = {
	[ACT_VM_HITCENTER] = 0.8
}

SWEP.EventTable = {
	[ACT_VM_RECOIL1] = {
		{ ["time"] = 8 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Woosh" },
		{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Woosh" },
		{ ["time"] = 64 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Woosh" },
		{ ["time"] = 72 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Slide" }
	},
	[ACT_VM_RECOIL2] = {
		{ ["time"] = 56 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Woosh" }
	},
	[ACT_VM_RECOIL3] = {
		{ ["time"] = 4 / 30, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Toss" }
	},
	[ACT_VM_HOLSTER] = {
		{ ["time"] = 25 / 60, ["type"] = "sound", ["value"] = "TFA_KF2_CROVEL.Holster" }
	}
}

DEFINE_BASECLASS(SWEP.Base)