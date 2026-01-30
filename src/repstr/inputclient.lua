--// Client-Sided Input Handler

--Roblox Services
local repStorage = game:GetService("ReplicatedStorage")
local userInputService = game:GetService("UserInputService")

--Folders
local remotes = repStorage:WaitForChild("Shared"):WaitForChild("Remotes")
local modules = repStorage:FindFirstChild("Shared"):WaitForChild("Modules")

--Dictionaries
local keyBinds = require(modules:WaitForChild("Keybinds"))

--Remotes
local actionRemote = remotes:WaitForChild("Action")

local InputClient = {}

--UIS Input Connection
userInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	
	if keyBinds[input.KeyCode] or keyBinds[input.UserInputType] then
		actionRemote:FireServer(keyBinds[input.KeyCode] or keyBinds[input.UserInputType])
	end
end)


return InputClient
