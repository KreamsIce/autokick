-- Ping Kick

Limite = 500

RegisterServerEvent("VerificationPing")
AddEventHandler("VerificationPing", function()
	ping = GetPlayerPing(source)
	if ping >= Limite then
		DropPlayer(source, "Vous avez été kick car votre ping est trop élevé - (Limite: " .. Limite .. " Votre Ping: " .. ping .. ")")
	end
end)

-- AFK Kick

RegisterServerEvent("AFKKick")
AddEventHandler("AFKKick", function()
	DropPlayer(source, "Vous avez été kick pour inactivité.")
end)
