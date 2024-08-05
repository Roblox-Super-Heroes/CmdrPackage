local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SharedLibraryGet = _G.SharedLibraryGet
local ServerLibraryGet = _G.ServerLibraryGet

local Net = SharedLibraryGet("Net")
local Knit = SharedLibraryGet("Knit")

return function (_, players: {Player}, userstat: string, amount: number): nil
	for _, player in ipairs(players) do
		
		local playerData = _G.GetPlayerData(player)
		if not playerData then
			continue
		end
		playerData:addUserstats(userstat, math.max(amount, 1))
	end
	return nil
end