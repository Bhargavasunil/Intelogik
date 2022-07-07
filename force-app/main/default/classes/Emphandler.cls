public class Emphandler {
    @InvocableMethod
    public static void delChildRec(List<id> IDS){
        List<Emp__c> empList = [SELECT ID,Name FROM Emp__c WHERE Dept__c IN:IDS ];
        delete empList;
    }
}