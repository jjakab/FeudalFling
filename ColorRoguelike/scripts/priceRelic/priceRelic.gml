// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function priceRelic(){
	var modifier = random_range(0.85,1.15)
	
	
	//Start off by assuming this is a common relic that costs 100, then change its base cost if the actual
	// rarity is different
	baseCost = 100
	switch(rarity)
	{
		case "Uncommon": baseCost = 150 break;
		case "Rare": baseCost = 200 break;
	}
	
	return ceil(baseCost * modifier)
}