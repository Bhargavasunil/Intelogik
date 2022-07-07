public class antraTrigger1ExampleHandler {
     
    public void validateEmployeeRec(List<Emp__c> lst){
        for(Emp__c em:lst){
             //make a query to get the number of child records dept have
             //usually it is not recommende to write the query inside the loop because of gov limits
            Integer count =  [SELECT Count() from Emp__c  where Dept__c =: em.Dept__c ];
            if(count>=3){
                          em.Dept__c.addError('this employ can not assign to '+em.dept__c+' department');
            }
        }
    
    }
    // check salary based on the department.
    // here department values are static values, so using switch control statement.
    public void salaryValidate(List<Emp__c> lst){
        for(Emp__c em:lst){
            switch on em.DepartmentName__c{
                when 'Sales'
                {
                    //if salary is not between 10k to 25k show error.
                    if(!(em.Salary__c>10000 && em.Salary__c<=25000))
                    {
                        em.Salary__c.addError('salary must be in between 10000 and 25000');
                    }
                }
                when else{
                    if(!(em.Salary__c>10000 && em.Salary__c<15000)){
                        em.Salary__c.addError('salary must be in between 10000 and 15000');
                    }
                }
            }
        }
    }
    /*emailvalidation
      usecase :: while updating the record, never allow the user to update the email address.
                 1.In this case we have to check the new value of email with the old version value of the record.so we require Trigger.New and Trigger.Old.
                 
       */
    /*public void emailValidate(List<Emp__c> lst,List<Emp__c> olst){
        Integer y = 0;
        for(Emp__c em: lst){
                
            Emp__c om = olst.get(y);   //getting object from the list and assigning to the varaible om
            if(om.Email__c != Null && om.Email__c != em.Email__c){
                  em.Email__c.addError('can \'t update the email');
            }
            y++;
        }
    }*/
    public void validateUnameWithEmail(list<Emp__c> lst){
           //Throw Error Meassage if Uname and Email are not same 
        for(Emp__c em:lst){
            if(em.Name != em.Email__c){
                        em.addError('Username and Email should be same');
             }
        }
    }
    public void validateEmailwithUnameUpdate(List<Emp__c> lst,List<Emp__c>olst){
        for(Emp__c em:lst){ //outer for loop 
            for(Emp__c om:olst){
                if(em.Name != om.Email__c){
                    em.addError('Username and Email should be same');
                }
            }
        } 
    }
    
}