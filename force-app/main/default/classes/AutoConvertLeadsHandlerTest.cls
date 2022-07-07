@isTest
public class AutoConvertLeadsHandlerTest {
    @isTest
    private static void method(){
        test.startTest();
        Lead leadData = DatafactoryForLead.createLead(true);
        Integer count = [SELECT count() from Lead where Id=:leadData.Id];
        if(count!=0){
            list<lead> leadlst = new List<lead>{leadData};
                AutoConvertLeadsHandler.leadConvert(leadlst);
        }
        Integer count1 = [SELECT count() from Contact where LastName='TestLead Bhar 52828'];
        System.assert(count!=0,'Not Converted');
        test.stopTest();
        
        
    }
}