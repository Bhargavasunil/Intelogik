public class MapsOct {
    public void mapDemo(){
        map<Integer,string> varMap = new map<Integer,String>();
        boolean B;
        varMap.put(1,'Sunil');
        varMap.put(2,'John');
        system.debug('varMap'+varMap);
        // to know the number of key-value pairs 
        system.debug('varMap===>'+varMap.size());
         B= varMap.containskey(1);
           system.debug('B..'+B);        
        //Integer VarSizeVariable = varMap.size();
        //system.debug('varMap===>'+VarSizeVariable);
        
        //to Fetch only values in the map 
         
       // list<string> varValuesList = varMap.values();
        
        //system.debug('Values in the Map>>'+varValuesList);
        
//        set<Integer> intList = new set<Integer>();
       // intlist= varMap.keyset();
       // system.debug('The keys in map>>' +intList);
        
        //string VarA = varMap.get(2);
        //system.debug('value associated with 2 is ='+VarA);
        
//        map<id,Account> accIdMap = new map<id,Account>([SELECT id,Name FROM Account LIMIT 2]);
       
       // system.debug('accIdMap'+accIdMap);
        
        list<account> accList = [SELECT ID,Name FROM Account Limit 2];
        system.debug(accList);
        map<id,Account> accIdMap = new map<id,Account>(accList);
        system.debug('accIdMap>>' +accIdMap);
        
        integer varSize = accIdMap.size();
        system.debug('the size of map>>' +varSize);
        
        //system.debug('The keys in the map --'+accIdMap.keySet());
        set<id> varKeyId = accIdMap.KeySet();
        system.debug('the keys in Map>>'+varKeyId);
    }
}