public class AccountHelper {
 @AuraEnabled
 public static list<Account> getAccountList(string varname){
    string  a = '%' + varname + '%' ;
     List<Account> varAccList =  [SELECT Id,Name,Phone,Website FROM Account where Name Like : a];
     return varAccList;
 }
}