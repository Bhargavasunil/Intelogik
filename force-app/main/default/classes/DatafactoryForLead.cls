@isTest
public class DatafactoryForLead {
    public static Lead createLead(Boolean doInsert){
        Lead varLead = new Lead();
        varLead.LastName = 'TestLead Bhar 52828';
        varLead.Company='testCompanyBhar';
        varLead.Status='Closed - Converted';
        if(doInsert){
            Insert varLead;
        }
        return varLead;
    }
}