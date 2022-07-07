/* 
    Usecase:: If parent Object has any Child Records do not allow to delete Parent Object.
    1.we have to create a trigger on the parent Object.
    2.make a relatioinship Query to get the child records.
*/
public class antracheckChildRecDepHandler {
    public void checkChilds(List<Dept__c> lst){
        set<Id> depId = new set<Id>();
        List<Dept__c> Qlist = [SELECT ID,Name,(SELECT id from Emp__r) from Dept__c Where Id in: depId];
        for(Dept__c varDe:lst){
            depId.add(varDe.Id);
        
        //make a query to know the child records.
       
        if(Qlist.size()>0){
             varDe.addError('can \'t delete the record,Parent record contains child records');
        }
        }
    }
}