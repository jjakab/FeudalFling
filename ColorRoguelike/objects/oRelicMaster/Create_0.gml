/// @description Insert description here
// You can write your code in this editor
hp = 5
stackable = false
goldRatio = random_range(0.8, 1.2)
goldCost = ceil(100 * goldRatio)

depth = 300

//Variables related to item description
beginningString = ""
statString = ""
endingString = ""

drawString = ""


relicTitle = "TESTING" //Relic itle will be re-defined by child object

//Based on the tag, define the rarity as a string
rarity = "Common"
if(asset_has_tags(object_index,"uncommon")) rarity = "Uncommon"
else if (asset_has_tags(object_index,"rare")) rarity = "Rare"

rarityColor = c_white
switch(rarity)
{
	case "Uncommon": rarityColor = c_green break;
	case "Rare": rarityColor = c_blue break;
}
	
	