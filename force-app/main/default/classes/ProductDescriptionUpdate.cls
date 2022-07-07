global class ProductDescriptionUpdate implements Database.Batchable<sObject> {
    //start function 
    global Database.QueryLocator start(Database.BatchableContext BC){
        String Query = 'SELECT 	Description FROM Product2 ';
        return Database.getQueryLocator(Query);
    }
    
    //execute function
    global void execute(Database.BatchableContext BC,list<Product2> VarProductList){
        integer Counter=1;
        for(Product2 VarNew:VarProductList){
            if(VarNew.Description==NULL){
                VarNew.Description='Please provide the product information';
            }
        }
        update VarProductList;
    }
    //Finish function
    global void finish(Database.BatchableContext BC){
        
    }
}