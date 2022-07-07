public class EmployeeSalary {
 
    public static void insertEmloyeeRecords(){
       List<Employee__c> VarEmployeeList = new List<Employee__c> (); 
         Employee__c VarP= new Employee__c ();
         VarP.Name     = 'Sivaprasad';
         VarP.Salary__c= 2000;
         VarP.Name     = 'Samhitha';
         VarP.Salary__c= 4000;
         insert VarP;
    }
}