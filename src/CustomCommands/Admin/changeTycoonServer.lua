local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SharedLibraryGet = _G.SharedLibraryGet
local ServerLibraryGet = _G.ServerLibraryGet

local Net = SharedLibraryGet("Net")
local Knit = SharedLibraryGet("Knit")

return function (_, players: {Player}, tycoonName: string, overridetype: string): nil
	local TycoonService = Knit.GetService("TycoonService")
	if TycoonService then
		for _, player in pairs(players) do
			local playerSlot = TycoonService:getTycoonSlotByPlayer(player)
			if playerSlot then
				playerSlot:_changeTycoon(tycoonName, overridetype == "Enabled")
			else
				Net:RemoteEvent("SendNotification"):FireClient(player,
					("CAN'T CHANGE YOUR TYCOON, SELECT A TYCOON TO CHANGE IT!"),
					Color3.fromRGB(255, 0, 0),
					2.5
				)
			end
		end
	end
	return nil
end