trigger ContextVariable on Account (before insert,after insert,after delete) {

    if(Trigger.isinsert==True){
        if(Trigger.isbefore==True){
            system.debug('Trigger is fired before record was saved');
        }else if (Trigger.isafter){
            if(Trigger.isafter==True){
                system.debug('trigger was fired after all records were saved');
            }
        }
        
        else if (trigger.isdelete==true){
            system.debug('Process after delete');
        }
    }
    
}