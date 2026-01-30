--// Server-Sided Combat Handler

--Roblox Services
local repStorage = game:GetService("ReplicatedStorage")

--Folders
local remotes = repStorage:WaitForChild("Shared"):WaitForChild("Remotes")

--Remotes
local actionRemote = remotes:WaitForChild("Action")

local CombatServer = {}

--Combat Action Check
local function isCombatAction(action)
	
	--Combat Action Table
	local combatActions = {
		"MouseOne"
	}
	
	if table.find(combatActions, action) then
		return true
	else
		return false
	end
end

--Action Event Connection
actionRemote.OnServerEvent:Connect(function(player, action)
	if isCombatAction(action) then
		print("Combat Action: "..action)
	end
end)

return CombatServer
