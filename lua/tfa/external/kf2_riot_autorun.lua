local function KF2BlockDamageRiotShield( ent, dmginfo )
	if not ent:IsPlayer() then return end
	if dmginfo:IsDamageType( DMG_DROWNRECOVER ) or dmginfo:IsDamageType(DMG_DIRECT) then return end
	local wep = ent:GetActiveWeapon()
  
	if (wep.IsTFAWeapon and wep.RiotShieldDamageTypes and wep.RiotShield == true) then
		local RiotShield = false
		for _,v in ipairs(wep.RiotShieldDamageTypes) do
			if dmginfo:IsDamageType(v) then RiotShield = true end
		end
		if RiotShield then
			local damageinflictor, blockthreshold
			damageinflictor = dmginfo:GetInflictor()

			if (not IsValid(damageinflictor)) then
				damageinflictor = dmginfo:GetAttacker()
			end

			blockthreshold = ( wep.RiotShieldCone or 135 ) / 2
			if angle_mult_cv then
				blockthreshold = blockthreshold * angle_mult_cv:GetFloat()
			end

			if (IsValid(damageinflictor) and ( math.abs(math.AngleDifference( ent:EyeAngles().y, ( damageinflictor:GetPos() - ent:GetPos() ):Angle().y )) <= blockthreshold)) and wep:GetIronSightsProgress() > 0.5 then
				local dmgscale = wep.RiotShieldMaximum
				local olddmg = dmginfo:GetDamage()

				dmginfo:ScaleDamage(dmgscale)
				dmginfo:SetDamagePosition(vector_origin)
				dmginfo:SetDamageType( bit.bor( dmginfo:GetDamageType(), DMG_DROWNRECOVER ) )
				wep:EmitSound(wep.RiotShieldImpact or "")
			end
		end
	end
end

hook.Add("EntityTakeDamage", "KF2BlockDamageRiotShield", function( ent, dmginfo )
	return KF2BlockDamageRiotShield( ent, dmginfo )
end)
hook.Add("ScalePlayerDamage", "KF2BlockDamageRiotShield", function( ent, _, dmginfo )
	return KF2BlockDamageRiotShield( ent, dmginfo )
end)