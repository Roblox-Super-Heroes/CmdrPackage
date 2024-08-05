local USER_IDS_WITH_PERMISSIONS = {
	[1647400306] = true, -- ephrem,

}

return function(registry)
	registry:RegisterHook("BeforeRun", function(context)
		if not game:GetService("RunService"):IsStudio() then
			if not USER_IDS_WITH_PERMISSIONS[context.Executor.UserId] then
				return "You don't have permission to run this command"
			end
		end
	end)
end