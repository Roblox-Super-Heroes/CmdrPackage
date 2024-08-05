return {
	Name = "giveConsumable";
	Aliases = {};
	Description = "give consumables to players!";
	Group = "DefaultAdmin";
	Args = {
		{
			Type = "players";
			Name = "Player";
			Description = "choose a player";
		},
		{
			Type = "consumable";
			Name = "Consumable";
			Description = "choose a consumable";
		},
		{
			Type = "rarity";
			Name = "Rarity";
			Description = "choose a rarity";
		},
		{
			Type = "number";
			Name = "Amount";
			Description = "amount";
		},
	};
}