function findMainLightningParent(curr_instance_id){
	//This should never happen
	show_debug_message(curr_instance_id)
	if(!instance_exists(curr_instance_id)){
		return noone	
	}
	var currParentID = curr_instance_id.parentID
	
	if(currParentID = noone){
		return curr_instance_id	
	}
	else{
		return findMainLightningParent(currParentID)	
	}
}