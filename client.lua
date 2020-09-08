-- Ping Kick

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		TriggerServerEvent("VerificationPing")
	end
end)

-- AFK Kick

SecondesAvantKick = 300

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if time == math.ceil(SecondesAvantKick / 4) then
						TriggerEvent("chatMessage", "AVERTISSEMENT", {255, 0, 0}, "^1Vous allez être kick dans " .. time .. " secondes pour inactivité !")
					end

					time = time - 1
				else
					TriggerServerEvent("AFKKick")
				end
			else
				time = SecondesAvantKick
			end

			prevPos = currentPos
		end
	end
end)
