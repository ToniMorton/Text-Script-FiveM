
RegisterNetEvent("simp:textsent")
AddEventHandler('simp:textsent', function(tPID, names2)
		
		SetNotificationTextEntry("STRING")
		AddTextComponentString('~g~~h~Text Message:~n~~s~Your Message has been sent to: ' .. tostring(names2))
		DrawNotification(true, true)
end)

RegisterNetEvent("simp:textmsg")
AddEventHandler('simp:textmsg', function( source, text, names2 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = text
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names2
		SetNotificationTextEntry("STRING")
		AddTextComponentString('~g~~h~Text Message from ID: [' .. tostring(source) .. ']    ' .. '~n~~s~'.. text ..'')
		DrawNotification(true, true)
end)

RegisterNetEvent("simp:textreplysent")
AddEventHandler('simp:textreplysent', function(tPID, names2)
		
		SetNotificationTextEntry("STRING")
		AddTextComponentString('~g~~h~Text Message:~n~~s~Your Message has been sent to: ' .. tostring(names2))
		DrawNotification(true, true)
end)
RegisterNetEvent("simp:textreply")
AddEventHandler('simp:textreply', function( source, text, names2 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = text
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names2
		SetNotificationTextEntry("STRING")
		AddTextComponentString('~g~~h~Text Message from: ' .. tostring(names2) .. ' [' .. tostring(source) .. ']' .. '~n~~s~'.. text ..'')
		DrawNotification(true, true)
end)
RegisterNetEvent("simp:recovermessage")
AddEventHandler('simp:recovermessage', function()
		local text = textData.lastPlayerMessage
		local ply = textData.lastPlayermessageRecieved
		local names2 = textData.lastMessagenames2
		SetNotificationTextEntry("STRING")
		AddTextComponentString('~g~~h~Text Message from: ' .. tostring(names2) .. ' [' .. tostring(ply) .. ']' .. '~n~~s~'.. text ..'')
		DrawNotification(true, true)
end)