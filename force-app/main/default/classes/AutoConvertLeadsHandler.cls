/*****************************************************************************************************************************
 Author:
 Company:
 Description: 
 =============================================================================================================================
 =============================================================================================================================
Apex Class: AutoConvertLeadsHandler
Test Class : AutoConvertLeadsHandlerTest
Trigger used : AutoConvertLeads
Test Data Factory Class : DatafactoryForLead
Code Coverage : 100%
 ==============================================================================================================================
 =============================================================================================================================
 History
 <Version>       <Date>                       <Author Name>                     <Brief description of change >
                              
 ************************************************************************************************************************/

public class AutoConvertLeadsHandler {
    public static void leadConvert(List<Lead>leadList){
        List<Database.LeadConvert> MassLeadConvert = new List<Database.LeadConvert>();
        for(Lead currentLead:leadList){
            Database.LeadConvert varLc = new Database.LeadConvert();
            varLc.setLeadId(currentLead.Id); //4
            varLc.setConvertedStatus('Closed - Converted');
            MassLeadConvert.add(varLc);
        }
        If(!MassLeadConvert.isEmpty()){
            list<Database.LeadConvertResult> lcr = Database.convertLead(MassLeadConvert); 
        }
    }
}