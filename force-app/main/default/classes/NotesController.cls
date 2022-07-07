public class NotesController {
 @auraEnabled
    public static List<Notes__c> fetchNotes(){     //fetchNotes method Queries the Tasks.
        return[select Id,Title__c,Status__c from Notes__c LIMIT 10];
    }
  @auraEnabled
    public static boolean completeTask(Id recordId){  //completeTask method marks the task as completed based on the recordId parameter
        List<Notes__c> varNotes = [select Status__c from Notes__c Where Id =: recordId];
        if(varNotes != null && !varNotes.isEmpty()){
            for(Notes__c varN:varNotes){
                varN.Status__c = 'completed';
            }
        }
        try{
             update varNotes;
             return true;
        }
        catch(DMLexception ee){
            System.debug(ee);
            return false;
        }
    }
    @auraEnabled
    public static Notes__c createNoteRecord(string strTitle){  //creates a new task.
        Notes__c note = new Notes__c();
        note.Title__c = strTitle;
        note.Status__c = 'To DO';
        insert note;
        return note;
    }
}