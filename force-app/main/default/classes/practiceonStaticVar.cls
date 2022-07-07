/*
Can we access the instance variables directly or not?
>>No,we have to create object then only we can access instance variables.
   from below example with out line 10 we can't access the  a.
*/
public class practiceonStaticVar {
        integer a=20;
    
    //declaring method
    public static void method(){
        practiceonStaticVar varInstnaceForinstanceVariable = new practiceonStaticVar();
        system.debug('the value of Instance Varibale is >>'+varInstnaceForinstanceVariable.a);
    }
}