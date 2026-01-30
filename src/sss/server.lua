--// Initializes Server-Sided Modules

--Roblox Services
local ServerScriptService = game:GetService("ServerScriptService")

for _, module in pairs(ServerScriptService:GetDescendants()) do
	if module:IsA("ModuleScript") then
		require(module)
	end
end
