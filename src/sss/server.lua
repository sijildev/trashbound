--// Initializes Server-Sided Modules

--Roblox Services
local serverScriptService = game:GetService("ServerScriptService")

for _, module in pairs(serverScriptService:GetDescendants()) do
	if module:IsA("ModuleScript") then
		require(module)
	end
end
