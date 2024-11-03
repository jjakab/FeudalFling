hp = 5
stackable = false

//Based on the tag, define the rarity as a string
rarity = "Common"
if(asset_has_tags(object_index,"uncommon")) rarity = "Uncommon"
else if (asset_has_tags(object_index,"rare")) rarity = "Rare"
else if (asset_has_tags(object_index,"cursed")) rarity = "Cursed"

goldCost = priceRelic()

depth = 300

//Variables related to the 'jiggle'
jiggleTimer = 25
jiggleUp = false
alarm_set(0,jiggleTimer)

//Variables related to drawing 'insufficient gold'
drawInsufficientGoldTimer = 30
bottomSprite = sShopCaptionBottom

//Variables related to item description
beginningString = ""
statString = ""
endingString = ""

drawString = ""

relicTitle = "TESTING" //Relic itle will be re-defined by child object

rarityColor = c_white
switch(rarity)
{
	case "Uncommon": rarityColor = c_green break;
	case "Rare": rarityColor = c_aqua break;
	case "Cursed": rarityColor = c_red break;
}
	
	