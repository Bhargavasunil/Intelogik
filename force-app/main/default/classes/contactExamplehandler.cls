public class contactExamplehandler {
    public static void methodA(map<id,contact> newMap){
        //create set to store the accoutId of the contact
        set<id> accid = new set<id>();
        for(contact con:newMap.values()){
             accid.add(con.AccountId);
        }
        
        //make a query to get the account associated with the contact accountID
          
         List<Account> accList  = [select Id,Total_Count_of_Contacts__c,(select id from contacts) from Account where Id IN:accid];
        for(Account acct:accList){
             acct.Total_Count_of_Contacts__c = acct.Contacts.size();
        }
        update accList;
    }
      
    public static void methodB(map<id,Contact>oldMap){
        
        set<id> accId = new set<id>();
        
        //iterate records from oldMapp
        for(Contact con:oldMap.values()){
            if(con.AccountId != NULL){
                accId.add(con.AccountId);
            }
            list<account> accList = [select id,Total_Count_of_Contacts__c,(select id from Contacts) from account where id IN:accId];
            for(account acct: accList){
                acct.Total_Count_of_Contacts__c = acct.Contacts.size();
            }
            update accList;
        }
    }
}