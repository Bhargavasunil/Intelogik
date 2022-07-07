trigger BookHelperTrigger on Book__c (before insert) {
     Book__c[] books = trigger.new;
     BookHelper.applyDiscount(books);
}