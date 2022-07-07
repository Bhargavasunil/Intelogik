public class mapPractice {
     //declaring a method 
    public  void mapDemo(){
        //creating a map 
        map<Integer,string> intToStrMap = New  map<Integer,string> ();
        //adding values to May by using function
        intToStrMap.put(1,'Bhargava Mallavolu');
        intToStrMap.put(2,'Suma Mallavolu');
        //system.debug('intToStrMap'+intToStrMap);
        //adding map entry with an existing key  overrides the existing entry with new 
        //intToStrMap.put(1,'SivaMallavolu');
        system.debug('intToStrMap>'+ intToStrMap.containsKey(1));
        //give output is true or false
        //if 2 key contains value give output as true or else false
    }
}