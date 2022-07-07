trigger antraTrigger on Emp__c (before insert,before Update) {
    /*if(Trigger.isBefore==True && Trigger.isInsert==True){
     antraTrigger1ExampleHandler varp= new antraTrigger1ExampleHandler();
     varp.validateEmployeeRec(Trigger.New);
     //varp.validateUnameWithEmail(Trigger.New);
     varp.salaryValidate(Trigger.New); 
    }
   if(Trigger.isBefore==True && Trigger.isUpdate==True){
        antraTrigger1ExampleHandler varp= new antraTrigger1ExampleHandler();
        
      // varp.emailValidate(Trigger.New,Trigger.Old);
       //varp.emailCheck(Trigger.New);
   } */
    antraTrigger1ExampleHandler varp= new antraTrigger1ExampleHandler();
    if(Trigger.isBefore){
        if(trigger.isInsert==True){
            varp.validateUnameWithEmail(Trigger.New);
        }
        else if(Trigger.isUpdate==true){
            varp.validateEmailwithUnameUpdate(Trigger.New,Trigger.old);
        }
    }
}