
RegisterNetEvent("simp:textsent")
AddEventHandler('simp:textsent', function(tPID, names2)
		exports.pNotify:SendNotification({text = '<font size=4px><font color="red"><b>Your Message has been sent to:</b> </font><br />' .. tostring(names2) .. "</font>", type = "info", timeout = 5000})
		-- SetNotificationTextEntry("STRING")
		-- AddTextComponentString('~g~~h~Text Message:~n~~s~Your Message has been sent to: ' .. tostring(names2))
		-- DrawNotification(true, true)
end)

RegisterNetEvent("simp:textmsg")
AddEventHandler('simp:textmsg', function( source, text, names2 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = text
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names2
		exports.pNotify:SendNotification({text = '<font size=4px><font color="red"><b>Text Message from ID: [' .. tostring(source) .. ']</b></font><br />    ' .. ''.. text ..'</font>', type = "info", timeout = 15000})
		-- SetNotificationTextEntry("STRING")
		-- AddTextComponentString('~g~~h~Text Message from ID: [' .. tostring(source) .. ']    ' .. '~n~~s~'.. text ..'')
		-- DrawNotification(true, true)
end)

RegisterNetEvent("simp:textreplysent")
AddEventHandler('simp:textreplysent', function(tPID, names2)
		exports.pNotify:SendNotification({text = '<font size=4px><font color="red"><b>Your Message has been sent to: </b></font><br />' .. tostring(names2) .. '</font>', type = "info", timeout = 5000})
		-- SetNotificationTextEntry("STRING")
		-- AddTextComponentString('~g~~h~Text Message:~n~~s~Your Message has been sent to: ' .. tostring(names2))
		-- DrawNotification(true, true)
end)
RegisterNetEvent("simp:textreply")
AddEventHandler('simp:textreply', function( source, text, names2 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = text
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names2
		exports.pNotify:SendNotification({text = '<font size=4px><font color="red"><b>Text Message from: ' .. tostring(names2) .. ' [' .. tostring(source) .. ']</b></font><br />' .. ' '.. text ..'</font>', type = "info", timeout = 15000})
		-- SetNotificationTextEntry("STRING")
		-- AddTextComponentString('~g~~h~Text Message from: ' .. tostring(names2) .. ' [' .. tostring(source) .. ']' .. '~n~~s~'.. text ..'')
		-- DrawNotification(true, true)
end)
RegisterNetEvent("simp:recovermessage")
AddEventHandler('simp:recovermessage', function()
		local text = textData.lastPlayerMessage
		local ply = textData.lastPlayermessageRecieved
		local names2 = textData.lastMessagenames2
		 exports.pNotify:SendNotification({text = '<font size=4px><font color="red"><b>Text Message from ID: [' .. tostring(ply) .. ']</b></font><br />' .. ' '.. text ..'</font>', type = "info", timeout = 15000})
		-- SetNotificationTextEntry("STRING")
		-- AddTextComponentString('~g~~h~Text Message from: ' .. tostring(names2) .. ' [' .. tostring(ply) .. ']' .. '~n~~s~'.. text ..'')
		-- DrawNotification(true, true)
end)