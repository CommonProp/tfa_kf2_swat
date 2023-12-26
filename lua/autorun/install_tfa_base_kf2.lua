local TFA_REQ_VERSION = 4.782
local function checkForTFA()
	if TFA and TFA_BASE_VERSION and TFA_BASE_VERSION >= TFA_REQ_VERSION then return end -- we're 100% good
	if TFA then -- outdated base
		if CLIENT then
			Derma_Query(
				"You have an outdated, unofficial version of TFA Base installed. Get the official upload, or things WILL break!\nUninstall your outdated TFA Base install, then use the button below to install it.\nHelpful info has been printed into the console.\nDetected TFA Base version: ".. TFA_BASE_VERSION ..". Expected: ".. TFA_REQ_VERSION.." or higher.",
				"TFA KF2: Outdated TFA Base!!!",
				"Workshop",
				function() gui.OpenURL("http://steamcommunity.com/workshop/filedetails/?id=2840031720") end
			)
			print("Detected TFA Base version:", TFA_BASE_VERSION, "Expected:", TFA_REQ_VERSION)
			print("Type \"whereis lua/weapons/tfa_gun_base/shared.lua\" to help you find the outdated install.")
		else
			print("#################### WARNING!!! ####################")
			print("TFA KF2: You have an unofficial version of TFA Base installed.")
			print("Get the official upload, or things WILL break!")
			print("http://steamcommunity.com/workshop/filedetails/?id=2840031720")
			print("Detected TFA Base version:", TFA_BASE_VERSION, "Expected:", TFA_REQ_VERSION)
			print("####################################################")
		end
	else -- no tfa detected
		if CLIENT then
			Derma_Query(
				"The weapon(s) you have installed requires TFA Base. Use the button below to install it.",
				"TFA KF2: Install TFA Base!!!",
				"Workshop",
				function() gui.OpenURL("http://steamcommunity.com/workshop/filedetails/?id=2840031720") end
			)
		else
			print("#################### WARNING!!! ####################")
			print("The weapon(s) you have installed requires TFA Base.")
			print("http://steamcommunity.com/workshop/filedetails/?id=2840031720")
			print("####################################################")
		end
	end
end

hook.Add("InitPostEntity", "INSTALL TFA BASE_KF2", checkForTFA)