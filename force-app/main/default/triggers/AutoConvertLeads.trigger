trigger AutoConvertLeads on Lead (after insert) {
    if (Trigger.isAfter == True && Trigger.isInsert == True){
         AutoConvertLeadsHandler.leadConvert(Trigger.new);
    }
}