return {
	Name = "changeTycoon";
	Aliases = {};
	Description = "change tycoon for a player";
	Group = "DefaultAdmin";
	Args = {
		{
			Type = "players";
			Name = "Player";
			Description = "choose a player";
		},
		{
			Type = "tycoon";
			Name = "Tycoon";
			Description = "the tycoon name";
		},
		{
			Type = "overridetype";
			Name = "Override Type";
			Description = "should reset even if tycoons are the same.";
		},
	};
}