trigger AccountRatingTrigger on Account (before insert,after insert) {
    if(trigger.isInsert){
        if(trigger.isBefore==True)
    TriggerHandlerForAccount.changeRating(Trigger.new);
    }else if(Trigger.isAfter==True){
        TriggerHandlerForAccount.createRelatedOpp(Trigger.new);
    }
}