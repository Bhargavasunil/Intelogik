trigger accountDescriptionTrigger on Account (before update,after update) {
    if(trigger.isUpdate== true){
        if(trigger.isBefore==true){
     AccDescriptionUpdate.UpdateDescription(Trigger.new, Trigger.oldmap);
        }else if(trigger.isAfter == true){
            //call the function to update the phone field on the related account 
           AccDescriptionUpdate.updateRelatedOppPhonefield(Trigger.new , Trigger.oldmap); 
        }
    }
}