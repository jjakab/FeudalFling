// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyProjectileList(id){
	ds_list_add(id.enemies, oEnemyAcidWizard)
	ds_list_add(id.enemies, oEnemyAcidWizardElite)
	ds_list_add(id.enemies, oEnemyFireWizard)
	ds_list_add(id.enemies, oEnemyFireWizardElite)
	ds_list_add(id.enemies, oEnemyIceWizard)
	ds_list_add(id.enemies, oEnemyIceWizardElite)
	ds_list_add(id.enemies, oEnemyOgre)
}