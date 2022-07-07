public class deleteConfidentialRecord {
    @InvocableMethod
    public static void deleteRecord(list<id> accids){
        list<Confidential_Deal__c> varRecord = [select id from Confidential_Deal__c where id IN:accids];
        delete varRecord;
    }
}