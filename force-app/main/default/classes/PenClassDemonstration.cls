public class PenClassDemonstration {
    public  static void  applyDiscountPen(list<Parker_pen__c> VarNewList){
        for(Parker_pen__c VarSingle:VarNewList){
            if(VarSingle.Price__c>=100){
                VarSingle.Price__c=VarSingle.Price__c-30;
            }
        }
    }  
}