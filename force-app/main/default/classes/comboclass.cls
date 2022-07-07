public class comboclass {
 @AuraEnabled
    public static list<string> getAccountNames(){
        list<Account> acct =[SELECT Name from Account];
        List<string> acNames =new List<string>();
           for(Account acName:acct){
                  acNames.add(acName.Name);
            }
        return(acNames);
    }
    @auraEnabled
    public static list<account> showRecords(string acNameSelected){
        list<account> accListToReturn =[select Name,BillingCity,Phone,Industry,Rating from Account where Name=:acNameSelected];
        return accListToReturn;
    }
}