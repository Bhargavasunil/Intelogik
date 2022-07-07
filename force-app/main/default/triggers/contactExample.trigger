trigger contactExample on Contact (after insert,after delete) {
    if(Trigger.isAfter==True&&Trigger.isInsert==True){
            contactExamplehandler.methodA(Trigger.newMap);
  }
    if(Trigger.isAfter==True&&Trigger.isDelete==True){
        contactExamplehandler.methodB(Trigger.oldMap);
    }
}