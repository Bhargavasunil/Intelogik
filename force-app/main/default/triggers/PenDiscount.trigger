trigger PenDiscount on Parker_pen__c (before insert,before update,after insert,after update) {
    
    if(Trigger.isinsert==true&&Trigger.isbefore==True){
        ContextVariableDemo.functionA();
    }

    if(Trigger.isbefore==true&&Trigger.isUpdate==True){
        ContextVariableDemo.functionB();
    }
    if(Trigger.isAfter==true&&Trigger.isInsert==True){
        ContextVariableDemo.functionC();
    }
    if(Trigger.isAfter==true&&Trigger.isUpdate==True){
        ContextVariableDemo.functionD();
    }
}