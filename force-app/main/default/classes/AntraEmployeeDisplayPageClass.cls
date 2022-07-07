public class AntraEmployeeDisplayPageClass {
    
    public String ename{get;set;}
    public List<Emp__c> ae;
    List<Emp__c> ea{get;set;}
    public AntraEmployeeDisplayPageClass(){
        List<Emp__c> ae = [SELECT Id,Name,Salary__c,Dept__c
                                from Emp__c ];
        ea=new list<Emp__c>();
    }
    
    public void SearchRecord() {
        for(Emp__c emp:ae){
            if(emp.Name.startsWith(ename)){
                 ea.add(emp);
            }
        }
        
    }
}