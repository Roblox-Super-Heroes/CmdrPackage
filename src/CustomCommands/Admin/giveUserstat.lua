return {
	Name = "giveUserstat";
	Aliases = {};
	Description = "give a userstat amount to player";
	Group = "DefaultAdmin";
	Args = {
		{
			Type = "players";
			Name = "Player";
			Description = "choose a player";
		},
		{
			Type = "playeruserstat";
			Name = "Stat";
			Description = "the stat name";
		},
		{
			Type = "number";
			Name = "Amount";
			Description = "amount";
		},
	};
}