public class accountDuplicateprevention {
    public static void method(Map<id,account> newMapAcc){
       set<string> setNames = new set<string>(); 
        set<string> oldNames = new set<string>();
        for(account acc:newMapAcc.values()){
              //filter the names and add them to set 
                 setNames.add(acc.Name);
        }
            list<account> accList = new list<account>();
            accList= [select name from account where name IN: setNames];
        
        for(account acc:accList){
               oldNames.add(acc.name);
        }
        
        for(account acc:newMapAcc.values()){
            if(oldNames.contains(acc.name)){
                acc.Name.addError('Duplicate name cannot allowed');
            }
        }
    }
}