local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ServerSystemsSource = ServerScriptService:WaitForChild("Source", 5)
local ConsumablesComponent = require(ServerSystemsSource.Components.Consumables)
return function (_, players: {Player}, consumable: string, rarity: string, amount: number): nil
	for _, player in ipairs(players) do
		local playerConsumables = ConsumablesComponent:FromInstance(player)
		if playerConsumables then
			playerConsumables:addConsumable(consumable, {[rarity] = amount})
		end
	end
	return nil
end