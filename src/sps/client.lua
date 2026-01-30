--// Initializes Client-Sided Modules

-- Roblox Services
local repStorage = game:GetService("ReplicatedStorage")

for _, module in pairs(repStorage:GetDescendants()) do
	if module:IsA("ModuleScript") then
		require(module)
	end
end

