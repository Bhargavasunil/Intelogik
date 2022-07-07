public class TriggerHandler {
    public static void BorrowedBookJO(List<	Borrowed_Books_JO__c> VarBorrowedBookJOList){  
        //create a list for returned Books
        List<Returned_Books__c> VarReturnBookList = new List<Returned_Books__c>();   
             for(Borrowed_Books_JO__c VarNew:VarBorrowedBookJOList){
                //Check if Actual return date on Borrowed book is Null
                  if (VarNew.Actual_Returned_Date__c != NULL){   
                     Returned_Books__c VarRetBook = New  Returned_Books__c();
                      //create all required fields on Returned books
                            VarRetBook.Borrowed_Date__c        =  VarNew.Borrowed_Date__c;
                            VarRetBook.Return_Date__c          =  VarNew.Return_Date__c;
                            VarRetBook.Member_First_Name__c    =  VarNew.Member_ID__c;
                            VarRetBook.Book_ID__c              =  VarNew.Book_ID__c;
                            VarRetBook.Actual_Returned_Date__c =  VarNew.Actual_Returned_Date__c;       
                            VarRetBook.Borrowed_Book__c        =  VarNew.ID;
                      //add instance to list 
                            VarReturnBookList.add(VarRetBook);
            }
        }
                     //DML operation to insert into datebase
                          if(VarReturnBookList.size()>0){
                              insert VarReturnBookList;
        }
    }
       @future    
    //Future Apex is used to run processes in a separate thread, at a later time when system resources become available
               public static void deleteBorrowedBooks ( Set<Id> retBookList) {
		       Set<ID> borrBookIdSet = new Set<ID>();
               List<Returned_Books__c> VarreturnBookList = new  List<Returned_Books__c>();
               List<Borrowed_Books_JO__c> delBorBookList = new  List<Borrowed_Books_JO__c>();
               // Retrieving the records to be deleted from the Borrowed books once the Returned book record is inserted.
               VarreturnBookList = [select id, Borrowed_Book__c FROM Returned_Books__c where Id IN: retBookList];      
               for (Returned_Books__c loopVar : VarreturnBookList) {
                    
                       borrBookIdSet.add(loopVar.Borrowed_Book__c);
        }
                    // Retrieving the records to be deleted from the Borrowed books once the Returned book record is inserted.
              delBorBookList = [select id from Borrowed_Books_JO__c where id in: borrBookIdSet];

              if ( delBorBookList.size() > 0 ) {
              delete(delBorBookList);
              }

   }
}