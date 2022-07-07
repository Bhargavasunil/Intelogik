@isTest
class StudentSelectionTestClass{
    @isTest
    static void TestFunction(){
        Student__C VarP=new Student__c();
        //creating new record
        VarP.Name='Sai Jadu';
        VarP.Age__c=24;
        VarP.Experience__c=9;
        //database
        insert VarP;
        Student__c VarP2=New Student__c();
        VarP2=[SELECT Status__C FROM Student__C WHERE Id=:VarP.Id];
        system.assertEquals('Selected',VarP2.Status__C);
        
    }
     @isTest
    static void TestFunction1(){
        Student__C VarP=new Student__c();
        //creating new record
        VarP.Name='Sai Jadu';
        VarP.Age__c=35;
        VarP.Experience__c=9;
        //database
        insert VarP;
        Student__c VarP2=New Student__c();
        VarP2=[SELECT Status__C FROM Student__C WHERE Id=:VarP.Id];
        system.assertEquals('Sorry!',VarP2.Status__C);
        
    }
}