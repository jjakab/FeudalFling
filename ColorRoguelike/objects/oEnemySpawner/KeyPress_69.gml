var rand = irandom(9)
var spawnInstance = noone
switch(rand)
{
	case 0:
		spawnInstance = oEnemyOgre
	break;
	case 1:
		spawnInstance = oEnemyBigSlime
	break;
	case 2:
		spawnInstance = oEnemyAcidWizard
	break;
	case 3:
		spawnInstance = oEnemyAcidWizardElite
	break;
	case 4:
		spawnInstance = oEnemyFireWizard
	break;
	case 5:
		spawnInstance = oEnemyFireWizardElite
	break;
	case 6:
		spawnInstance = oEnemyIceWizard
	break;
	case 7:
		spawnInstance = oEnemyIceWizardElite
	break;
	case 8:
		spawnInstance = oEnemyLightningWizard
	break;
	case 9:
		spawnInstance = oEnemyBat
	break;
}

instance_create_depth(x,y,depth,spawnInstance)