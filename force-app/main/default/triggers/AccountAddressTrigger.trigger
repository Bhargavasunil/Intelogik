trigger AccountAddressTrigger on Account (before insert,before update) {
    for(account Varadd:Trigger.New){		
    		if(Varadd.Match_Billing_Address__c == True)
           	Varadd.ShippingPostalCode = Varadd.BillingPostalCode; 
		}
}