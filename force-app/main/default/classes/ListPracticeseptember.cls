public class ListPracticeseptember {
    
    //Decalre a method 
    
    Public void ListMethod(){
        
        list<string> strList = new list<string>();
        
       //add values into list 
             
        strList.add ('India');
        strList.add('USA');
        strList.add('UK');
      //to print all the data inside a list 
        system.debug( 'strList>'+strList);
        
   //using addAll method 
      
      //creating another list for implementing  addAll 
       List<string> strList2 = new List<string>();
        strList2.add('Australia');
        //implementing addAll method
        strList2.addAll(strList);
        system.debug('strList2>'+strList2);
    
        //create a set 
        set<string> strSet = new set<string>();
        strSet.add('Japan');
        
        //adding set to list 
        strList2.addAll(strSet);
        system.debug('strList2>'+strList2);
        
        //clone method
        list<string> strList3 = new List<string>();
        strList3 = strList.clone();
        system.debug('strList3>'+strList3);
        
        //contains (ListElementnt) method to check "India" is present in "strList"
        Boolean Res;
        Res=strList.contains('India');
        system.debug('The Result>'+Res);
        
        //To know the index number of india from strList
         
        system.debug(strList.indexOf('India'));
        
        //isEmpty() method
        
        boolean res1;
        res1= strList.isEmpty();
        system.debug('Res1>'+res1);
        
            }

}