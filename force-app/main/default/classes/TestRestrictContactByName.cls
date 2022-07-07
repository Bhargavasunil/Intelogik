@isTest
public class TestRestrictContactByName {
 @isTest
    private static void method1(){
        //insert testdata 
           contact myContact = new contact(LastName='invalidname');
            insert myContact;
        //perform test
        Test.startTest();
        Database.saveResult result = database.insert(myContact,false);
        test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot create contact with invalid last name.',
                             result.getErrors()[0].getMessage());
    }
}