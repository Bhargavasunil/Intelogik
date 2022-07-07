/* use case:
      Create an opportunity from Account record page and add opportuniry amount in annual revenue of account.
      1.pass the opp id to the method.
      2.Based on the IDS fetch the opportunity records
      3.fetch the accountId associated with the opportunity
  */
public class AccountAction_InvocalbleMethod {
     @InvocableMethod
    public static list<decimal> updateAccRevenue (List<id> IDs){
        list<opportunity> oppList = [SELECT ID,Amount,accountId from opportunity where Id in: IDs];
        List<Account> accList = [select AnnualRevenue from account where id =: oppList[0].accountId];
        List<decimal> AnnualRevenueList = new List<decimal>();
        accList[0].AnnualRevenue += oppList[0].amount;
        update accList;
        
        AnnualRevenueList.add(accList[0].AnnualRevenue); 
         return AnnualRevenueList;
    }
}