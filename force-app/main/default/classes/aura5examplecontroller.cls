public class aura5examplecontroller {
@auraEnabled
    public static list<Account> getAccounts(){
        List<Account> accList =[SELECT Id,Name,Industry,Phone,BillingCity from Account];
        return accList;
    }
}