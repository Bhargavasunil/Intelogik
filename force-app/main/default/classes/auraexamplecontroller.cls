public class auraexamplecontroller {
@auraEnabled
    public static list<account> getAccountDetails(string iname){
        string inm= iname+'%';
        list<Account> retList = [SELECT Id,Name,BillingCity,Phone,Industry from Account where Industry like:inm];
        return (retList);
    }
}