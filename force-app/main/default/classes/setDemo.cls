public class setDemo {
        
    public void setMethod(){
        set<String> setStr = new set<String>();
        setStr.add('India');
        setStr.add('America');
        system.debug('setStr>>'+setStr);
        list<string> listsstr= new list<string>();
        listsstr.add('Sunil');
        listsstr.add('Sunil');
        system.debug('listsstr>>'+listsstr);
        setStr.addAll(listsstr);
        system.debug('setStr:'+setStr);
    }
}