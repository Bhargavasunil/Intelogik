public class antraVFController2 {
    public string inputVar{get;set;}
    public string OutputVar{get;set;}
    public list<selectOption> getPickList(){
        List<SelectOption> pickList = new List<SelectOption>();
        List<Student__c> stuList = new List<Student__c>();
        pickList.add(new selectOption('-None','-None-'));
        for(Student__c ss:stuList){
            pickList.add(new SelectOption('ss.Name','ss.Name'));
        }
        return pickList;
    }
    public void deleteRecord(){
        Integer Count= [select count() from Student__c Where Name=:inputVar];
        if(count>0){
            List<Student__c> ews = [Select Name from Student__c where Name=:inputVar];
            delete ews;
            OutputVar='Record Deleted Succesfully';
        } 
        else{
              OutputVar= 'Record Not found';
        }
    }
}