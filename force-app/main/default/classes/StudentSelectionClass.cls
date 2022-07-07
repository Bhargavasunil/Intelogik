public class StudentSelectionClass {
    public static void SelectStudent(list<student__c> VarStudentList){
         system.debug('line3');
        for(student__c VarP:VarStudentList){
             system.debug('line5');
            if(VarP.Age__c<30 && VarP.Experience__c>8){
                system.debug(VarP.Status__c='Selected');
            }
            else{
                VarP.Status__c='Sorry!';
            }
        }
    }
}