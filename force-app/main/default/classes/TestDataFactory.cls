//======TestutilityClass===========


@isTest
public class TestDataFactory  {
    public static list<account> createAccountsWithOpps(Integer numAccts,Integer numOppsPerAcct){
       
        List<account> accList= new List<account>();    
          for(Integer i=0;i<numAccts;i++){
              account acct= new account(Name='Testaccount'+i);
                 accList.add(acct);
               
               
        }
        insert accList;
        list<opportunity> listOpp = new List<opportunity>();
         
        for(integer j=0;j<numAccts;j++){
            account acct = accList[j];
            
             for( Integer k=0;k<numOppsPerAcct;k++){
                  opportunity opp=new opportunity();
                  opp.Name=acct.Name+'opportunity'+k;
                  opp.StageName='Prospecting';
                  opp.Closedate= system.today().addMonths(4);
                  opp.AccountId=acct.id;
                
                listOpp.add(opp);
                  
            }
             insert listOpp;
        }
            return accList;

    }
 }