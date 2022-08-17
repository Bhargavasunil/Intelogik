//Create an Apex class with a future method that accepts a List of Account IDs and updates a 
//custom field on the Account object with the number of contacts associated to the Account.
//psedo code
//use future method before the method 
//make a query on account object 
//use for loop to iterate accounts fetched from database to update the number of contacts field 
//perform dml

public class AccountProcessor1 {
  @future 
    public static void countContacts(set<id> accountIdSet){
        //create a list 
        List<account> accList = new List<account>();
        list<account>updatelist =new list<account>();
        accList=[select id,Number_Of_Contacts__c,(select id from contacts) from account where id IN:accountIdSet];
        for(account acct:accList)
        {
          acct.Number_Of_Contacts__c= acct.contacts.size(); 
            updatelist.add(acct);
        }
           update accList;
    }
    //comment
}