public class AccountProcessor {
@future
    public static void countContacts(List<id> accountId){
        //make a query to fetch data
        list<account> accList = new List<account>();
         accList= [SELECT ID ,Number_Of_Contacts__c,(select id from contacts) from account where id IN: accountId];
        for(account acct: accList){
              List<Contact> lstCont = acct.contacts ;
                acct.Number_Of_Contacts__c =lstCont.size();
        } 
        update accList;
    }
}