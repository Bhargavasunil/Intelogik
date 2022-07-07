trigger StudentSelectTrigger on Student__c (before insert) {
             StudentSelectionClass.SelectStudent(Trigger.new);
}