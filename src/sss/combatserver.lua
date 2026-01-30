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

--Punch Function
local function punch(player)
	
	local character = player.Character
	if not character then return end
	
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end
	
	print(player.Name.." punched")
	
end

--Action Event Connection
actionRemote.OnServerEvent:Connect(function(player, action)
	if isCombatAction(action) then
		print("Combat Action: "..action)
		if action == "MouseOne" then
			punch(player)
		end
	end
end)

return CombatServer
