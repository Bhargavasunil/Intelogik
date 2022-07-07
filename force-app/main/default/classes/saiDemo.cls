public class saiDemo {
    public static void method(List<lead> lst){
        set<string> newlastName = new set<string>(); // ragilla will add
        
        set<string> oldlastName = new set<string>();
        
        for(lead varlead:lst){
            
             // lead record contains multiple fields but i want to check lastname is exist.if exists i want to prevent the record insertion.
             //now adding only last name to the set created in 3 line
              newlastName.add(varLead.LastName);
        }
        list<lead> oldrecrds = new list<lead>();
        oldrecrds=[select id,LastName from lead where LastName in:newlastName];
        system.debug(oldrecrds);
        for(lead oldrec:oldrecrds){
                  oldlastName.add(oldrec.LastName);
        }
        for(lead varlead:lst){
            if(oldlastName.contains(varlead.LastName)){
                varlead.addError('Name already exists');
            }
        }
    }
}