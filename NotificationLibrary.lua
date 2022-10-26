getgenv().x = {}
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
x.CreatePopup = function(kindof, heading, text, dt)
	if kindof and heading and text and dt then
		local scc, err = pcall(function()
			local ActiveNotification = Notification.new(kindof, heading, text)
			ActiveNotification:deleteTimeout(dt)
		end)
	end
end
return x



