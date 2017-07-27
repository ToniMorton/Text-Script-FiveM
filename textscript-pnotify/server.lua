AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringSplit(msg, " ")
	

	if cm[1] == "/text" then
		CancelEvent()
			if tablelength(cm) > 1 then
			local tPID = tonumber(cm[2])
			local names2 = GetPlayerName(tPID)
			local msgVar = {}
			local text = ""
			for i=1, #cm do
				if i ~= 1 and i ~= 2 then
					text = (text .. " " .. tostring(cm[i]))
				end
			end
			
			TriggerClientEvent('simp:textmsg', tPID, source, text, names2)
			TriggerClientEvent('simp:textsent', source, tPID, names2)
		end
	end
	-- if cm[1] == "/reply" then
		-- CancelEvent()
		 -- if tablelength(cm) > 1 then
			-- local tPID = textData.lastPlayermessageRecieved
			-- local names2 = GetPlayerName(tPID)
			
			-- local msgVar = {}
			-- local text = ""
			-- for i=1, #cm do
				-- if i ~= 1 then
					-- text = (text .. " " .. tostring(cm[i]))
				-- end
			-- end
			-- TriggerClientEvent('simp:textreply', tPID, source, text, names2)
			-- TriggerClientEvent('simp:textreplysent', source, tPID, names2)
			
		-- end
	-- end
	if cm[1] == "/read" then
		CancelEvent()
		
			
			
			TriggerClientEvent('simp:recovermessage', source)
			
			
		
	end
	
end)

function stringSplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end