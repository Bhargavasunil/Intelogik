trigger AccountTrigger on Account (before insert) {
    AccountTriggerHandler.VarMethod(trigger.new);
}