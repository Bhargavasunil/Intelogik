@isTest
public class TestDataFactorypractice {
    public static list<account> createAccountsWithOpps(Integer numAccts,Integer numOppsPerAcct){
      
       List<account> ListToAddAccountsToDB = new List<account> ();
        for(Integer i=0;i<numAccts;i++){
             account acct = new account(Name='TestAccount'+i);
               ListToAddAccountsToDB.add(acct);
        }
          insert ListToAddAccountsToDB;
    
     
    list<opportunity> oppToDB = new List<opportunity>();
    for(Integer j=0;j<numAccts;j++){//outerloop
            account varacct = ListToAddAccountsToDB[j];//reference a record in alist you can follow the name of the list with the elements index position 
                                                        // in sqaure brackets
        for(Integer k=0;k<numOppsPerAcct;k++){
                                opportunity opps = new opportunity();
                                        opps.Name = varacct.name+'Opportunity'+k;
                                        opps.StageName= 'Prospecting';
                                        opps.CloseDate=system.today().addMonths(1);
                                        opps.AccountId = varacct.id;  //to relate opportuity to account
                                        oppToDB.add(opps);
        }                              
             
    }
        insert oppToDB;
                        return ListToAddAccountsToDB;

    }

  
}