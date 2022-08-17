/* if account phone is updated then put update msg in description*/

public class AccDescriptionUpdate {
    public static void UpdateDescription (List<account> newList, Map<id,account> OldMap){
         
        for(account acc: newList){
            
            if(OldMap !=Null && acc.Phone != Oldmap.get(acc.id).Phone ){
                 
                 acc.Description='The phone field is updated';
            }
        }
        
    
   }

    
    //scenario : If account phone is Updated then populate that on all related opportuities.
    //1.Compare the values whether phone is updated or not .For previous values we need Oldmap values
    //2.filter the updated phone field records to the new map -accIdToMap
    //3.fetch the opportunities  - create a new list to store the opportunites 
    //4.if map contains id of opportunity.accountid perform action
    //5. create a new list to store the updated opportunities.
    //6.perform DML 
    
   public static void updateRelatedOppPhonefield (List<account> newList,Map<id,account>OldMap) {
        
         // create a new map to store the updated accounts
          map<id,account> accIdToMap = new  map<id,account>();
          List<opportunity> oppList = new List<opportunity>();
          List<opportunity> varOppList = new  List<opportunity>();
        
       for(account acc: newList){
           
           if(OldMap!= Null && acc.Phone != OldMap.get(acc.id).Phone){
                      accIdToMap.put(acc.id,acc);  //adding the updated accounts filtered and to the map(accid and acc were stored in map)
                          
           }
           oppList=[SELECT ID,Description,Account_Phone__c,AccountId FROM Opportunity Where AccountId IN :accIdToMap.keySet()];
           
           for(opportunity opp: oppList){
               
                 //new instance
                 opportunity Updatedopp = new opportunity();
                //check opportunity account id is present in map or not 
               if( accIdToMap.containsKey(opp.AccountId)){
                      
                   Updatedopp.Id                 =  opp.id;
                   Updatedopp.Account_Phone__c   =  accIdToMap.get(opp.AccountId).phone;
                   Updatedopp.Description        =  'The phone field is Updated based on asssociated Account';                
                   varOppList.add(Updatedopp);    
               }
               if(!varOppList.isEmpty()){
                   update varOppList;
               }
                   
               }
           }
       }
       // commit 
    }