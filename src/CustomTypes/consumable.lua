local ReplicatedStorage = game:GetService("ReplicatedStorage")
local utilsModule = require(script.Parent.Parent.Shared.Util)
local types = {}

do -- fill types table --
	local SharedDataGet = _G.SharedDataGet
	local ConsumablesData = SharedDataGet("Consumables")
	for name, _ in next, ConsumablesData.Data do
		table.insert(types, name)
	end
end

local typeTable = {
	Transform = function (text): {string}
		local findPlayer = utilsModule.MakeFuzzyFinder(types)
		return findPlayer(text)
	end,
	Validate = function(matchFoundList: {string}): (boolean, string)
		return #matchFoundList > 0, ("No %s with that name could be found!"):format(script.Name)
	end,
	Autocomplete = function(matchFoundList: {string}): {string}
		local foundNames = utilsModule.GetNames(matchFoundList)
		return foundNames
	end,
	Parse = function(matchFoundList: {string})
		return matchFoundList[1]
	end,
	Default = function(foundName: string): string
		return foundName
	end
}

return function (cmdr)
	cmdr:RegisterType(script.Name:lower(), typeTable)
end
