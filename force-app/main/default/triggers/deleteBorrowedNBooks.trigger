trigger deleteBorrowedNBooks on Returned_Books__c (after insert) {
      //after record is inserted to database performs logic
          if(trigger.isAfter == True && trigger.isInsert == True){
                TriggerHandler.deleteBorrowedBooks(trigger.newMap.keySet() );
       }
}