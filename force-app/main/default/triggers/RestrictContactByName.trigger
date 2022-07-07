//Apex trigger which blocks inserts and updates to any contact with a last name of 'INVALIDNAME'. 

trigger RestrictContactByName on Contact (before insert,before Update) {
    for(contact con: trigger.new){
        if(con.LastName=='INVALIDNAME'){
            //by using == it acceptss invalidname also
            con.addError('The Last Name '+con.LastName+' is not allowed for DM');
        }
    }
}