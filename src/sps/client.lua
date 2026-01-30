--// Initializes Client-Sided Modules

-- Roblox Services
local RepStorage = game:GetService("ReplicatedStorage")

for _, module in pairs(RepStorage:GetDescendants()) do
	if module:IsA("ModuleScript") then
		require(module)
	end
end

