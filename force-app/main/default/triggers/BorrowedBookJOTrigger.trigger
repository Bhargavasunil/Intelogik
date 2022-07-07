trigger BorrowedBookJOTrigger on Borrowed_Books_JO__c (after update) {
    if(Trigger.isAfter ==True && Trigger.isUpdate ==True)  
    TriggerHandler.BorrowedBookJO(Trigger.New);
}