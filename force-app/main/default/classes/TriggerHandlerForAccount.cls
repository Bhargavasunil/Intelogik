Public class TriggerHandlerForAccount{

//declare a method
Public static void changeRating (List<Account> varListAccounts){
     for(Account varNew : varListAccounts){
	   
	    if (varNew.Industry!=NULL && varNew.Industry=='Media'){
		
		          varNew.Rating='HOT';
        }else {
            varNew.Rating='Cold';
        }
    
  }
 }

    //creating a method for creating opportunity 
Public static void createRelatedOpp(list<account> varListAccounts){
        
        list<opportunity> oppToBeInserted = new  list<opportunity>();
        
        for(Account acc:varListAccounts){
             //create opportunity record
             Opportunity varOpp= new Opportunity();
                        varOpp.Name       = acc.Name;
                        varOpp.AccountId  = acc.Id;
                        varOpp.StageName  = 'Prospecting';
                        varOpp.CloseDate  = system.today();
              //adding varOpp to list
                    
                  oppToBeInserted.add(varOpp);
                        system.debug(oppToBeInserted);

            
        }
        if(!oppToBeInserted.isEmpty()){
            insert oppToBeInserted;
        }
    }
 
}