public class PropertyClass {
    Public static void DiscountonRowHouse(list<Property__c>VarPropertyList){
        for (property__c VarDiscount:VarPropertyList){
            if(VarDiscount.Type__c =='Row House'){
                   VarDiscount.Price__c=VarDiscount.Price__c-(VarDiscount.Price__c*0.05);
            }
        }
    }
}